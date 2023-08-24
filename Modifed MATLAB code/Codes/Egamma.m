function [Egamma93, Egamma02, Egamma04, Egamma06, Egamma10, Egamma12, Egamma14] = Egamma(b,c93,c02,c04,c06,c10,c12,c14,X93,X02,X04,X06,X10,X12,X14)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Egamma.m
% Computes the E(gamma|c,X)
% Based on code by Claudia R. Sahm (claudia.r.sahm@frb.gov)
%
% Author: Chau Pham (chau.pham.22@ucl.ac.uk)
% Updated August 23, 2023
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

global model  

maxit = 200;
tol = 1.0e-6; 

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

Nodes = 20; % Nodes for Guassian quadrature
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
[xU,pU] = qnwnorm(Nodes,0,sigmau^2);     
[xKo,pKo] = qnwnorm(Nodes,0,sigmako^2); 
[xKf,pKf] = qnwnorm(Nodes,0,sigmakf^2);     


% Pieces to Likelihood function
denO = ones(N,Nodes);
denF = ones(N,Nodes);

numO = ones(N,Nodes);
numF = ones(N,Nodes);

    for j = 1:Nodes

    num93 = ones(N,Nodes);
    num02 = ones(N,Nodes);
    num04 = ones(N,Nodes);
    num06 = ones(N,Nodes);
    num10 = ones(N,Nodes);
    num12 = ones(N,Nodes);
    num14 = ones(N,Nodes);

    den93 = ones(N,Nodes);
    den02 = ones(N,Nodes);
    den04 = ones(N,Nodes);
    den06 = ones(N,Nodes);
    den10 = ones(N,Nodes);
    den12 = ones(N,Nodes);
    den14 = ones(N,Nodes);
    
    % NLSY79 1993 ONLY 
    i = find(c93>0); 
        if size(i,1) > 0 
            for k = 1:Nodes
                num93(i,k) = norm_cdf((cpt_old(c93(i)+1)-muX93(i)-xU(j)-xKo(k)+sigmau^2)./sigmae93(i)) - ...
                    norm_cdf((cpt_old(c93(i))-muX93(i)-xU(j)-xKo(k)+sigmau^2)./sigmae93(i));
                den93(i,k) = norm_cdf((cpt_old(c93(i)+1)-muX93(i)-xU(j)-xKo(k))./sigmae93(i)) - ...
                    norm_cdf((cpt_old(c93(i))-muX93(i)-xU(j)-xKo(k))./sigmae93(i));                
            end
        end        

    % NLSY79 2002 ONLY 
    i = find(c02>0); 
        if size(i,1) > 0 
            for k = 1:Nodes
                num02(i,k) = norm_cdf((cpt_old(c02(i)+1)-muX02(i)-xU(j)-xKo(k)+sigmau^2)./sigmae02	(i)) - ...
                    norm_cdf((cpt_old(c02(i))-muX02(i)-xU(j)-xKo(k)+sigmau^2)./sigmae02	(i));
                den02(i,k) = norm_cdf((cpt_old(c02(i)+1)-muX02(i)-xU(j)-xKo(k))./sigmae02	(i)) - ...
                    norm_cdf((cpt_old(c02(i))-muX02(i)-xU(j)-xKo(k))./sigmae02	(i));                
            end     
        end        

    % NLSY79 2004 ONLY 
    i = find(c04>0); 
        if size(i,1) > 0 
            for k = 1:Nodes
                num04(i,k) = norm_cdf((cpt_old(c04(i)+1)-muX04(i)-xU(j)-xKf(k)+sigmau^2)./sigmae04(i)) - ...
                    norm_cdf((cpt_old(c04(i))-muX04(i)-xU(j)-xKf(k)+sigmau^2)./sigmae04(i));
                den04(i,k) = norm_cdf((cpt_old(c04(i)+1)-muX04(i)-xU(j)-xKf(k))./sigmae04(i)) - ...
                    norm_cdf((cpt_old(c04(i))-muX04(i)-xU(j)-xKf(k))./sigmae04(i));
            end
        end        

    % NLSY79 2006 ONLY 
    i = find(c06>0); 
        if size(i,1) > 0 
            for k = 1:Nodes
                num06(i,k) = norm_cdf((cpt_old(c06(i)+1)-muX06(i)-xU(j)-xKf(k)+sigmau^2)./sigmae06(i)) - ...
                    norm_cdf((cpt_old(c06(i))-muX06(i)-xU(j)-xKf(k)+sigmau^2)./sigmae06(i));
                den06(i,k) = norm_cdf((cpt_old(c06(i)+1)-muX06(i)-xU(j)-xKf(k))./sigmae06(i)) - ...
                    norm_cdf((cpt_old(c06(i))-muX06(i)-xU(j)-xKf(k))./sigmae06(i));                
            end
        end

    % NLSY79 2010 ONLY
    i = find(c10>0); 
        if size(i,1) > 0 
            for k = 1:Nodes
                num10(i,k) = norm_cdf((cpt_new(c10(i)+1)-muX10(i)-xU(j)-xKf(k)+sigmau^2)./sigmae10(i)) - ...
                    norm_cdf((cpt_new(c10(i))-muX10(i)-xU(j)-xKf(k)+sigmau^2)./sigmae10(i));
                den10(i,k) = norm_cdf((cpt_new(c10(i)+1)-muX10(i)-xU(j)-xKf(k))./sigmae10(i)) - ...
                    norm_cdf((cpt_new(c10(i))-muX10(i)-xU(j)-xKf(k))./sigmae10(i));
            end
        end  

    % NLSY79 2012 ONLY
    i = find(c12>0); 
        if size(i,1) > 0 
            for k = 1:Nodes
                num12(i,k) = norm_cdf((cpt_new(c12(i)+1)-muX12(i)-xU(j)-xKf(k)+sigmau^2)./sigmae12(i)) - ...
                    norm_cdf((cpt_new(c12(i))-muX12(i)-xU(j)-xKf(k)+sigmau^2)./sigmae12(i));
                den12(i,k) = norm_cdf((cpt_new(c12(i)+1)-muX12(i)-xU(j)-xKf(k))./sigmae12(i)) - ...
                    norm_cdf((cpt_new(c12(i))-muX12(i)-xU(j)-xKf(k))./sigmae12(i));
            end
        end 

    % NLSY79 2014 ONLY
    i = find(c14>0); 
        if size(i,1) > 0 
            for k = 1:Nodes
                num14(i,k) = norm_cdf((cpt_new(c14(i)+1)-muX14(i)-xU(j)-xKf(k)+sigmau^2)./sigmae14(i)) - ...
                    norm_cdf((cpt_new(c14(i))-muX14(i)-xU(j)-xKf(k)+sigmau^2)./sigmae14(i));
                den14(i,k) = norm_cdf((cpt_new(c14(i)+1)-muX14(i)-xU(j)-xKf(k))./sigmae14(i)) - ...
                    norm_cdf((cpt_new(c14(i))-muX14(i)-xU(j)-xKf(k))./sigmae14(i));
            end
        end 
    
    numO(:,j) = (num93.*num02.*num04.*num06)*pKo;
    denO(:,j) = (den93.*den02.*den04.*den06)*pKo;
    numF(:,j) = (num10.*num12.*num14)*pKf;
    denF(:,j) = (den10.*den12.*den14)*pKf;
    
    end    
    
num = (numO.*numF)*pU;
den = (denO.*denF)*pU;    

end

%% Proxy

if model < 10 
    Egamma93 = exp(-muX93+sigmau^2/2).*(num./den);
elseif model >= 10    
    Egamma93 = exp(-X93(:,1:end-1)*b(1:K-1)+sigmau^2/2).*(num./den);
    Egamma02 = exp(-X02(:,1:end-1)*b(1:K-1)+sigmau^2/2).*(num./den);
    Egamma04 = exp(-X04(:,1:end-1)*b(1:K-1)+sigmau^2/2).*(num./den);
    Egamma06 = exp(-X06(:,1:end-1)*b(1:K-1)+sigmau^2/2).*(num./den);
    Egamma10 = exp(-X10(:,1:end-1)*b(1:K-1)+sigmau^2/2).*(num./den);
    Egamma12 = exp(-X12(:,1:end-1)*b(1:K-1)+sigmau^2/2).*(num./den);
    Egamma14 = exp(-X14(:,1:end-1)*b(1:K-1)+sigmau^2/2).*(num./den);
end


Eexpu93 =  exp(sigmau^2/2).*(num./den);
