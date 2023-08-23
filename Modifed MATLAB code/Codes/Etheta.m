function [Etheta92] = Etheta(b,c92,c94,c98,c00,c02,X92,X94,X98,X00,X02);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Etheta.m
% Computes the E(theta|c,X)
% Updated July 24, 2007
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

Nodes = 20; % Nodes for Guassian quadrature
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


if model == 0
    
num = ones(N,1);
den = ones(N,1);

% HRS 1992  
i = find(c92>0); 
   num(i,1) = norm_cdf((cpt4(c92(i)+1)-muX92(i)-sigmae92(i).^2)./sigmae92(i)) - ...
       norm_cdf((cpt4(c92(i))-muX92(i)-sigmae92(i).^2)./sigmae92(i));
   den(i,1) = norm_cdf((cpt4(c92(i)+1)-muX92(i))./sigmae92(i))-norm_cdf((cpt4(c92(i))-muX92(i))./sigmae92(i));

% HRS 1994  
i = find(c94>0); 
    num(i,1) = norm_cdf((cpt6(c94(i)+1)-muX94(i)-sigmae94(i).^2)./sigmae94(i)) - ...
       norm_cdf((cpt6(c94(i))-muX94(i)-sigmae94(i).^2)./sigmae94(i));
    den(i,1) = norm_cdf((cpt6(c94(i)+1)-muX94(i))./sigmae94(i))-norm_cdf((cpt6(c94(i))-muX94(i))./sigmae94(i));

elseif model >= 1 & model < 10
% Guassian quadrature for random effect
[xU,pU] = qnwnorm(Nodes,0,sigmau^2); 

% Pieces to Likelihood function
num92 = ones(N,Nodes);
num94 = ones(N,Nodes);
num98 = ones(N,Nodes);
num00 = ones(N,Nodes);
num02 = ones(N,Nodes);

den92 = ones(N,Nodes);
den94 = ones(N,Nodes);
den98 = ones(N,Nodes);
den00 = ones(N,Nodes);
den02 = ones(N,Nodes);

% HRS 1992 ONLY 
i = find(c92>0); 
    if size(i,1) > 0 
        for j = 1:Nodes
             num92(i,j) = norm_cdf((cpt4(c92(i)+1)-muX92(i)-xU(j)-sigmau^2)./sigmae92(i)) - ...
                    norm_cdf((cpt4(c92(i))-muX92(i)-xU(j)-sigmau^2)./sigmae92(i));
             den92(i,j) = norm_cdf((cpt4(c92(i)+1)-muX92(i)-xU(j))./sigmae92(i)) - ...
                    norm_cdf((cpt4(c92(i))-muX92(i)-xU(j))./sigmae92(i));       
        end
    end        

% HRS 1994 ONLY 
i = find(c94>0); 
    if size(i,1) > 0 
        for j = 1:Nodes
            num94(i,j) = norm_cdf((cpt6(c94(i)+1)-muX94(i)-xU(j)-sigmau^2)./sigmae94(i)) - ...
                    norm_cdf((cpt6(c94(i))-muX94(i)-xU(j)-sigmau^2)./sigmae94(i));
            den94(i,j) = norm_cdf((cpt6(c94(i)+1)-muX94(i)-xU(j))./sigmae94(i)) - ...
                    norm_cdf((cpt6(c94(i))-muX94(i)-xU(j))./sigmae94(i));   
        end     
    end        

% HRS 1998 ONLY 
i = find(c98>0); 
    if size(i,1) > 0 
        for j = 1:Nodes
            num98(i,j) = norm_cdf((cpt6(c98(i)+1)-muX98(i)-xU(j)-sigmau^2)./sigmae98(i)) - ...
                    norm_cdf((cpt6(c98(i))-muX98(i)-xU(j)-sigmau^2)./sigmae98(i));
            den98(i,j) = norm_cdf((cpt6(c98(i)+1)-muX98(i)-xU(j))./sigmae98(i)) - ...
                    norm_cdf((cpt6(c98(i))-muX98(i)-xU(j))./sigmae98(i));      
        end
    end        

% HRS 2000 ONLY 
i = find(c00>0); 
    if size(i,1) > 0 
        for j = 1:Nodes
            num00(i,j) = norm_cdf((cpt6(c00(i)+1)-muX00(i)-xU(j)-sigmau^2)./sigmae00(i)) - ...
                    norm_cdf((cpt6(c00(i))-muX00(i)-xU(j)-sigmau^2)./sigmae00(i));
            den00(i,j) = norm_cdf((cpt6(c00(i)+1)-muX00(i)-xU(j))./sigmae00(i)) - ...
                    norm_cdf((cpt6(c00(i))-muX00(i)-xU(j))./sigmae00(i));      
        end
    end

% HRS 2002 ONLY
i = find(c02>0); 
    if size(i,1) > 0 
        for j = 1:Nodes;
            num02(i,j) = norm_cdf((cpt6(c02(i)+1)-muX02(i)-xU(j)-sigmau^2)./sigmae02(i)) - ...
                    norm_cdf((cpt6(c02(i))-muX02(i)-xU(j)-sigmau^2)./sigmae02(i));
            den02(i,j) = norm_cdf((cpt6(c02(i)+1)-muX02(i)-xU(j))./sigmae02(i)) - ...
                    norm_cdf((cpt6(c02(i))-muX02(i)-xU(j))./sigmae02(i));     
        end
    end        

num = (num92.*num94.*num98.*num00.*num02)*pU;
den = (den92.*den94.*den98.*den00.*den02)*pU;

elseif model > 10
[xU,pU] = qnwnorm(Nodes,0,sigmau^2);     
[xKo,pKo] = qnwnorm(Nodes,0,sigmako^2); 
[xKf,pKf] = qnwnorm(Nodes,0,sigmakf^2);     


% Pieces to Likelihood function
denO = ones(N,Nodes);
denF = ones(N,Nodes);

numO = ones(N,Nodes);
numF = ones(N,Nodes);

    for j = 1:Nodes

    num92 = ones(N,Nodes);
    num94 = ones(N,Nodes);
    num98 = ones(N,Nodes);
    num00 = ones(N,Nodes);
    num02 = ones(N,Nodes);

    den92 = ones(N,Nodes);
    den94 = ones(N,Nodes);
    den98 = ones(N,Nodes);
    den00 = ones(N,Nodes);
    den02 = ones(N,Nodes);
    
    % HRS 1992 ONLY 
    i = find(c92>0); 
        if size(i,1) > 0 
            for k = 1:Nodes;
                num92(i,k) = norm_cdf((cpt4(c92(i)+1)-muX92(i)-xU(j)-xKo(k)-sigmau^2)./sigmae92(i)) - ...
                    norm_cdf((cpt4(c92(i))-muX92(i)-xU(j)-xKo(k)-sigmau^2)./sigmae92(i));
                den92(i,k) = norm_cdf((cpt4(c92(i)+1)-muX92(i)-xU(j)-xKo(k))./sigmae92(i)) - ...
                    norm_cdf((cpt4(c92(i))-muX92(i)-xU(j)-xKo(k))./sigmae92(i));                
            end
        end        

    % HRS 1994 ONLY 
    i = find(c94>0); 
        if size(i,1) > 0 
            for k = 1:Nodes;
                num94(i,k) = norm_cdf((cpt6(c94(i)+1)-muX94(i)-xU(j)-xKo(k)-sigmau^2)./sigmae94	(i)) - ...
                    norm_cdf((cpt6(c94(i))-muX94(i)-xU(j)-xKo(k)-sigmau^2)./sigmae94	(i));
                den94(i,k) = norm_cdf((cpt6(c94(i)+1)-muX94(i)-xU(j)-xKo(k))./sigmae94	(i)) - ...
                    norm_cdf((cpt6(c94(i))-muX94(i)-xU(j)-xKo(k))./sigmae94	(i));                
            end     
        end        

    % HRS 1998 ONLY 
    i = find(c98>0); 
        if size(i,1) > 0 
            for k = 1:Nodes;
                num98(i,k) = norm_cdf((cpt6(c98(i)+1)-muX98(i)-xU(j)-xKf(k)-sigmau^2)./sigmae98(i)) - ...
                    norm_cdf((cpt6(c98(i))-muX98(i)-xU(j)-xKf(k)-sigmau^2)./sigmae98(i));
                den98(i,k) = norm_cdf((cpt6(c98(i)+1)-muX98(i)-xU(j)-xKf(k))./sigmae98(i)) - ...
                    norm_cdf((cpt6(c98(i))-muX98(i)-xU(j)-xKf(k))./sigmae98(i));
            end
        end        

    % HRS 2000 ONLY 
    i = find(c00>0); 
        if size(i,1) > 0 
            for k = 1:Nodes;
                num00(i,k) = norm_cdf((cpt6(c00(i)+1)-muX00(i)-xU(j)-xKf(k)-sigmau^2)./sigmae00(i)) - ...
                    norm_cdf((cpt6(c00(i))-muX00(i)-xU(j)-xKf(k)-sigmau^2)./sigmae00(i));
                den00(i,k) = norm_cdf((cpt6(c00(i)+1)-muX00(i)-xU(j)-xKf(k))./sigmae00(i)) - ...
                    norm_cdf((cpt6(c00(i))-muX00(i)-xU(j)-xKf(k))./sigmae00(i));                
            end
        end

    % HRS 2002 ONLY
    i = find(c02>0); 
        if size(i,1) > 0 
            for k = 1:Nodes;
                num02(i,k) = norm_cdf((cpt6(c02(i)+1)-muX02(i)-xU(j)-xKf(k)-sigmau^2)./sigmae02(i)) - ...
                    norm_cdf((cpt6(c02(i))-muX02(i)-xU(j)-xKf(k)-sigmau^2)./sigmae02(i));
                den02(i,k) = norm_cdf((cpt6(c02(i)+1)-muX02(i)-xU(j)-xKf(k))./sigmae02(i)) - ...
                    norm_cdf((cpt6(c02(i))-muX02(i)-xU(j)-xKf(k))./sigmae02(i));
            end
        end   
    
    numO(:,j) = (num92.*num94)*pKo;
    denO(:,j) = (den92.*den94)*pKo;
    numF(:,j) = (num98.*num00.*num02)*pKf;
    denF(:,j) = (den98.*den00.*den02)*pKf;
    
    end    
    
num = (numO.*numF)*pU;
den = (denO.*denF)*pU;    

end

%% Proxy

if model < 10 
    Etheta92 = exp(muX92+sigmau^2/2).*(num./den);
elseif model >= 10    
    Etheta92 = exp(X92(:,1:end-1)*b(1:K-1)+sigmau^2/2).*(num./den);
end


Eexpu92 =  exp(sigmau^2/2).*(num./den);
