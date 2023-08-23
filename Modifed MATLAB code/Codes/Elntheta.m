function [Elntheta93] = Elntheta(b,c93,c02,c04,c06,c10,c12,c14,X93,X02,X04,X06,X10,X12,X14)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Elntheta.m
% Computes the E(ln(theta)|c,X)
% Based on code by Claudia R. Sahm (claudia.r.sahm@frb.gov)
%
% Author: Chau Pham (chau.pham.22@ucl.ac.uk)
% Updated August 23, 2023
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

global model  

maxit = 200;
tol = 1.0e-6; 
Nodes = 20; % Nodes for Guassian quadrature

%% Compute Risk Tolerance Cutoffs for Risk Categories;
dfrac = 1 - [1/5,1/3,1/2]; %(1 - downside risk) old series 
dfrac_new = 1 - [0.05, 0.1, 0.15];   %(1 - downside risk) new series

cutoff_old = zeros(1,size(dfrac,2));
for j = 1:size(dfrac,2)
    gamma = 5; % Initial guess for coefficient of relative risk aversion;
    for it=1:maxit  % Newton Rootfinder;  
        [fval,fjac] = dutility_old(gamma,dfrac(1,j));
        gamma = gamma - fjac\fval; 
        if norm(fval) < tol, break, end 
    end
    cutoff_old(1,j) = gamma.^-1; % Risk tolerance (Inverse of Risk Aversion);
end

cutoff_new = zeros(1,size(dfrac_new,2));
for j = 1:size(dfrac_new,2)
    gamma = 5; % Initial guess for coefficient of relative risk aversion;
    for it=1:maxit  % Newton Rootfinder;  
        [fval,fjac] = dutility_new(gamma, dfrac_new(1,j));
        gamma = gamma - fjac\fval; 
        if norm(fval) < tol, break, end 
    end
    cutoff_new(1,j) = gamma.^-1; % Risk tolerance (Inverse of Risk Aversion);
end

%% Assign cutoff ranges
cpt_old = [-1.0e+77;log(cutoff_old)';1.0e+77]; % old bounds 
cpt_new = [-1.0e+77; log(cutoff_new)'; 1.0e+77]; % new bounds

N = size(X93,1);
K = size(X93,2);
B = size(b,1);

% Likelihood of individual being in risk categories
muX93 = X93*b(1:K,1); % mean of log risk tolerance in 1993
muX02 = X02*b(1:K,1); % mean of log risk tolerance in 2002
muX04 = X04*b(1:K,1); % mean of log risk tolerance in 2004
muX06 = X06*b(1:K,1); % mean of log risk tolerance in 2006
muX10 = X10*b(1:K,1); % mean of log risk tolerance in 2010
muX12 = X12*b(1:K,1); % mean of log risk tolerance in 2012
muX14 = X14*b(1:K,1); % mean of log risk tolerance in 2014

if model > 10
    sigmau =  b(K+1,1);
    sigmako = b(K+2,1);
    sigmakf = b(K+3,1);
    sigmae93 = repmat(b(K+4,1),N,1);
    sigmae02 = repmat(b(K+4,1),N,1);
    sigmae04 = repmat(b(K+4,1),N,1);
    sigmae06 = repmat(b(K+4,1),N,1);
    sigmae10 = repmat(b(K+5,1),N,1);
    sigmae12 = repmat(b(K+5,1),N,1);
    sigmae14 = repmat(b(K+5,1),N,1);
end    


if model > 10

[xU,Pu] = qnwnorm(Nodes,0,sigmau^2);     
[xKo,pKo] = qnwnorm(Nodes,0,sigmako^2); 
[xKf,pKf] = qnwnorm(Nodes,0,sigmakf^2);     

NO93 = zeros(N,Nodes);
NO02 = zeros(N,Nodes);
NO04 = zeros(N,Nodes);
NO06 = zeros(N,Nodes);
NF10 = zeros(N,Nodes);
NF12 = zeros(N,Nodes);
NF14 = zeros(N,Nodes);  

PO = ones(N,Nodes);
PF = ones(N,Nodes);

    for j = 1:Nodes

    N93 = zeros(N,Nodes);
    N02 = zeros(N,Nodes);
    N04 = zeros(N,Nodes);
    N06 = zeros(N,Nodes);
    N10 = zeros(N,Nodes);  
    N12 = zeros(N,Nodes); 
    N14 = zeros(N,Nodes); 
    
    P93 = ones(N,Nodes);
    P02 = ones(N,Nodes);
    P04 = ones(N,Nodes);
    P06 = ones(N,Nodes);
    P10 = ones(N,Nodes);  
    P12 = ones(N,Nodes);
    P14 = ones(N,Nodes);

    % NLSY79 1993 ONLY 
    i = find(c93>0); 
        if size(i,1) > 0 
            for k = 1:Nodes
                N93(i,k) = sigmae93(i).*( norm_pdf((cpt_old(c93(i))-muX93(i)-xU(j)-xKo(k))./sigmae93(i)) ...
                    - norm_pdf((cpt_old(c93(i)+1)-muX93(i)-xU(j)-xKo(k))./sigmae93(i)) );
                P93(i,k) = norm_cdf((cpt_old(c93(i)+1)-muX93(i)-xU(j)-xKo(k))./sigmae93(i)) - ...
                    norm_cdf((cpt_old(c93(i))-muX93(i)-xU(j)-xKo(k))./sigmae93(i));                
            end
        end        

    % NLSY79 2002 ONLY 
    i = find(c02>0); 
        if size(i,1) > 0 
            for k = 1:Nodes
                N02(i,k) = sigmae02(i).*( norm_pdf((cpt_new(c02(i))-muX02(i)-xU(j)-xKo(k))./sigmae02(i)) ...
                      - norm_pdf((cpt_new(c02(i)+1)-muX02(i)-xU(j)-xKo(k))./sigmae02(i)) );
                P02(i,k) = norm_cdf((cpt_new(c02(i)+1)-muX02(i)-xU(j)-xKo(k))./sigmae02(i)) - ...
                    norm_cdf((cpt_new(c02(i))-muX02(i)-xU(j)-xKo(k))./sigmae02	(i));                
            end     
        end        

    % NLSY79 2004 ONLY 
    i = find(c04>0); 
        if size(i,1) > 0 
            for k = 1:Nodes
                 N04(i,k) = sigmae04(i).*( norm_pdf((cpt_new(c04(i))-muX04(i)-xU(j)-xKf(k))./sigmae04(i)) ...
                     - norm_pdf((cpt_new(c04(i)+1)-muX04(i)-xU(j)-xKf(k))./sigmae04(i)) );
                P04(i,k) = norm_cdf((cpt_new(c04(i)+1)-muX04(i)-xU(j)-xKf(k))./sigmae04(i)) - ...
                    norm_cdf((cpt_new(c04(i))-muX04(i)-xU(j)-xKf(k))./sigmae04(i));
            end
        end        

    % NLSY79 2006 ONLY 
    i = find(c06>0); 
        if size(i,1) > 0 
            for k = 1:Nodes
                N06(i,k) = sigmae06(i).*( norm_pdf((cpt_new(c06(i))-muX06(i)-xU(j)-xKf(k))./sigmae06(i)) ...
                     - norm_pdf((cpt_new(c06(i)+1)-muX06(i)-xU(j)-xKf(k))./sigmae06(i)) );
                P06(i,k) = norm_cdf((cpt_new(c06(i)+1)-muX06(i)-xU(j)-xKf(k))./sigmae06(i)) - ...
                    norm_cdf((cpt_new(c06(i))-muX06(i)-xU(j)-xKf(k))./sigmae06(i));                
            end
        end

    % NLSY79 2010 ONLY 
    i = find(c10>0); 
        if size(i,1) > 0 
            for k = 1:Nodes
                N10(i,k) = sigmae10(i).*( norm_pdf((cpt_new(c10(i))-muX10(i)-xU(j)-xKf(k))./sigmae10(i)) ...
                     - norm_pdf((cpt_new(c10(i)+1)-muX10(i)-xU(j)-xKf(k))./sigmae10(i)) );
                P10(i,k) = norm_cdf((cpt_new(c10(i)+1)-muX10(i)-xU(j)-xKf(k))./sigmae10(i)) - ...
                    norm_cdf((cpt_new(c10(i))-muX10(i)-xU(j)-xKf(k))./sigmae10(i));
            end
        end   

    % NLSY79 2012 ONLY 
    i = find(c12>0); 
        if size(i,1) > 0 
            for k = 1:Nodes
                N12(i,k) = sigmae12(i).*( norm_pdf((cpt_new(c12(i))-muX12(i)-xU(j)-xKf(k))./sigmae12(i)) ...
                     - norm_pdf((cpt_new(c12(i)+1)-muX12(i)-xU(j)-xKf(k))./sigmae12(i)) );
                P12(i,k) = norm_cdf((cpt_new(c12(i)+1)-muX12(i)-xU(j)-xKf(k))./sigmae12(i)) - ...
                    norm_cdf((cpt_new(c12(i))-muX12(i)-xU(j)-xKf(k))./sigmae12(i));
            end
        end  

    % NLSY79 2014 ONLY 
    i = find(c14>0); 
        if size(i,1) > 0 
            for k = 1:Nodes
                N14(i,k) = sigmae14(i).*( norm_pdf((cpt_new(c14(i))-muX14(i)-xU(j)-xKf(k))./sigmae14(i)) ...
                     - norm_pdf((cpt_new(c14(i)+1)-muX14(i)-xU(j)-xKf(k))./sigmae14(i)) );
                P14(i,k) = norm_cdf((cpt_new(c14(i)+1)-muX14(i)-xU(j)-xKf(k))./sigmae14(i)) - ...
                    norm_cdf((cpt_new(c14(i))-muX14(i)-xU(j)-xKf(k))./sigmae14(i));
            end
        end  

    NO93(:,j) = (N93.*P02.*P04.*P06)*pKo;
    NO02(:,j) = (N02.*P93.*P04.*P06)*pKo;
    NO04(:,j) = (N04.*P93.*P02.*P06)*pKo;
    NO06(:,j) = (N06.*P93.*P02.*P04)*pKo;
    NF10(:,j) = (N10.*P12.*P14)*pKf;
    NF12(:,j) = (N12.*P10.*P14)*pKf;
    NF14(:,j) = (N14.*P10.*P12)*pKf;
    
    PF(:,j) = (P10.*P12.*P14)*pKf;
    PO(:,j) = (P93.*P02.*P04.*P06)*pKo;   
    
    end    

num_93 = (sigmau^2 ./sigmae93.^2).*((NO93.*PF)*Pu);
num_02 = (sigmau^2 ./sigmae02.^2).*((NO02.*PF)*Pu); 
num_04 = (sigmau^2 ./sigmae04.^2).*((NO04.*PF)*Pu);    
num_06 = (sigmau^2 ./sigmae06.^2).*((NO06.*PF)*Pu);     
num_10 = (sigmau^2 ./sigmae10.^2).*((NF10.*PO)*Pu);
num_12 = (sigmau^2 ./sigmae12.^2).*((NF12.*PO)*Pu);
num_14 = (sigmau^2 ./sigmae14.^2).*((NF14.*PO)*Pu);
        
Eu_num = num_93+num_02+num_04+num_06+num_10+num_12+num_14;
Eu_den = (PO.*PF)*Pu;        

Eu = Eu_num./Eu_den;    
    
    
end    
    
    
    
if model < 10 
    Elntheta93 = X93*b(1:K,1) + Eu;
elseif model >= 10    
    Elntheta93 = X93(:,1:end-1)*b(1:K-1,1) + Eu;
end