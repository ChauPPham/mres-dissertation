function Li = likelihood(b,c93,c02,c04,c06,c10,c12,c14,X93,X02,X04,X06,X10,X12,X14)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Value of likelihood for gamble respondents
% Gaussian quadrature
% Fjdac.m computes numerical gradient
% Based on like_KSS by Claudia Sahm 
%
% Author: Chau Pham (chau.pham.22@ucl.ac.uk)
% Last update: August 22, 2023
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


global cpt_old cpt_new model  

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

if model == 11 || model == 12 || model == 13 || model == 14
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
LiO = ones(N,Nodes);
LiF = ones(N,Nodes);

    for j = 1:Nodes

    Li93 = ones(N,Nodes);
    Li02 = ones(N,Nodes);
    Li04 = ones(N,Nodes);
    Li06 = ones(N,Nodes);
    Li10 = ones(N,Nodes);
    Li12 = ones(N,Nodes);
    Li14 = ones(N,Nodes);

    % NLSY 1993 ONLY 
    i = find(c93>0); 
        if size(i,1) > 0 
            for k = 1:Nodes
                Li93(i,k) = norm_cdf((cpt_old(c93(i)+1)-muX93(i)-xU(j)-xKo(k))./sigmae93(i)) - ...
                    norm_cdf((cpt_old(c93(i))-muX93(i)-xU(j)-xKo(k))./sigmae93(i));
            end
        end        

    % NLSY 2002 ONLY 
    i = find(c02>0); 
        if size(i,1) > 0 
            for k = 1:Nodes
                Li10(i,k) = norm_cdf((cpt_old(c02(i)+1)-muX02(i)-xU(j)-xKo(k))./sigmae02(i)) - ...
                    norm_cdf((cpt_old(c02(i))-muX02(i)-xU(j)-xKo(k))./sigmae02(i));
            end     
        end        

    % NLSY 2004 ONLY 
    i = find(c04>0); 
        if size(i,1) > 0 
            for k = 1:Nodes
                Li04(i,k) = norm_cdf((cpt_old(c04(i)+1)-muX04(i)-xU(j)-xKf(k))./sigmae04(i)) - ...
                    norm_cdf((cpt_old(c04(i))-muX04(i)-xU(j)-xKf(k))./sigmae04(i));
            end
        end        

    % NLSY 2006 ONLY 
    i = find(c06>0); 
        if size(i,1) > 0 
            for k = 1:Nodes
                Li06(i,k) = norm_cdf((cpt_old(c06(i)+1)-muX06(i)-xU(j)-xKf(k))./sigmae06(i)) - ...
                    norm_cdf((cpt_old(c06(i))-muX06(i)-xU(j)-xKf(k))./sigmae06(i));
            end
        end

    % NLSY 2010 ONLY
    i = find(c10>0); 
        if size(i,1) > 0 
            for k = 1:Nodes
                Li10(i,k) = norm_cdf((cpt_new(c10(i)+1)-muX10(i)-xU(j)-xKf(k))./sigmae10(i)) - ...
                    norm_cdf((cpt_new(c10(i))-muX10(i)-xU(j)-xKf(k))./sigmae10(i));
            end
        end   

    % NLSY 2012 ONLY
    i = find(c12>0); 
        if size(i,1) > 0 
            for k = 1:Nodes
                Li12(i,k) = norm_cdf((cpt_new(c12(i)+1)-muX12(i)-xU(j)-xKf(k))./sigmae12(i)) - ...
                    norm_cdf((cpt_new(c12(i))-muX12(i)-xU(j)-xKf(k))./sigmae12(i));
            end
        end  

    % NLSY 2014 ONLY
    i = find(c14>0); 
        if size(i,1) > 0 
            for k = 1:Nodes
                Li14(i,k) = norm_cdf((cpt_new(c14(i)+1)-muX14(i)-xU(j)-xKf(k))./sigmae14(i)) - ...
                    norm_cdf((cpt_new(c14(i))-muX14(i)-xU(j)-xKf(k))./sigmae14(i));
            end
        end  
    
    LiO(:,j) = (Li93.*Li02.*Li04.*Li06)*pKo;
    LiF(:,j) = (Li10.*Li12.*Li14)*pKf;
    
    end    
    
end

%% Log-likelihood of individual's risk categories
%% across all waves answered

if model >= 10
   Li = log((LiO.*LiF)*pU);
end
