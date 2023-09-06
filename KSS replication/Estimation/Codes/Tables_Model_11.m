function Tables_Model_11(b,V);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Tables_Model_11.m
% Creates Tables for text with Model 11 MLE 
% Updated July 24, 2007
% Claudia R. Sahm (claudia.r.sahm@frb.gov)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

mux = b(1,1); % mean of true log risk tolerance
bbar = b(2,1); % status quo bias
sigmax = abs(b(3,1)); % std. dev. of true log risk tolerance

sigmako = abs(b(4,1)); % perm. response error for original questions
sigmakf = abs(b(5,1)); % perm. response error for bias-free questions
sigmaeo = abs(b(6,1)); % trans. response error for original questions
sigmaef = abs(b(7,1)); % trans. response error for bias-free questions

sigmao = sqrt(sigmako^2 + sigmaeo^2);
rhoo = sigmako^2/sigmao^2; % correlation between original responses
sigmau = sqrt(sigmakf^2 + sigmaef^2);
rhou = sigmakf^2/sigmau^2; % correlation between bias-free responses

se = diag(V).^.5; %% Standard errors

%% Compute Risk Tolerance Cutoffs for Risk Categories;
maxit = 200;
tol = 1.0e-6; 
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

% Figure 1: Distribution of Relative Risk Tolerance %%

sigma = sqrt(sigmax^2+sigmao^2);
X = [(.00001:.00001:1.5)'];
pdf_true =exp(-0.5*((log(X) - mux)/sigmax).^2)./(X*sigmax*sqrt(2*pi));
pdf_signal =exp(-0.5*((log(X) - mux-bbar)/sigma).^2)./(X*sigma*sqrt(2*pi));
X = [0; X];
pdf_true = [0; pdf_true];
pdf_signal = [0;pdf_signal];
 
empirical = zeros(size(X,1),1);
    index = find(X >= 0 & X <cutoff(2));
    empirical(index) = 0.646 / (cutoff(2)-0);
    index = find(X >= cutoff(2) & X <cutoff(3));
    empirical(index) = 0.116 / (cutoff(3)-cutoff(2));
    index = find(X >= cutoff(3) & X <cutoff(4));
    empirical(index) = 0.109 / (cutoff(4)-cutoff(3));
    index = find(X >= cutoff(4) & X <= 1.5) ;
    empirical(index) = 0.128 / (1.5-cutoff(4));
    
figure(1)   
 plot(X,pdf_true,X,pdf_signal,'--',X,empirical)
 xlabel('Relative Risk Tolerance');
 axis([-.04 1.5 0 7.5])
 text(.19,3.5,'Fitted True Distribution')
 text(.05,6,'Fitted Empirical Distribution')
 text(.28,2.25,' Empirical Distribution')
 print -f1 -depsc figure1
 
%% Table 4: Distribution of Risk Preferences %%

%% Expected Risk Tolerance;
Etheta = exp(mux+1/2*sigmax^2);

%% Delta Method Standard Error on Expected Risk Tolerance
g = zeros(size(V,1),1);
g(1,1) = exp(mux+1/2*sigmax^2);
g(3,1) = exp(mux+1/2*sigmax^2)*sigmax;
se_Etheta = (g'*V*g)^0.5;

%% Median Risk Tolerance;
Medtheta = exp(mux);

%% Delta Method Standard Error on Median Risk Tolerance
g = zeros(size(V,1),1);
g(1,1) = exp(mux);
se_Medtheta = (g'*V*g)^0.5;

%% Mode Risk Tolerance;
Modtheta = exp(mux) / exp(sigmax^2);

%% Delta Method Standard Error on Mode Risk Tolerance
g = zeros(size(V,1),1);
g(1,1) = exp(mux) / exp(sigmax^2);
g(3,1) = - exp(mux) / (exp(sigmax^2)^2) * 2*sigmax;
se_Modtheta = (g'*V*g)^0.5;

%% Variance Risk Tolerance;
Vtheta = exp(2*mux+sigmax^2)*(exp(sigmax^2)-1);

%% Delta Method Standard Error on Variance  Risk Tolerance
g = zeros(size(V,1),1);
g(1,1) = exp(2*mux+sigmax^2)*(exp(sigmax^2)-1)*2;
g(3,1) = exp(2*mux+sigmax^2)*(exp(sigmax^2)-1)*2*sigmax +...
         exp(2*mux+sigmax^2)*exp(sigmax^2)*2*sigmax;
se_Vtheta = (g'*V*g)^0.5;

%% Standard Deviation Risk Tolerance;
Stdtheta = Vtheta^.5;

%% Delta Method Standard Error on Standard Deviation Risk Tolerance
g = zeros(size(V,1),1);
g(1,1) = 0.5*(exp(2*mux+sigmax^2)*(exp(sigmax^2)-1))^(-0.5)*exp(2*mux+sigmax^2)*(exp(sigmax^2)-1)*2;
g(3,1) = 0.5*(exp(2*mux+sigmax^2)*(exp(sigmax^2)-1))^(-0.5)*(exp(2*mux+sigmax^2)*(exp(sigmax^2)-1)*...
    2*sigmax + exp(2*mux+sigmax^2)*exp(sigmax^2)*2*sigmax);
se_Stdtheta = (g'*V*g)^0.5;

%% Compute fractiles for risk tolerance
cprob = [0.01, 0.05,0.1,0.25,0.75,0.9,0.95,0.99];
frac = zeros(1,size(cprob,2));
for j = 1:size(frac,2)
    fracx = -2; % Initial guess for log risk tolerance fractile;
    for it=1:maxit  % Newton Rootfinder;  
        [fval,fjac] = fractile(fracx,cprob(1,j),mux,sigmax);
        fracx = fracx - fjac\fval;
        if norm(fval) < tol, break, end 
    end
    frac(1,j) = exp(fracx); % Risk tolerance (Inverse of Risk Aversion);
end
Fractheta = frac';
Fracgamma = zeros(size(Fractheta));
for i = 1:size(Fractheta,1);
    if Fractheta(i,1) > 0 
        Fracgamma(end-i+1,1) = Fractheta(i,1).^-1;
    end
end

%% Unconditional Distribution of Risk Aversion
%% Expected Risk Aversion;
Egamma = exp(-mux+1/2*sigmax^2);

%% Delta Method Standard Error on Expected Risk Aversion
g = zeros(size(V,1),1);
g(1,1) = -exp(-mux+1/2*sigmax^2);
g(3,1) = exp(-mux+1/2*sigmax^2)*sigmax;
se_Egamma = (g'*V*g)^0.5;

%% Median Risk Aversion;
Medgamma = exp(-mux);

%% Delta Method Standard Error on Median Risk Aversion
g = zeros(size(V,1),1);
g(1,1) = -exp(-mux);
se_Medgamma = (g'*V*g)^0.5;

%% Mode Risk Aversion;
Modgamma = exp(-mux) / exp(sigmax^2);

%% Delta Method Standard Error on Mode Risk Aversion
g = zeros(size(V,1),1);
g(1,1) = - exp(-mux) / exp(sigmax^2);
g(3,1) = - exp(-mux) / (exp(sigmax^2)^2) * 2*sigmax;
se_Modgamma = (g'*V*g)^0.5;

%% Standard Deviation Risk Aversion;
Stdgamma = (exp(-2*mux+sigmax^2)*(exp(sigmax^2)-1))^.5;

%% Delta Method Standard Error on Standard Deviation Risk Aversion
g = zeros(size(V,1),1);
g(1,1) = -0.5*(exp(-2*mux+sigmax^2)*(exp(sigmax^2)-1))^(-0.5)*exp(-2*mux+sigmax^2)*(exp(sigmax^2)-1)*2;
g(3,1) = 0.5*(exp(-2*mux+sigmax^2)*(exp(sigmax^2)-1))^(-0.5)*(exp(-2*mux+sigmax^2)*(exp(sigmax^2)-1)*...
    2*sigmax + exp(-2*mux+sigmax^2)*exp(sigmax^2)*2*sigmax);
se_Stdgamma = (g'*V*g)^0.5;

%% Table 7 %%
disp('   ')
disp('Table 4. Distribution of Risk Preferences')

info.cnames = strvcat('Tolerance', 'Aversion');
info.rnames = strvcat(' ','Mean','  (s.e)','Median','  (s.e)',...
    'Mode','  (s.e)','Std Dev','  (s.e)',...
    '1','5','10','25','75','90','95','99');
info.fmt=strvcat('%10.3f','%10.1f');
mprint([Etheta,Egamma;se_Etheta,se_Egamma;
        Medtheta,Medgamma;se_Medtheta,se_Medgamma;
        Modtheta,Modgamma;se_Modtheta,se_Modgamma;
        Stdtheta,Stdgamma;se_Stdtheta,se_Stdgamma;
        Fractheta,Fracgamma],info);

%% Column 1, Table R-4 %%
disp('Table R-4: Descriptive Statistics (Weighting Sensitivity Check) Columns 1');
disp('Model 13, Unweighted, No Sampling Covariates');
disp(sprintf(' Mean Log(RT) = %1.3f (%1.3f) Mean RT = %1.3f (%1.3f) Median RT = %1.3f (%1.3f)', ...
	mux, se(1), Medtheta, se_Medtheta, Etheta, se_Etheta )); 

ProxyT = zeros(6,3);
for j = 1:6;
    ProxyT(j,1) = Elntheta_KSS(b,0,0,j,0,0,[1,1],[1,1],[1,0],[1,0],[1,0]);
    ProxyT(j,2) = Etheta_KSS(b,0,0,j,0,0,[1,1],[1,1],[1,0],[1,0],[1,0]);
    ProxyT(j,3) = Egamma_KSS(b,0,0,j,0,0,[1,1],[1,1],[1,0],[1,0],[1,0]);
end
disp('   ')
disp('Table 5. Imputation of Risk Preference')
disp('Status-Quo-Bias-Free Question')
info.cnames = strvcat('Log Theta', 'Theta','Gamma');
info.rnames = strvcat(' ','Cat 1', 'Cat 2','Cat 3','Cat 4','Cat 5','Cat 6');
info.fmt=strvcat('%10.3f','%10.3f','%10.1f');
mprint([ProxyT],info);    
    
ProxyT = zeros(6,3);
for j = 1:6;
    ProxyT(j,1) = Elntheta_KSS(b,0,j,0,0,0,[1,1],[1,1],[1,0],[1,0],[1,0]);
    ProxyT(j,2) = Etheta_KSS(b,0,j,0,0,0,[1,1],[1,1],[1,0],[1,0],[1,0]);
    ProxyT(j,3)  = Egamma_KSS(b,0,j,0,0,0,[1,1],[1,1],[1,0],[1,0],[1,0]);
end
disp('   ')
disp('Original Question')
info.cnames = strvcat('Log Theta', 'Theta','Gamma');
info.rnames = strvcat(' ','Cat 1', 'Cat 2','Cat 3','Cat 4','Cat 5','Cat 6');
info.fmt=strvcat('%10.3f','%10.3f','%10.1f');
mprint([ProxyT],info);   


function [fval,fjac] = fractile(x,cprob,mu,sigmax);
% Used to compute fractiles of risk tolerance
% Input to Newton-Rhapson algorithm

fval = cprob - norm_cdf((x-mu)/sigmax);
fjac = - norm_pdf((x-mu)/sigmax)/sigmax;
