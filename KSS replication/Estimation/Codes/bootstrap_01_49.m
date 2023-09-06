% bootstrap_01_49.m

% Output used to calculate bootstrap
% standard errors for the last three columns
% of Table 7

% This program is written to be run 199 times

% Updated July 20, 2007

clear all;

global cpt4 cpt6 iterbs model
tic;

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


iterbs = 0; %% Initialize Number in Bootstrap Iteration

% Create sequence of random numbers for the bootstrap
startseed = 123456789; 
rand('state',startseed); 
seeds = rand(199,1)*100000000; 

%%% Bootstrap Loop
while iterbs < 50
      
iterbs = iterbs + 1;
rand('state',seeds(iterbs));     
    
load KSSsample

%% Sample randomly with replacement from 8 Groups: 
%% Total of 11,616 Respondents

index = [];
% One Original and No Bias-free, 6962 Respondents
index1 = find(original == 1 & biasfree == 0);
N1 = size(index1,1);
N1star = round(rand(N1,1)*(N1-1))+1;
index = index1(N1star);
    
% Two Original and No Bias-free, 410 Respondents
index2 = find(original == 2 & biasfree == 0);
N2 = size(index2,1);
N2star = round(rand(N2,1)*(N2-1))+1;
index = [index; index2(N2star)];

% One Original and One Bias-free, 3252 Respondents
index3 = find(original == 1 & biasfree == 1);
N3 = size(index3,1);
N3star = round(rand(N3,1)*(N3-1))+1;
index = [index; index3(N3star)];

% Two Original and One Bias-free, 243 Respondents
index4 = find(original == 2 & biasfree == 1);
N4 = size(index4,1);
N4star = round(rand(N4,1)*(N4-1))+1;
index = [index; index4(N4star)];

% One Original and Two Bias-free, 448 Respondents
index5 = find(original == 1 & biasfree == 2);
N5 = size(index5,1);
N5star = round(rand(N5,1)*(N5-1))+1;
index = [index; index5(N5star)];

% Two Original and Two Bias-free, 23 Respondents
index6 = find(original == 2 & biasfree == 2);
N6 = size(index6,1);
N6star = round(rand(N6,1)*(N6-1))+1;
index = [index; index6(N6star)];
    
% One Original and Three Bias-free, 261 Respondents
index7 = find(original == 1 & biasfree == 3);
N7 = size(index7,1);
N7star = round(rand(N7,1)*(N7-1))+1;
index = [index; index7(N7star)];

% Two Original and Three Bias-free, 17 Respondents
index8 = find(original == 2 & biasfree == 3);
N8 = size(index8,1);
N8star = round(rand(N8,1)*(N8-1))+1;
index = [index; index8(N8star)];

N = size(index,1);

% Create bootstrap sample of individual information
hhid = hhid(index,1);
finr = finr(index,1);

X92 = X92(index,:);
X94 = X94(index,:);
X98 = X98(index,:);
X00 = X00(index,:);
X02 = X02(index,:);

c92 = c92(index,1);
c94 = c94(index,1);
c98 = c98(index,1);
c00 = c00(index,1);
c02 = c02(index,1);

ltotinc_1992=ltotinc_1992(index,1);
lfwealth_1992=lfwealth_1992(index,1);
fwealth_1992=fwealth_1992(index,1);

Z = Z(index,:);
Y = Y(index,1);

%% Estimate Maximum-Likelihood Model
model = 11;
EstimateRisk_KSS_bs(c92,c94,c98,c00,c02,[X92(:,1),...
        ones(N,1)],[X94(:,1),ones(N,1)],[X98(:,1),zeros(N,1)],[X00(:,1),zeros(N,1)],[X02(:,1),zeros(N,1)]);

model = 12;
EstimateRisk_KSS_bs(c92,c94,c98,c00,c02,[X92 ,ones(N,1)],[X94 ,ones(N,1)],...
    [X98 ,zeros(N,1)],[X00, zeros(N,1)],[X02, zeros(N,1)]);

%% Imputation of Risk Tolerance
results_11 = ['results_11_',int2str(iterbs)];
load(results_11);
[Etheta_11]  = Etheta_KSS(b,c92,c94,c98,c00,c02,...
    [X92(:,1),ones(N,1)],[X94(:,1),ones(N,1)],[X98(:,1),zeros(N,1)],[X00(:,1),zeros(N,1)],[X02(:,1),zeros(N,1)]);       
sigmau = abs(b(3));
xb_11 = X92(:,1)*b(1);
mu_11 = mean(xb_11);
va_11 = var(xb_11)+sigmau^2;
Vtheta_11  = exp(2*mu_11+va_11)*(exp(va_11)-1);

results_12 = ['results_12_',int2str(iterbs)];
load(results_12);
[Etheta_12,Eexpu_12]  = Etheta_KSS(b,c92,c94,c98,c00,c02,...
    [X92,ones(N,1)],[X94,ones(N,1)],[X98,zeros(N,1)],[X00,zeros(N,1)],[X02,zeros(N,1)]);
    K = size(X92,2);    
    sigmau = abs(b(15));
    xb_12 = X92*b(1:K);
    mu_12 = mean(xb_12);
    va_12 = var(xb_12)+sigmau^2;
    Vtheta_12  = exp(2*mu_12+va_12)*(exp(va_12)-1);
    
%% Variables for Stock Regression
Xv11 = [Etheta_11, Z];
Xv12 = [Etheta_12, Z];

i = find(finr == 1 & ltotinc_1992 > 0 & lfwealth_1992 > 0);
Xv11 = Xv11(i,:); 
Xv12 = Xv12(i,:);
Y = Y(i);
H = size(i,1);

lambdaP = Vtheta_11/ var(Xv11(:,1));

% All Variables in Regression - Demeaned
Y = Y - repmat(mean(Y),H,1);

dfile =['bsstck_',int2str(model),'_',int2str(iterbs),'.out'];    
diary(dfile);

%% Trans. Response Error Corrected
disp('Modeling Trans. Response Error - OLS')
info.rnames = strvcat('  ','Theta - 11','Black','Hispanic','Male','Lt 12 Yrs Ed','13-16 Yrs Ed',...
    'Gt 16 Yrs Ed','Age/10','Log income','Log networth' ); 
X = Xv11 - repmat(mean(Xv11),H,1);
[b,se,R2,V] = est_delta(Y,X,0,1);
disp(sprintf('R-squared %1.3f', R2));
CI = [b(:,1)-se(:,1)*1.96, b(:,1)+se(:,1)*1.96];
mprint([b,se,CI,b./se],info); 
bOLS_11 = b;
VOLS_11 = V;
seOLS_11 = se;

% GMM Estimator
disp('Modeling Trans. Response Error - GMM')
info.rnames = strvcat('  ','Theta - 11','Black','Hispanic','Male','Lt 12 Yrs Ed','13-16 Yrs Ed',...
    'Gt 16 Yrs Ed','Age/10','Log income','Log networth'  ); 
X = Xv11 - repmat(mean(Xv11),H,1);
[b,se,R2,V1] = est_delta(Y,X,1,lambdaP);
disp(sprintf('R-squared %1.3f', R2));
CI = [b(:,1)-se(:,1)*1.96, b(:,1)+se(:,1)*1.96];
mprint([b,se,CI,b./se],info);  
bGMM_11 = b;
VGMM_11 = V;
seGMM_11 = se;

%% Trans. Response Error Corrected
disp('Modeling Trans. Response Error - OLS')
info.rnames = strvcat('  ','Theta - 12','Black','Hispanic','Male','Lt 12 Yrs Ed','13-16 Yrs Ed',...
    'Gt 16 Yrs Ed','Age/10','Log income','Log networth' ); 
X = Xv12 - repmat(mean(Xv12),H,1);
[b,se,R2,V2] = est_delta(Y,X,0,1);
%R-2 Calculation with lambda factor;
N = size(Y,1); Sxx = X' * X / N;
Sxx(1,1) = (Vtheta_12/var(Etheta_12))*Sxx(1,1);
R2 = b'*Sxx*b/(Y'*Y/N);
disp(sprintf('R-squared %1.3f', R2));
CI = [b(:,1)-se(:,1)*1.96, b(:,1)+se(:,1)*1.96];
mprint([b,se,CI,b./se],info); 
bOLS_12 = b;
VOLS_12 = V;
seOLS_12 = se;
 
sfile = ['stockreg_',int2str(iterbs)];
save(sfile,'bOLS_11','bGMM_11','bOLS_12','seOLS_11','seGMM_11','seOLS_12','VOLS_11','VGMM_11','VOLS_12','lambdaP')


diary off;
end


