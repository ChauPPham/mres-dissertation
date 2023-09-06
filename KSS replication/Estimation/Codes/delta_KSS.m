function [b,se,R2,Avar] = delta_KSS(y,x,lambda);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% delta_KSS.m
% Calcultes the OLS, GMM estimates for second-step
% Updated July 25, 2007
% Claudia R. Sahm (claudia.r.sahm@frb.gov)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Lambda == 1 --> OLS
% Lambda >= 1 --> GMM

[N,K] = size(x);

%% Second moments %%
Sxx = x' * x / N;
Sxy = x' * y / N;

%% Adjust Second Moments with Lambda %%

%% No Second Step Covariates in First Step %%
Sxx(2:K,1) = lambda*Sxx(2:K,1);

%% Coefficient Estimates %%
b = inv(Sxx)*(Sxy);
e = y - x * b;

%% Heteroskedasticity Robust Residuals (Moment Condition 23)%%
e = y - x * b;

%% Heteroskedasticity Robust Residuals (Moment Condition 24) %% 
u = y - [x(:,1)*lambda,x(:,2:end)]*b;
gt = [x(:,1),x(:,2:end)].*[repmat(e,1,1),repmat(u,1,K-1)];

%% Asymptotic Variance %%
V = gt'*gt / N;
Avar = inv(Sxx) * V * inv(Sxx);
se = sqrt( diag( Avar ) / N );

%% R-squared %%
Sxx(1,:) = lambda*Sxx(1,:);

R2 = b'*Sxx*b/(y'*y/N);
