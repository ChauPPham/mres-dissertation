function Li = like_KSS(b,c92,c94,c98,c00,c02,X92,X94,X98,X00,X02);

%% Value of likelihood for gamble respondents
%% Gaussian quadrature
%% Fjdac.m computes numerical gradient
%% Updated May 7 2007;
%% Claudia Sahm


global cpt4 cpt6 model  

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
  
% Pieces to Likelihood function
Li92 = ones(N,1);
Li94 = ones(N,1);
Li98 = ones(N,1);
Li00 = ones(N,1);
Li02 = ones(N,1);

% HRS 1992 ONLY 
i = find(c92>0); 
     if size(i,1) > 0 
        Li92(i) = norm_cdf((cpt4(c92(i)+1)-muX92(i))./sigmae92(i)) - ...
            norm_cdf((cpt4(c92(i))-muX92(i))./sigmae92(i));
    end
    
% HRS 1994 ONLY 
i = find(c94>0);
    if size(i,1) > 0 
        Li94(i) = norm_cdf((cpt6(c94(i)+1)-muX94(i))./sigmae94(i)) - ...
            norm_cdf((cpt6(c94(i))-muX94(i))./sigmae94(i));
    end
    
% HRS 1998 ONLY 
i = find(c98>0); 
    if size(i,1) > 0 
        Li98(i) = norm_cdf((cpt6(c98(i)+1)-muX98(i))./sigmae98(i)) - ...
            norm_cdf((cpt6(c98(i))-muX98(i))./sigmae98(i));
    end
    
% HRS 2000 ONLY 
i = find(c00>0); 
    if size(i,1) > 0 
        Li00(i) = norm_cdf((cpt6(c00(i)+1)-muX00(i))./sigmae00(i)) - ...
            norm_cdf((cpt6(c00(i))-muX00(i))./sigmae00(i)); 
    end
    
% HRS 2002 ONLY
i = find(c02>0); 
    if size(i,1) > 0     
        Li02(i) = norm_cdf((cpt6(c02(i)+1)-muX02(i))./sigmae02(i)) - ...
            norm_cdf((cpt6(c02(i))-muX02(i))./sigmae02(i));
    end
    
elseif model >= 1 & model < 10
% Guassian quadrature for random effect
[xU,pU] = qnwnorm(Nodes,0,sigmau^2); 

% Pieces to Likelihood function
Li92 = ones(N,Nodes);
Li94 = ones(N,Nodes);
Li98 = ones(N,Nodes);
Li00 = ones(N,Nodes);
Li02 = ones(N,Nodes);

% HRS 1992 ONLY 
i = find(c92>0); 
    if size(i,1) > 0 
        for j = 1:Nodes;
            Li92(i,j) = norm_cdf((cpt4(c92(i)+1)-muX92(i)-xU(j))./sigmae92(i)) - ...
                norm_cdf((cpt4(c92(i))-muX92(i)-xU(j))./sigmae92(i));
        end
    end        

% HRS 1994 ONLY 
i = find(c94>0); 
    if size(i,1) > 0 
        for j = 1:Nodes;
            Li94(i,j) = norm_cdf((cpt6(c94(i)+1)-muX94(i)-xU(j))./sigmae94(i)) - ...
                norm_cdf((cpt6(c94(i))-muX94(i)-xU(j))./sigmae94(i));
        end     
    end        

% HRS 1998 ONLY 
i = find(c98>0); 
    if size(i,1) > 0 
        for j = 1:Nodes;
            Li98(i,j) = norm_cdf((cpt6(c98(i)+1)-muX98(i)-xU(j))./sigmae98(i)) - ...
                norm_cdf((cpt6(c98(i))-muX98(i)-xU(j))./sigmae98(i));
        end
    end        

% HRS 2000 ONLY 
i = find(c00>0); 
    if size(i,1) > 0 
        for j = 1:Nodes;
            Li00(i,j) = norm_cdf((cpt6(c00(i)+1)-muX00(i)-xU(j))./sigmae00(i)) - ...
            norm_cdf((cpt6(c00(i))-muX00(i)-xU(j))./sigmae00(i));
        end
    end

% HRS 2002 ONLY
i = find(c02>0); 
    if size(i,1) > 0 
        for j = 1:Nodes;
            Li02(i,j) = norm_cdf((cpt6(c02(i)+1)-muX02(i)-xU(j))./sigmae02(i)) - ...
                norm_cdf((cpt6(c02(i))-muX02(i)-xU(j))./sigmae02(i));
        end
    end        

elseif model > 10
[xU,pU] = qnwnorm(Nodes,0,sigmau^2);     
[xKo,pKo] = qnwnorm(Nodes,0,sigmako^2); 
[xKf,pKf] = qnwnorm(Nodes,0,sigmakf^2);     


% Pieces to Likelihood function
LiO = ones(N,Nodes);
LiF = ones(N,Nodes);

    for j = 1:Nodes

    Li92 = ones(N,Nodes);
    Li94 = ones(N,Nodes);
    Li98 = ones(N,Nodes);
    Li00 = ones(N,Nodes);
    Li02 = ones(N,Nodes);

    % HRS 1992 ONLY 
    i = find(c92>0); 
        if size(i,1) > 0 
            for k = 1:Nodes;
                Li92(i,k) = norm_cdf((cpt4(c92(i)+1)-muX92(i)-xU(j)-xKo(k))./sigmae92(i)) - ...
                    norm_cdf((cpt4(c92(i))-muX92(i)-xU(j)-xKo(k))./sigmae92(i));
            end
        end        

    % HRS 1994 ONLY 
    i = find(c94>0); 
        if size(i,1) > 0 
            for k = 1:Nodes;
                Li94(i,k) = norm_cdf((cpt6(c94(i)+1)-muX94(i)-xU(j)-xKo(k))./sigmae94(i)) - ...
                    norm_cdf((cpt6(c94(i))-muX94(i)-xU(j)-xKo(k))./sigmae94(i));
            end     
        end        

    % HRS 1998 ONLY 
    i = find(c98>0); 
        if size(i,1) > 0 
            for k = 1:Nodes;
                Li98(i,k) = norm_cdf((cpt6(c98(i)+1)-muX98(i)-xU(j)-xKf(k))./sigmae98(i)) - ...
                    norm_cdf((cpt6(c98(i))-muX98(i)-xU(j)-xKf(k))./sigmae98(i));
            end
        end        

    % HRS 2000 ONLY 
    i = find(c00>0); 
        if size(i,1) > 0 
            for k = 1:Nodes;
                Li00(i,k) = norm_cdf((cpt6(c00(i)+1)-muX00(i)-xU(j)-xKf(k))./sigmae00(i)) - ...
                    norm_cdf((cpt6(c00(i))-muX00(i)-xU(j)-xKf(k))./sigmae00(i));
            end
        end

    % HRS 2002 ONLY
    i = find(c02>0); 
        if size(i,1) > 0 
            for k = 1:Nodes;
                Li02(i,k) = norm_cdf((cpt6(c02(i)+1)-muX02(i)-xU(j)-xKf(k))./sigmae02(i)) - ...
                    norm_cdf((cpt6(c02(i))-muX02(i)-xU(j)-xKf(k))./sigmae02(i));
            end
        end   
    
    LiO(:,j) = (Li92.*Li94)*pKo;
    LiF(:,j) = (Li98.*Li00.*Li02)*pKf;
    
    end    
    
end

%% Log-likelihood of individual's risk categories
%% across all waves answered

if model == 0 
   Li = log((Li92.*Li94.*Li98.*Li00.*Li02));  
elseif model >=1 & model < 10 
   Li = log((Li92.*Li94.*Li98.*Li00.*Li02)*pU);
elseif model >= 10
   Li = log((LiO.*LiF)*pU);
end
