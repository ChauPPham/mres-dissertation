function [Elntheta92] = Elntheta(b,c92,c94,c98,c00,c02,X92,X94,X98,X00,X02);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Elntheta.m
% Computes the E(ln(theta)|c,X)
% Updated July 26, 2007
% Claudia R. Sahm (claudia.r.sahm@frb.gov)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

global model  

maxit = 200;
tol = 1.0e-6; 

%% Compute Risk Tolerance Cutoffs for Risk Categories;
dfrac = 1 - [1/10,1/5,1/3,1/2,3/4]; %(1 - downside risk) 
cutoff = zeros(1,size(dfrac,2));
for j = 1:size(dfrac,2)
    gamma = 5; % Initial guess for coefficient of relative risk aversion;
    for it=1:maxit  % Newton Rootfinder;  
        [fval,fjac] = dutility(gamma,dfrac(1,j));
        gamma = gamma - fjac\fval; 
        if norm(fval) < tol, break, end 
    end
    cutoff(1,j) = gamma.^-1; % Risk tolerance (Inverse of Risk Aversion);
end

%% Assign cutoff ranges
cpt4 = [-1.0e+77;log(cutoff(2:end-1))';1.0e+77]; % 4 categories 
cpt6 = [-1.0e+77;log(cutoff)';1.0e+77]; % 6 categories

N = size(X92,1);
K = size(X92,2);
B = size(b,1);

% Likelihood of individual being in risk categories
muX92 = X92*b(1:K,1); % mean of log risk tolerance in 1992
muX94 = X94*b(1:K,1); % mean of log risk tolerance in 1994
muX98 = X98*b(1:K,1); % mean of log risk tolerance in 1998
muX00 = X00*b(1:K,1); % mean of log risk tolerance in 2000
muX02 = X02*b(1:K,1); % mean of log risk tolerance in 2002

if model == 0  
    sigmau = b(K+1,1);
    sigmae = 0; 
    sigmae92 = repmat(sigmau,N,1);
    sigmae94 = repmat(sigmau,N,1);
    sigmae98 = repmat(sigmau,N,1);
    sigmae00 = repmat(sigmau,N,1);
    sigmae02 = repmat(sigmau,N,1);
elseif model == 1  | model == 2 
    sigmau =  b(K+1,1);
    sigmae92 =  repmat(b(K+2,1),N,1);
    sigmae94 =  repmat(b(K+2,1),N,1);
    sigmae98 =  repmat(b(K+2,1),N,1);
    sigmae00 =  repmat(b(K+2,1),N,1);
    sigmae02 =  repmat(b(K+2,1),N,1);
elseif model == 11 | model == 12 | model == 13 | model == 14
    sigmau =  b(K+1,1);
    sigmako = b(K+2,1);
    sigmakf = b(K+3,1);
    sigmae92 = repmat(b(K+4,1),N,1);
    sigmae94 = repmat(b(K+4,1),N,1);
    sigmae98 = repmat(b(K+5,1),N,1);
    sigmae00 = repmat(b(K+5,1),N,1);
    sigmae02 = repmat(b(K+5,1),N,1);
end    

Nodes = 20; % Nodes for Guassian quadrature

if model == 0
    
N92 = zeros(N,1);
N94 = zeros(N,1);    
P92 = ones(N,1);
P94 = ones(N,1);      

% HRS 1992  
i = find(c92>0); 
   N92(i,1) = sigmae92(i).*( norm_pdf((cpt4(c92(i))-muX92(i))./sigmae92(i)) - norm_pdf((cpt4(c92(i)+1)-muX92(i))./sigmae92(i)) );
   P92(i,1) = norm_cdf((cpt4(c92(i)+1)-muX92(i))./sigmae92(i))-norm_cdf((cpt4(c92(i))-muX92(i))./sigmae92(i));

i = find(c94>0); 
    N94(i,1) = sigmae94(i).*( norm_pdf((cpt6(c94(i))-muX94(i) )./sigmae94(i)) - norm_pdf((cpt6(c94(i)+1)-muX94(i) )./sigmae94(i)) );
    P94(i,1) = norm_cdf((cpt6(c94(i)+1)-muX94(i) )./sigmae94(i))-norm_cdf((cpt6(c94(i))-muX94(i) )./sigmae94(i));   

Eu_num = N92+N94;
Eu_den = P92.*P94; 

Eu = Eu_num./Eu_den;    
    
elseif model > 0 & model <= 10
[xU,Pu] = qnwnorm(Nodes,0,sigmau^2); 

% Pieces to Likelihood function
N92 = zeros(N,Nodes);
N94 = zeros(N,Nodes);
N98 = zeros(N,Nodes);
N00 = zeros(N,Nodes);
N02 = zeros(N,Nodes);      
    
P92 = ones(N,Nodes);
P94 = ones(N,Nodes);
P98 = ones(N,Nodes);
P00 = ones(N,Nodes);
P02 = ones(N,Nodes);    

% HRS 1992  
i = find(c92>0); 
for j = 1:Nodes
    N92(i,j) = sigmae92(i).*( norm_pdf((cpt4(c92(i))-muX92(i)-xU(j))./sigmae92(i)) - norm_pdf((cpt4(c92(i)+1)-muX92(i)-xU(j))./sigmae92(i)) );
    P92(i,j) = norm_cdf((cpt4(c92(i)+1)-muX92(i)-xU(j))./sigmae92(i))-norm_cdf((cpt4(c92(i))-muX92(i)-xU(j))./sigmae92(i));
end    

% HRS 1994  
i = find(c94>0); 
for j = 1:Nodes
    N94(i,j) = sigmae94(i).*( norm_pdf((cpt6(c94(i))-muX94(i)-xU(j))./sigmae94(i)) - norm_pdf((cpt6(c94(i)+1)-muX94(i)-xU(j))./sigmae94(i)) );
    P94(i,j) = norm_cdf((cpt6(c94(i)+1)-muX94(i)-xU(j))./sigmae94(i))-norm_cdf((cpt6(c94(i))-muX94(i)-xU(j))./sigmae94(i));
end             
        
% HRS 1998 
i = find(c98>0); 
for j = 1:Nodes
    N98(i,j) = sigmae98(i).*( norm_pdf((cpt6(c98(i))-muX98(i)-xU(j))./sigmae98(i)) - norm_pdf((cpt6(c98(i)+1)-muX98(i)-xU(j))./sigmae98(i)) );
    P98(i,j) = norm_cdf((cpt6(c98(i)+1)-muX98(i)-xU(j))./sigmae98(i))-norm_cdf((cpt6(c98(i))-muX98(i)-xU(j))./sigmae98(i));
end              
    
% HRS 2000
i = find(c00>0); 
for j = 1:Nodes
    N00(i,j) = sigmae00(i).*( norm_pdf((cpt6(c00(i))-muX00(i)-xU(j))./sigmae00(i)) - norm_pdf((cpt6(c00(i)+1)-muX00(i)-xU(j))./sigmae00(i)) );
    P00(i,j) = norm_cdf((cpt6(c00(i)+1)-muX00(i)-xU(j))./sigmae00(i))-norm_cdf((cpt6(c00(i))-muX00(i)-xU(j))./sigmae00(i));
end     
    
% HRS 2002
i = find(c02>0); 
for j = 1:Nodes
    N02(i,j) = sigmae02(i).*( norm_pdf((cpt6(c02(i))-muX02(i)-xU(j))./sigmae02(i)) - norm_pdf((cpt6(c02(i)+1)-muX02(i)-xU(j))./sigmae02(i)) );
    P02(i,j) = norm_cdf((cpt6(c02(i)+1)-muX02(i)-xU(j))./sigmae02(i))-norm_cdf((cpt6(c02(i))-muX02(i)-xU(j))./sigmae02(i));
end   

num_92 = (sigmau^2./sigmae92.^2).*((N92.*P94.*P98.*P00.*P02)*Pu);
num_94 = (sigmau^2./sigmae94.^2).*((N94.*P92.*P98.*P00.*P02)*Pu); 
num_98 = (sigmau^2./sigmae98.^2).*((N98.*P92.*P94.*P00.*P02)*Pu);    
num_00 = (sigmau^2./sigmae00.^2).*((N00.*P92.*P94.*P98.*P02)*Pu);     
num_02 = (sigmau^2./sigmae02.^2).*((N02.*P92.*P94.*P98.*P00)*Pu);   

Eu_num = num_92+num_94+num_98+num_00+num_02;
Eu_den = (P92.*P94.*P98.*P00.*P02)*Pu; 

Eu = Eu_num./Eu_den;

elseif model > 10

[xU,Pu] = qnwnorm(Nodes,0,sigmau^2);     
[xKo,pKo] = qnwnorm(Nodes,0,sigmako^2); 
[xKf,pKf] = qnwnorm(Nodes,0,sigmakf^2);     

NO92 = zeros(N,Nodes);
NO94 = zeros(N,Nodes);
NF98 = zeros(N,Nodes);
NF00 = zeros(N,Nodes);
NF02 = zeros(N,Nodes);  

PO = ones(N,Nodes);
PF = ones(N,Nodes);

    for j = 1:Nodes

    N92 = zeros(N,Nodes);
    N94 = zeros(N,Nodes);
    N98 = zeros(N,Nodes);
    N00 = zeros(N,Nodes);
    N02 = zeros(N,Nodes);      
    
    P92 = ones(N,Nodes);
    P94 = ones(N,Nodes);
    P98 = ones(N,Nodes);
    P00 = ones(N,Nodes);
    P02 = ones(N,Nodes);    

    % HRS 1992 ONLY 
    i = find(c92>0); 
        if size(i,1) > 0 
            for k = 1:Nodes;
                N92(i,k) = sigmae92(i).*( norm_pdf((cpt4(c92(i))-muX92(i)-xU(j)-xKo(k))./sigmae92(i)) ...
                    - norm_pdf((cpt4(c92(i)+1)-muX92(i)-xU(j)-xKo(k))./sigmae92(i)) );
                P92(i,k) = norm_cdf((cpt4(c92(i)+1)-muX92(i)-xU(j)-xKo(k))./sigmae92(i)) - ...
                    norm_cdf((cpt4(c92(i))-muX92(i)-xU(j)-xKo(k))./sigmae92(i));                
            end
        end        

    % HRS 1994 ONLY 
    i = find(c94>0); 
        if size(i,1) > 0 
            for k = 1:Nodes;
                  N94(i,k) = sigmae94(i).*( norm_pdf((cpt6(c94(i))-muX94(i)-xU(j)-xKo(k))./sigmae94(i)) ...
                      - norm_pdf((cpt6(c94(i)+1)-muX94(i)-xU(j)-xKo(k))./sigmae94(i)) );
                P94(i,k) = norm_cdf((cpt6(c94(i)+1)-muX94(i)-xU(j)-xKo(k))./sigmae94(i)) - ...
                    norm_cdf((cpt6(c94(i))-muX94(i)-xU(j)-xKo(k))./sigmae94	(i));                
            end     
        end        

    % HRS 1998 ONLY 
    i = find(c98>0); 
        if size(i,1) > 0 
            for k = 1:Nodes;
                 N98(i,k) = sigmae98(i).*( norm_pdf((cpt6(c98(i))-muX98(i)-xU(j)-xKf(k))./sigmae98(i)) ...
                     - norm_pdf((cpt6(c98(i)+1)-muX98(i)-xU(j)-xKf(k))./sigmae98(i)) );
                P98(i,k) = norm_cdf((cpt6(c98(i)+1)-muX98(i)-xU(j)-xKf(k))./sigmae98(i)) - ...
                    norm_cdf((cpt6(c98(i))-muX98(i)-xU(j)-xKf(k))./sigmae98(i));
            end
        end        

    % HRS 2000 ONLY 
    i = find(c00>0); 
        if size(i,1) > 0 
            for k = 1:Nodes;
                 N00(i,k) = sigmae00(i).*( norm_pdf((cpt6(c00(i))-muX00(i)-xU(j)-xKf(k))./sigmae00(i)) ...
                     - norm_pdf((cpt6(c00(i)+1)-muX00(i)-xU(j)-xKf(k))./sigmae00(i)) );
                P00(i,k) = norm_cdf((cpt6(c00(i)+1)-muX00(i)-xU(j)-xKf(k))./sigmae00(i)) - ...
                    norm_cdf((cpt6(c00(i))-muX00(i)-xU(j)-xKf(k))./sigmae00(i));                
            end
        end

    % HRS 2002 ONLY
    i = find(c02>0); 
        if size(i,1) > 0 
            for k = 1:Nodes;
                 N02(i,k) = sigmae02(i).*( norm_pdf((cpt6(c02(i))-muX02(i)-xU(j)-xKf(k))./sigmae02(i)) ...
                     - norm_pdf((cpt6(c02(i)+1)-muX02(i)-xU(j)-xKf(k))./sigmae02(i)) );
                P02(i,k) = norm_cdf((cpt6(c02(i)+1)-muX02(i)-xU(j)-xKf(k))./sigmae02(i)) - ...
                    norm_cdf((cpt6(c02(i))-muX02(i)-xU(j)-xKf(k))./sigmae02(i));
            end
        end   

    NO92(:,j) = (N92.*P94)*pKo;
    NO94(:,j) = (N94.*P92)*pKo;
    NF98(:,j) = (N98.*P00.*P02)*pKf;
    NF00(:,j) = (N00.*P98.*P02)*pKf;
    NF02(:,j) = (N02.*P98.*P00)*pKf;
    
    PF(:,j) = (P98.*P00.*P02)*pKf;
    PO(:,j) = (P92.*P94)*pKo;   
    
    end    

num_92 = (sigmau^2 ./sigmae92.^2).*((NO92.*PF)*Pu);
num_94 = (sigmau^2 ./sigmae94.^2).*((NO94.*PF)*Pu); 
num_98 = (sigmau^2 ./sigmae98.^2).*((NF98.*PO)*Pu);    
num_00 = (sigmau^2 ./sigmae00.^2).*((NF00.*PO)*Pu);     
num_02 = (sigmau^2 ./sigmae02.^2).*((NF02.*PO)*Pu);       
        
Eu_num = num_92+num_94+num_98+num_00+num_02;
Eu_den = (PO.*PF)*Pu;        

Eu = Eu_num./Eu_den;    
    
    
end    
    
    
    
if model < 10 
    Elntheta92 = X92*b(1:K,1) + Eu;
elseif model >= 10    
    Elntheta92 = X92(:,1:end-1)*b(1:K-1,1) + Eu;
end