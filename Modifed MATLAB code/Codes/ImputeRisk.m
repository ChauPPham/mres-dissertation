
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% ImputeRisk.m
% Based on code by Claudia R. Sahm (claudia.r.sahm@frb.gov)
% for "Imputing Risk Tolerance from Survey Responses" Kimball, Sahm, Shapiro, in JASA
%
% Modified for MRes dissertation
% Author: Chau Pham
% Updated August 21, 2023
%
% Calls Matlab codes from toolbox by James P. LeSage
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clear all;

delete('../Output/ImputeRisk.out')
diary('../Output/ImputeRisk.out');

disp('Output from ImputeRisk.m - August 21 2023');
disp('  ');

%% Input NLSY79 data %%
% input all variables including indicator dummy (instead of categorical
% variable)

[ID, INCOME_1993, INTERVIEW_MONTH_1993, WKS_WORKED_SPS_1993, WKS_WORKED_1993, ...
    EAST_1993, SOUTH_1993, WEST_1993, MARRIED_1993, OTHER_1993, HS_1993, COLLEGE_1993, RISK_1993, AGE_1993, ...
    INCOME_2002, INTERVIEW_MONTH_2002, WKS_WORKED_SPS_2002, WKS_WORKED_2002, ...
    EAST_2002, SOUTH_2002, WEST_2002, MARRIED_2002, OTHER_2002, HS_2002, COLLEGE_2002, RISK_2002, AGE_2002, ...
    INCOME_2004, INTERVIEW_MONTH_2004, WKS_WORKED_SPS_2004, WKS_WORKED_2004, ...
    EAST_2004, SOUTH_2004, WEST_2004, MARRIED_2004, OTHER_2004, HS_2004, COLLEGE_2004, RISK_2004, AGE_2004, ...
    INCOME_2006, INTERVIEW_MONTH_2006, WKS_WORKED_SPS_2006, WKS_WORKED_2006, ...
    EAST_2006, SOUTH_2006, WEST_2006, MARRIED_2006, OTHER_2006, HS_2006, COLLEGE_2006, RISK_2006, AGE_2006, ...
    INCOME_2010, INTERVIEW_MONTH_2010, WKS_WORKED_SPS_2010, WKS_WORKED_2010, ...
    EAST_2010, SOUTH_2010, WEST_2010, MARRIED_2010, OTHER_2010, HS_2010, COLLEGE_2010, RISK_2010, AGE_2010, ...
    INCOME_2012, INTERVIEW_MONTH_2012, WKS_WORKED_SPS_2012, WKS_WORKED_2012, ...
    EAST_2012, SOUTH_2012, WEST_2012, MARRIED_2012, OTHER_2012, HS_2012, COLLEGE_2012, RISK_2012, AGE_2012, ...
    INCOME_2014, INTERVIEW_MONTH_2014, WKS_WORKED_SPS_2014, WKS_WORKED_2014, ...
    EAST_2014, SOUTH_2014, WEST_2014, MARRIED_2014, OTHER_2014, HS_2014, COLLEGE_2014, RISK_2014, AGE_2014, ...
    MOM_HGC, DAD_HGC, AFQT_2006, HISPANIC, BLACK, FEMALE, AGE_14, ...
    INTERVIEW_1993, INTERVIEW_2002, INTERVIEW_2004, INTERVIEW_2006, INTERVIEW_2010, INTERVIEW_2012, INTERVIEW_2014] = ...
textread('../Input/MATLAB_INPUT.txt','%u %f %u %u %u %u %u %u %u %u %u %u %u %u %f %u %u %u %u %u %u %u %u %u %u %u %u %f %u %u %u %u %u %u %u %u %u %u %u %u %f %u %u %u %u %u %u %u %u %u %u %u %u %f %u %u %u %u %u %u %u %u %u %u %u %u %f %u %u %u %u %u %u %u %u %u %u %u %u %f %u %u %u %u %u %u %u %u %u %u %u %u %u %u %u %u %u %u %u %u %u %u %u %u %u %u', -1, 'delimiter', '\t', 'emptyvalue', 0);

N = size(ID,1);

lINCOME_1993 = log(INCOME_1993)/10; lINCOME_2002 = log(INCOME_2002)/10; lINCOME_2004 = log(INCOME_2004)/10; lINCOME_2006 = log(INCOME_2006)/10; lINCOME_2010 = log(INCOME_2010)/10; lINCOME_2012 = log(INCOME_2012)/10; lINCOME_2014 = log(INCOME_2014)/10; 
zINCOME_1993 = INCOME_1993(:) == 0; zINCOME_2002 = INCOME_2002(:) == 0; zINCOME_2004 = INCOME_2004(:) == 0; zINCOME_2006 = INCOME_2006(:) == 0; zINCOME_2010 = INCOME_2010(:) == 0; zINCOME_2012 = INCOME_2012(:) == 0; zINCOME_2014 = INCOME_2014(:) == 0;  
lINCOME_1993(zINCOME_1993 == 1) = 0; lINCOME_2002(zINCOME_2002 == 1) = 0; lINCOME_2004(zINCOME_2004 == 1) = 0; lINCOME_2006(zINCOME_2006 == 1) = 0; lINCOME_2010(zINCOME_2010 == 1) = 0; lINCOME_2012(zINCOME_2012 == 1) = 0; lINCOME_2014(zINCOME_2014 == 1) = 0;
AGE_1993 = AGE_1993/10; AGE_2002 = AGE_2002/10; AGE_2004 = AGE_2004/10; AGE_2006 = AGE_2006/10; AGE_2010 = AGE_2010/10; AGE_2012 = AGE_2012/10; AGE_2014 = AGE_2014/10;

%% Input Aggregate Data %%
[amonth, ayear, ICS, URATE] = textread('../Input/AGGREGATE_MACRO.txt','%u %u %f %f');  

%% Create Measures of Aggregate Conditions in Interview Month %%
% ICS stands for Index of Consumer Sentiment 
% ICS and unemployment rate are used as controll for aggregate
% macroeconomic conditions that might effect holding of financial assets

ICS_1993 = zeros(N,1); ICS_2002 = zeros(N,1); ICS_2004 = zeros(N,1); ICS_2006 = zeros(N,1); ICS_2010 = zeros(N,1); ICS_2012 = zeros(N,1); ICS_2014 = zeros(N,1);
URATE_1993 = zeros(N,1); URATE_2002 = zeros(N,1); URATE_2004 = zeros(N,1); URATE_2006 = zeros(N,1); URATE_2010 = zeros(N,1); URATE_2012 = zeros(N,1); URATE_2014 = zeros(N,1);

%% 1993 NLSY79
for mn = 1:12
ii = find(INTERVIEW_MONTH_1993 == mn);
    if size(ii,1) > 0 
        aa = find(ayear == 1993 & amonth == mn);
        ICS_1993(ii,1) = ICS(aa,1)/10; % Index of Consumer Sentiment / 10 in interview month
        URATE_1993(ii,1) = URATE(aa,1); % Unemployment rate in interview month
    end
end   

%% 2002 NLSY79
for mn = 1:12
ii = find(INTERVIEW_MONTH_2002 == mn);
    if size(ii,1) > 0 
        aa = find(ayear == 2002 & amonth == mn);
        ICS_2002(ii,1) = ICS(aa,1)/10; % Index of Consumer Sentiment / 10 in interview month
        URATE_2002(ii,1) = URATE(aa,1); % Unemployment rate in interview month
    end
end

%% 2004 NLSY79
for mn = 1:12
ii = find(INTERVIEW_MONTH_2004 == mn);
    if size(ii,1) > 0 
        aa = find(ayear == 2004 & amonth == mn);
        ICS_2004(ii,1) = ICS(aa,1)/10; % Index of Consumer Sentiment / 10 in interview month
        URATE_2004(ii,1) = URATE(aa,1); % Unemployment rate in interview month
    end
end

%% 2006 NLSY79
for mn = 1:12
ii = find(INTERVIEW_MONTH_2006 == mn);
    if size(ii,1) > 0 
        aa = find(ayear == 2006 & amonth == mn);
        ICS_2006(ii,1) = ICS(aa,1)/10; % Index of Consumer Sentiment / 10 in interview month
        URATE_2006(ii,1) = URATE(aa,1); % Unemployment rate in interview month
    end
end

%% 2010 NLSY79
for mn = 1:12
ii = find(INTERVIEW_MONTH_2010 == mn);
    if size(ii,1) > 0 
        aa = find(ayear == 2010 & amonth == mn);
        ICS_2010(ii,1) = ICS(aa,1)/10; % Index of Consumer Sentiment / 10 in interview month
        URATE_2010(ii,1) = URATE(aa,1); % Unemployment rate in interview month
    end
end

%% 2012 NLSY79
for mn = 1:12
ii = find(INTERVIEW_MONTH_2012 == mn);
    if size(ii,1) > 0 
        aa = find(ayear == 2012 & amonth == mn);
        ICS_2012(ii,1) = ICS(aa,1)/10; % Index of Consumer Sentiment / 10 in interview month
        URATE_2012(ii,1) = URATE(aa,1); % Unemployment rate in interview month
    end
end

%% 2014 NLSY79
for mn = 1:12
ii = find(INTERVIEW_MONTH_2014 == mn);
    if size(ii,1) > 0 
        aa = find(ayear == 2014 & amonth == mn);
        ICS_2014(ii,1) = ICS(aa,1)/10; % Index of Consumer Sentiment / 10 in interview month
        URATE_2014(ii,1) = URATE(aa,1); % Unemployment rate in interview month
    end
end

%% Variable Matrices for Baseline Estimation %%    
X93 = zeros(N,13); X02 = zeros(N,13); X04 = zeros(N,13); X06 = zeros(N,13); X10 = zeros(N,13); X12 = zeros(N,13); X14 = zeros(N,13);

ii = find(INTERVIEW_1993 > 0);
X93(ii,:) = [ones(size(ii)), BLACK(ii), HISPANIC(ii), FEMALE(ii), HS_1993(ii), COLLEGE_1993(ii), AGE_1993(ii), ...
     lINCOME_1993(ii), zINCOME_1993(ii), WKS_WORKED_1993(ii), WKS_WORKED_SPS_1993(ii), URATE_1993(ii), ICS_1993(ii)];  

ii = find(INTERVIEW_2002 > 0);
X02(ii,:) = [ones(size(ii)), BLACK(ii), HISPANIC(ii), FEMALE(ii), HS_2002(ii), COLLEGE_2002(ii), AGE_2002(ii), ...
    lINCOME_2002(ii), zINCOME_2002(ii), WKS_WORKED_2002(ii), WKS_WORKED_SPS_2002(ii), URATE_2002(ii), ICS_2002(ii)];  

ii = find(INTERVIEW_2004 > 0);
X04(ii,:) = [ones(size(ii)), BLACK(ii), HISPANIC(ii), FEMALE(ii), HS_2004(ii), COLLEGE_2004(ii), AGE_2004(ii), ...
    lINCOME_2004(ii), zINCOME_2004(ii), WKS_WORKED_2004(ii), WKS_WORKED_SPS_2004(ii), URATE_2004(ii), ICS_2004(ii)];

ii = find(INTERVIEW_2006 > 0);
X06(ii,:) = [ones(size(ii)), BLACK(ii), HISPANIC(ii), FEMALE(ii), HS_2006(ii), COLLEGE_2006(ii), AGE_2006(ii), ...
    lINCOME_2006(ii), zINCOME_2006(ii), WKS_WORKED_2006(ii), WKS_WORKED_SPS_2006(ii), URATE_2006(ii), ICS_2006(ii)]; 

ii = find(INTERVIEW_2010 > 0);
X10(ii,:) = [ones(size(ii)), BLACK(ii), HISPANIC(ii), FEMALE(ii), HS_2010(ii), COLLEGE_2010(ii), AGE_2010(ii), ...
    lINCOME_2010(ii), zINCOME_2010(ii), WKS_WORKED_2010(ii), WKS_WORKED_SPS_2010(ii), URATE_2010(ii), ICS_2010(ii)]; 

ii = find(INTERVIEW_2012 > 0);
X12(ii,:) = [ones(size(ii)), BLACK(ii), HISPANIC(ii), FEMALE(ii), HS_2012(ii), COLLEGE_2012(ii), AGE_2012(ii), ...
    lINCOME_2012(ii), zINCOME_2012(ii), WKS_WORKED_2012(ii), WKS_WORKED_SPS_2012(ii), URATE_2012(ii), ICS_2012(ii)]; 

ii = find(INTERVIEW_2014 > 0);
X14(ii,:) = [ones(size(ii)), BLACK(ii), HISPANIC(ii), FEMALE(ii), HS_2014(ii), COLLEGE_2014(ii), AGE_2014(ii), ...
    lINCOME_2014(ii), zINCOME_2014(ii), WKS_WORKED_2014(ii), WKS_WORKED_SPS_2014(ii), URATE_2014(ii), ICS_2014(ii)];  


X93 = sparse(X93); X02 = sparse(X02); X04 = sparse(X04); X06 = sparse(X06); X10 = sparse(X10); X12 = sparse(X12); X14 = sparse(X14);

%% Variable Matrices for Sampling Sensitivity Check %%
W93 = zeros(N,15); W02 = zeros(N,15); W04 = zeros(N,15); W06 = zeros(N,15); W10 = zeros(N,15); W12 = zeros(N,15); W14 = zeros(N,15);

ii = find(INTERVIEW_1993 > 0);
    W93(ii,:) = [ones(size(ii)), BLACK(ii), HISPANIC(ii), EAST_1993(ii), SOUTH_1993(ii), WEST_1993(ii), ...
        MARRIED_1993(ii), OTHER_1993(ii), AGE_1993(ii), URATE_1993(ii), ICS_1993(ii), MOM_HGC(ii), DAD_HGC(ii), AGE_14(ii), AFQT_2006(ii)];  

ii = find(INTERVIEW_2002 > 0);
    W02(ii,:) = [ones(size(ii)), BLACK(ii), HISPANIC(ii), EAST_2002(ii), SOUTH_2002(ii), WEST_2002(ii), ...
        MARRIED_2002(ii), OTHER_2002(ii), AGE_2002(ii), URATE_2002(ii), ICS_2002(ii), MOM_HGC(ii), DAD_HGC(ii), AGE_14(ii), AFQT_2006(ii)];     

ii = find(INTERVIEW_2004 > 0);
    W04(ii,:) = [ones(size(ii)), BLACK(ii), HISPANIC(ii), EAST_2004(ii), SOUTH_2004(ii), WEST_2004(ii), ...
        MARRIED_2004(ii), OTHER_2004(ii), AGE_2004(ii), URATE_2004(ii), ICS_2004(ii), MOM_HGC(ii), DAD_HGC(ii), AGE_14(ii), AFQT_2006(ii)];      

ii = find(INTERVIEW_2006 > 0);
    W06(ii,:) = [ones(size(ii)), BLACK(ii), HISPANIC(ii), EAST_2006(ii), SOUTH_2006(ii), WEST_2006(ii), ...
        MARRIED_2006(ii), OTHER_2006(ii), AGE_2006(ii), URATE_2006(ii), ICS_2006(ii), MOM_HGC(ii), DAD_HGC(ii), AGE_14(ii), AFQT_2006(ii)];   

ii = find(INTERVIEW_2010 > 0);
    W10(ii,:) = [ones(size(ii)), BLACK(ii), HISPANIC(ii), EAST_2010(ii), SOUTH_2010(ii), WEST_2010(ii), ...
        MARRIED_2010(ii), OTHER_2010(ii), AGE_2010(ii), URATE_2010(ii), ICS_2010(ii), MOM_HGC(ii), DAD_HGC(ii), AGE_14(ii), AFQT_2006(ii)];     

ii = find(INTERVIEW_2012 > 0);
    W10(ii,:) = [ones(size(ii)), BLACK(ii), HISPANIC(ii), EAST_2012(ii), SOUTH_2012(ii), WEST_2012(ii), ...
        MARRIED_2012(ii), OTHER_2012(ii), AGE_2012(ii), URATE_2012(ii), ICS_2012(ii), MOM_HGC(ii), DAD_HGC(ii), AGE_14(ii), AFQT_2006(ii)];  

ii = find(INTERVIEW_2014 > 0);
    W10(ii,:) = [ones(size(ii)), BLACK(ii), HISPANIC(ii), EAST_2014(ii), SOUTH_2014(ii), WEST_2014(ii), ...
    MARRIED_2014(ii), OTHER_2014(ii), AGE_2014(ii), URATE_2014(ii), ICS_2014(ii), MOM_HGC(ii), DAD_HGC(ii), AGE_14(ii), AFQT_2006(ii)];  

W93 = sparse(W93); W02 = sparse(W02); W04 = sparse(W04); W06 = sparse(W06); W10 = sparse(W10); W12 = sparse(W12); W14 = sparse(W14);

%% Variable Matrices for Sampling Sensitivity Check (Plus Second-Step Covariates) %%

XW93 = zeros(N,22); XW02 = zeros(N,22); XW04 = zeros(N,22); XW06 = zeros(N,22); XW10 = zeros(N,22); XW12 = zeros(N,22); XW14 = zeros(N,22);

ii = find(INTERVIEW_1993 > 0);
XW93(ii,:) = [W93(ii,:), FEMALE(ii), HS_1993(ii), COLLEGE_1993(ii), lINCOME_1993(ii), ... 
    zINCOME_1993(ii), WKS_WORKED_1993(ii), WKS_WORKED_SPS_1993(ii)];  

ii = find(INTERVIEW_2002 > 0);
XW02(ii,:) = [W02(ii,:), FEMALE(ii), HS_2002(ii), COLLEGE_2002(ii), lINCOME_2002(ii), ... 
    zINCOME_2002(ii), WKS_WORKED_2002(ii), WKS_WORKED_SPS_2002(ii)];  

ii = find(INTERVIEW_2004 > 0);
XW04(ii,:) = [W04(ii,:), FEMALE(ii), HS_2004(ii), COLLEGE_2004(ii), lINCOME_2004(ii), ... 
    zINCOME_2004(ii), WKS_WORKED_2004(ii), WKS_WORKED_SPS_2004(ii)];  

ii = find(INTERVIEW_2006 > 0);
XW06(ii,:) = [W06(ii,:), FEMALE(ii), HS_2006(ii), COLLEGE_2006(ii), lINCOME_2006(ii), ... 
    zINCOME_2006(ii), WKS_WORKED_2006(ii), WKS_WORKED_SPS_2006(ii)]; 

ii = find(INTERVIEW_2010 > 0);
XW10(ii,:) = [W10(ii,:), FEMALE(ii), HS_2010(ii), COLLEGE_2010(ii), lINCOME_2010(ii), ... 
    zINCOME_2010(ii), WKS_WORKED_2010(ii), WKS_WORKED_SPS_2010(ii)];   

ii = find(INTERVIEW_2012 > 0);
XW12(ii,:) = [W12(ii,:), FEMALE(ii), HS_2012(ii), COLLEGE_2012(ii), lINCOME_2012(ii), ... 
    zINCOME_2012(ii), WKS_WORKED_2012(ii), WKS_WORKED_SPS_2012(ii)];   

ii = find(INTERVIEW_2014 > 0);
XW14(ii,:) = [W14(ii,:), FEMALE(ii), HS_2014(ii), COLLEGE_2014(ii), lINCOME_2014(ii), ... 
    zINCOME_2014(ii), WKS_WORKED_2014(ii), WKS_WORKED_SPS_2014(ii)];   


XW93 = sparse(XW93); XW02 = sparse(XW02); XW04 = sparse(XW04); XW06 = sparse(XW06); XW10 = sparse(XW10); XW12 = sparse(XW12); XW14 = sparse(XW14);

%% Save Matlab Data set %%
save ../Output/MATLAB_sample ID X* W* N HS* COLLEGE* FEMALE* RISK* lINCOME* zINCOME* BLACK HISPANIC WKS* MARRIED* OTHER* AGE*
diary off;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% First-step: MLE with Gamble Responses
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% MODEL 11: No Covariates, Transitory Response Error, Persistent Response Error
clear all;
load ../Output/MATLAB_sample;
global model 
model = 11;
itertime = clock;
disp(datestr(itertime,0));
dfile = ['../Output/Model_',int2str(model),'_',datestr(clock,1),'.out'];
diary(dfile);
disp('Model 11')
EstimateRisk(RISK_1993, RISK_2002, RISK_2004, RISK_2006, RISK_2010, RISK_2012, RISK_2014,[X93(:,1),ones(N,1)],[X02(:,1),ones(N,1)],[X04(:,1),ones(N,1)],[X06(:,1),ones(N,1)],[X10(:,1),zeros(N,1)],[X12(:,1),zeros(N,1)],[X14(:,1),zeros(N,1)]);
diary off;

%% MODEL 12: Second-Step Covariates, Transitory Response Error, Persistent Response Error
clear all;
load ../Output/MATLAB_sample; 
global model
model = 12;
itertime = clock;
disp(datestr(itertime,0));
dfile = ['../Output/Model_',int2str(model),'_',datestr(clock,1),'.out'];
diary(dfile);
disp('Model 12')
% one here indicates those that have status quo bias in them
% zero indicates new version without status quo bias
EstimateRisk(RISK_1993, RISK_2002, RISK_2004, RISK_2006, RISK_2010, RISK_2012, RISK_2014,[X93 ,ones(N,1)],[X02 ,ones(N,1)], [X04 ,ones(N,1)],[X06, ones(N,1)], ...
    [X10, zeros(N,1)], [X12, zeros(N,1)], [X14, zeros(N,1)]);
diary off;

%% MODEL 13: Sampling Covariates, Transitory Response Error, Persistent Response Error
clear all;
load ../Output/MATLAB_sample;
global model
model = 13;
itertime = clock;
disp(datestr(itertime,0));
dfile = ['../Output/Model_',int2str(model),'_',datestr(clock,1),'.out'];
diary(dfile);
disp('Model 13')
EstimateRisk(RISK_1993, RISK_2002, RISK_2004, RISK_2006, RISK_2010, RISK_2012, RISK_2014,[W93 ,ones(N,1)],[W02 ,ones(N,1)], [W04 ,ones(N,1)],[W06, ones(N,1)], ...
    [W10, zeros(N,1)], [W12, zeros(N,1)], [W14, zeros(N,1)]);
diary off;

%% MODEL 14: Sampling plus Second-Step Covariates, Transitory Response Error, Persistent Response Error
clear all;
load ../Output/MATLAB_sample; 
global model
model = 14;
itertime = clock;
disp(datestr(itertime,0));
dfile = ['../Output/Model_',int2str(model),'_',datestr(clock,1),'.out'];
diary(dfile);
disp('Model 14')
EstimateRisk(RISK_1993, RISK_2002, RISK_2004, RISK_2006, RISK_2010, RISK_2012, RISK_2014,[XW93 ,ones(N,1)],[XW02 ,ones(N,1)], [XW04 ,ones(N,1)],[XW06, ones(N,1)], ...
    [XW10, zeros(N,1)], [XW12, zeros(N,1)], [XW14, zeros(N,1)]);
diary off;
clear all;

diary('../Output/ImputeRisk.out');

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Impute Proxy Values for Risk Tolerance
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

load KSSsample
global model

%% Imputations from Model 11 %%
load results_final_11
[Etheta_11] = Etheta(b,c92,c94,c98,c00,c02,[X93(:,1),ones(N,1)],[X02(:,1),ones(N,1)],...
	[X04(:,1),zeros(N,1)],[X06(:,1),zeros(N,1)],[X02(:,1),zeros(N,1)]);
[Elntheta_11] = Elntheta(b,c92,c94,c98,c00,c02,[X93(:,1),ones(N,1)],[X02(:,1),ones(N,1)],...
	[X04(:,1),zeros(N,1)],[X06(:,1),zeros(N,1)],[X02(:,1),zeros(N,1)]); 
[Egamma_11]  = Egamma(b,c92,c94,c98,c00,c02,[X93(:,1),ones(N,1)],[X02(:,1),ones(N,1)],...
	[X04(:,1),zeros(N,1)],[X06(:,1),zeros(N,1)],[X02(:,1),zeros(N,1)]);
    se = full(se); b = full(b); X93 = full(X93);
    sigmau = abs(b(3));
    xb_11 = X93(:,1)*b(1);
    mu_11 = mean(xb_11);
    va_11 = var(xb_11)+sigmau^2;
    Vtheta_11  = exp(2*mu_11+va_11)*(exp(va_11)-1);
    Vgamma_11  = exp(-2*mu_11+va_11)*(exp(va_11)-1);
    lambdaP  = Vtheta_11 / var(Etheta_11);
    lambdalnP  = va_11 / var(Elntheta_11);

%% TABLE 6 %%		    
disp('   ');
disp('Table 6. True-to-Proxy Variance Ratio Lambda');
disp('Model 11, Transitory and Persistent Response Error');
info.cnames = strvcat('Log Theta', 'Theta','Gamma');
info.rnames = strvcat(' ','Var. True', 'Var. Proxy','Ratio');
info.fmt='%10.3f';
mprint([va_11,Vtheta_11,Vgamma_11;var(Elntheta_11),var(Etheta_11),var(Egamma_11);lambdalnP,lambdaP,Vgamma_11/var(Egamma_11)],info);    
    
%% Sub-routine with Tables from Model 11 (Main Specification in Paper) %%
Tables_Model_11(b,V);    

%% PSID Imputations for Users Guide %%
%% Distribution from Online PSID Webpage %%
pc96 = [ ]; 
pc96 = [pc96;repmat(1,1741,1)]; 
pc96 = [pc96;repmat(2,1009,1)]; 
pc96 = [pc96;repmat(3,861,1)]; 
pc96 = [pc96;repmat(4,829,1)]; 
pc96 = [pc96;repmat(5,760,1)]; 
pc96 = [pc96;repmat(6,365,1)]; 
PN = size(pc96,1);
[Etheta_PSID]  = Etheta_KSS(b,zeros(PN,1),pc96,zeros(PN,1),zeros(PN,1),zeros(PN,1),ones(PN,2),ones(PN,2),...
    [ones(PN,1),zeros(PN,1)],[ones(PN,1),zeros(PN,1)],[ones(PN,1),zeros(PN,1)]);
[Elntheta_PSID] = Elntheta_KSS(b,zeros(PN,1),pc96,zeros(PN,1),zeros(PN,1),zeros(PN,1),ones(PN,2),ones(PN,2),...
    [ones(PN,1),zeros(PN,1)],[ones(PN,1),zeros(PN,1)],[ones(PN,1),zeros(PN,1)]);
[Egamma_PSID]  = Egamma_KSS(b,zeros(PN,1),pc96,zeros(PN,1),zeros(PN,1),zeros(PN,1),ones(PN,2),ones(PN,2),...
    [ones(PN,1),zeros(PN,1)],[ones(PN,1),zeros(PN,1)],[ones(PN,1),zeros(PN,1)]);

disp(sprintf('Variance of PSID Proxies Log RT = %1.3f RT = %1.3f Gamma = %1.3f', var(Elntheta_PSID), var(Etheta_PSID),var(Egamma_PSID) ));

%% Imputations from Model 12 %%  
load results_final_12
[Etheta_12]  = Etheta_KSS(b,c92,c94,c98,c00,c02,[X93,ones(N,1)],[X02,ones(N,1)],[X04,zeros(N,1)],[X06,zeros(N,1)],[X02,zeros(N,1)]);
[Elntheta_12] = Elntheta_KSS(b,c92,c94,c98,c00,c02,[X93,ones(N,1)],[X02,ones(N,1)],[X04,zeros(N,1)],[X06,zeros(N,1)],[X02,zeros(N,1)]);  
se = full(se); b = full(b); X93 = full(X93);
    K = size(X93,2);    
    sigmau = abs(b(15));
    xb_12 = X93*b(1:K);
    mu_12 = mean(xb_12);
    va_12 = var(xb_12)+sigmau^2;
    Vtheta_12  = exp(2*mu_12+va_12)*(exp(va_12)-1);
   
    X93 = full(X93);
    B = size(b,1);
    g = zeros(B,1);
    g(1:K,1) = mean(X93)';
    se_mu12 = (g'*V*g)^0.5;    
    
    X = X93 - repmat(mean(X93),N,1);
    g = zeros(B,1);
    g(1:K,1) = va_12^-.5*(X'*X)*b(1:K)/N;
    g(K+2) = va_12^-.5*sigmau;
    se_va12 = (g'*V*g)^0.5;     

disp(sprintf('Model 12: Log Risk Tolerance Mean = %1.3f (%1.3f) Std Dev = %1.3f (%1.3f)', mu_12, se_mu12,va_12^.5, se_va12 ));
disp(sprintf('Model 12: Risk Tolerance Mean = %1.3f Std Dev = %1.3f', exp(mu_12 + va_12/2), Vtheta_12^.5 ));

%% Imputations from Model 13 %%    
load results_final_13
[Etheta_13]  = Etheta_KSS(b,c92,c94,c98,c00,c02,[W92 ,ones(N,1)],[W94 ,ones(N,1)],...
    [W98 ,zeros(N,1)],[W00, zeros(N,1)],[W02, zeros(N,1)]);
[Elntheta_13] = Elntheta_KSS(b,c92,c94,c98,c00,c02,[W92 ,ones(N,1)],[W94 ,ones(N,1)],...
    [W98 ,zeros(N,1)],[W00, zeros(N,1)],[W02, zeros(N,1)]);
se = full(se); b = full(b); W92 = full(W92);
    K = size(W92,2);    
    sigmau = abs(b(16));
    xb_13 = W92*b(1:K);
    mu_13 = mean(xb_13);
    va_13 = var(xb_13)+sigmau^2;
    Vtheta_13  = exp(2*mu_13+va_13)*(exp(va_13)-1);
   
    B = size(b,1);
    g = zeros(B,1);
    g(1:K,1) = mean(W92)';
    se_mu13 = (g'*V*g)^0.5;       
    
    X = W92 - repmat(mean(W92),N,1);
    g = zeros(B,1);
    g(1:K,1) = va_13^-.5*(X'*X)*b(1:K)/N;
    g(K+2) = va_13^-.5*sigmau;
    se_va13 = (g'*V*g)^0.5;     

disp(sprintf('Model 13: Log Risk Tolerance Mean = %1.3f (%1.3f) Std Dev = %1.3f (%1.3f)', mu_13, se_mu13,va_13^.5, se_va13 ));
disp(sprintf('Model 13: Risk Tolerance Mean = %1.3f Std Dev = %1.3f', exp(mu_13 + va_13/2), Vtheta_13^.5 ));
    
%% Table R-4 Weighted and Unweighted    
i = find(wgt_1992 >0);
N = size(i,1);
    mu_13u = mean(xb_13(i));
    va_13u = var(xb_13(i))+sigmau^2;
    B = size(b,1);
    
    g = zeros(B,1);
    g(1:K,1) = mean(W92(i,:))';
    se_mu13u = (g'*V*g)^0.5; 

    g = zeros(B,1);
    g(1:K,1) = exp(mu_13u)*mean(W92(i,:))';
    se_md13u = (g'*V*g)^0.5; 

    mn_13u = exp(mu_13u + va_13u/2);
    X = W92(i,:) - repmat(mean(W92(i,:)),N,1);
    g = zeros(B,1);
    g(1:K,1) = mn_13u*mean(W92(i,:))';
    g(1:K,1) = mn_13u*(va_13u^-.5*(X'*X)*b(1:K)/N) + g(1:K,1);
    g(K+2) = mn_13u*va_13u^-.5*sigmau + g(K+2);
    se_mn13u = (g'*V*g)^0.5;
    
    mu_13w = sum(wgt_1992(i).*xb_13(i))/sum(wgt_1992(i));
    
    g = zeros(B,1);
    g(1:K,1) = (sum(repmat(wgt_1992(i),1,K).*W92(i,:))/sum(wgt_1992(i)))';
    se_mu13w = (g'*V*g)^0.5;     
    
    g = zeros(B,1);
    g(1:K,1) = exp(mu_13w)*(sum(repmat(wgt_1992(i),1,K).*W92(i,:))/sum(wgt_1992(i)))';
    se_md13w = (g'*V*g)^0.5; 

    va_13w = sum(wgt_1992(i).*(xb_13(i)-mu_13w).^2)/sum(wgt_1992(i)) + sigmau^2;
    mn_13w = exp(mu_13w+va_13w/2);

    X = W92(i,:) - repmat(sum(repmat(wgt_1992(i),1,K).*W92(i,:))/sum(wgt_1992(i)),N,1);
    g = zeros(B,1);
    g(1:K,1) = mn_13w*(sum(repmat(wgt_1992(i),1,K).*W92(i,:))/sum(wgt_1992(i)))';
    g(1:K,1) = mn_13w*(va_13w^-.5*(X'*X)*b(1:K)/N) + g(1:K,1);
    g(K+2) = mn_13w*va_13w^-.5*sigmau + g(K+2);
    se_mn13w = (g'*V*g)^0.5;    

%% Columns 2,3 of Table R-4 %%
disp('Table R-4: Descriptive Statistics (Weighting Sensitivity Check) Columns 2, 3');
disp('Model 13, Unweighted, Sampling Covariates');
disp(sprintf(' Mean Log(RT) = %1.3f (%1.3f) Median RT = %1.3f (%1.3f) Mean RT = %1.3f (%1.3f)', ...
	mu_13u, se_mu13u, exp(mu_13u), se_md13u, mn_13u, se_mn13u )); 
disp('Model 13, Weighted, Sampling Covariates');
disp(sprintf(' Mean Log(RT) = %1.3f (%1.3f) Median RT = %1.3f (%1.3f) Mean RT = %1.3f (%1.3f)', ...
	mu_13w, se_mu13w, exp(mu_13w), se_md13w, mn_13w, se_mn13w )); 
    
%% Imputations from Model 14 %%
load results_final_14
[Etheta_14]  = Etheta_KSS(b,c92,c94,c98,c00,c02,[XW93,ones(N,1)],[XW02 ,ones(N,1)],...
    [XW04 ,zeros(N,1)],[XW06, zeros(N,1)],[XW02, zeros(N,1)]);
[Elntheta_14] = Elntheta_KSS(b,c92,c94,c98,c00,c02,[XW93,ones(N,1)],[XW02 ,ones(N,1)],...
    [XW04 ,zeros(N,1)],[XW06, zeros(N,1)],[XW02, zeros(N,1)]);
    se = full(se); b = full(b); W92 = full(W92);
    K = size(XW93,2);  
    sigmau = abs(b(24));
    xb_14 = XW93*b(1:K);
    mu_14 = mean(xb_14);
    va_14 = var(xb_14)+sigmau^2;
    Vtheta_14  = exp(2*mu_14+va_14)*(exp(va_14)-1);

disp(sprintf('Model 14: Log Risk Tolerance Mean = %1.3f Std Dev = %1.3f', mu_14, va_14^.5 ));
disp(sprintf('Model 14: Risk Tolerance Mean = %1.3f Std Dev = %1.3f', exp(mu_14 + va_14/2), Vtheta_14^.5 ));

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Second-step: Asset Allocation Application
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% Indicator of Response Category (for first response) %%
risk1 = zeros(N,1);
    index = find(c92==1 | ((c94 == 1 | c94 ==2) & c92 == 0));
    risk1(index,1) = 1;
risk2 = zeros(N,1);
    index = find(c92==2 | (c94 == 3 & c92 == 0));
    risk2(index,1) = 1;
risk3 = zeros(N,1);
    index = find(c92==3 | (c94 == 4 & c92 == 0));
    risk3(index,1) = 1;
risk4 = zeros(N,1);
    index = find(c92==4 | ((c94 == 5 | c94 ==6) & c92 == 0));
    risk4(index,1) = 1;    
  
%% Z: Explanatory Variables -- Created Above %%    
%% Y: Depedent Variable (Share of Financial Assets in Stocks -- Created Above %%

%% Matrices of Second-Step Controls %%
Xv00 = [Etheta_00, Z];
Xv01 = [Etheta_01, Z];
Xv02 = [Etheta_02, Z];
Xv11 = [Etheta_11, Z];
Xv12 = [Etheta_12, Z];
Xdum = [risk2,risk3,risk4,Z];

%% Number of financial respondents in 1992 HRS %%
hh = find(finr == 1);

%% Second-step Sample: Financial respondent, positive financial assets (excludes IRAs) %%
%% Positive total household income %%
i = find(finr == 1 & fwealth_1992 > 0 & ltotinc_1992 > 0 & lfwealth_1992 > 0 );

%% Number of Households in Second-Step Sample %% 
H = size(i,1);

%% Percent of Households Selected %%
disp(sprintf('Pct Households Excluded by Selection Criteria %1.3f', 1-size(i,1)/size(hh,1) ));

%% Summary Stats for Dependent Variable %%
disp(sprintf('Mean Share of Financial Assets in Stocks for Second-Step Sample %1.5f', mean(Y(i)) ));
disp(sprintf('Std. Dev. of Financial Assets in Stocks for Second-Step Sample %1.3f', std(Y(i)) ));

%% Select Matrices of Second-Step Sample %%
Xv00 = Xv00(i,:); Xdum = Xdum(i,:);
Xv01 = Xv01(i,:); Xv02 = Xv02(i,:); 
Xv11 = Xv11(i,:); Xv12 = Xv12(i,:);
Y = Y(i);

%% Compute Lambda Ratio for Second-Step Sample %%
lambda = Vtheta_11 / var(Xv11(:,1));

%% All Variables in Regression - Demeaned %%
Y = Y - repmat(mean(Y),H,1);
%% Second-step Explanatory Variables %%

%% Column 1 %%
disp('Table 7. Column 1: No Control for Risk Tolerance')
info.rnames = strvcat('  ','Male','Gt 16 Yrs Ed','13-16 Yrs Ed','Lt 12 Yrs Ed','Black','Hispanic',...
    'Age / 10','Log Total Income','Log Financial Assets'); 
info.cnames=strvcat('Estimate','S.E.','2.5','97.5','t');
info.fmt='%10.3f';
X = Xv01(:,2:end) - repmat(mean(Xv01(:,2:end)),H,1);
[b,se,R2] = delta_KSS(Y,X,1);
disp(sprintf('R-squared %1.3f', R2));
CI = [b(:,1)-se(:,1)*1.96, b(:,1)+se(:,1)*1.96];
mprint([b,se,CI,b./se],info);  

%% Column 2 %%
disp('Table 7. Column 2: Categorical Control for Risk Tolerance')
info.rnames = strvcat('  ','Category 3','Category 4','Category 5-6',...
    'Male','Gt 16 Yrs Ed','13-16 Yrs Ed','Lt 12 Yrs Ed','Black','Hispanic',...
    'Age / 10','Log Total Income','Log Financial Assets'); 
info.cnames=strvcat('Estimate','S.E.','2.5','97.5','t');
X = Xdum - repmat(mean(Xdum),H,1);
[b,se,R2] = delta_KSS(Y,X,1);
disp(sprintf('R-squared %1.3f', R2));
CI = [b(:,1)-se(:,1)*1.96, b(:,1)+se(:,1)*1.96];
mprint([b,se,CI,b./se],info);  

%% Column 3 %%
disp('Table 7 Column 3: Not Modeling Response Error')
info.rnames = strvcat('  ','Proxy RT (Model 0)','Male','Gt 16 Yrs Ed','13-16 Yrs Ed','Lt 12 Yrs Ed','Black','Hispanic',...
    'Age / 10','Log Total Income','Log Financial Assets');
X = Xv00 - repmat(mean(Xv00),H,1);
[b,se,R2] = delta_KSS(Y,X,1);
disp(sprintf('R-squared %1.3f', R2));
CI = [b(:,1)-se(:,1)*1.96, b(:,1)+se(:,1)*1.96];
mprint([b,se,CI,b./se],info); 

%% Column 4 %%
disp('Table 7 Column 4: Modeling Response Error, OLS')
info.rnames = strvcat('  ','Proxy RT (Model 11)','Male','Gt 16 Yrs Ed','13-16 Yrs Ed','Lt 12 Yrs Ed','Black','Hispanic',...
    'Age / 10','Log Total Income','Log Financial Assets');
X = Xv11 - repmat(mean(Xv11),H,1);
[b,se,R2] = delta_KSS(Y,X,1);
disp(sprintf('R-squared %1.3f', R2));
CI = [b(:,1)-se(:,1)*1.96, b(:,1)+se(:,1)*1.96];
mprint([b,se,CI,b./se],info); 
bOLS_11 = b;
seOLS_11 = se;

%% Column 5 %%
disp('Table 7 Column 5: Modeling Response Error, GMM')
info.rnames = strvcat('  ','Proxy RT (Model 11)','Male','Gt 16 Yrs Ed','13-16 Yrs Ed','Lt 12 Yrs Ed','Black','Hispanic',...
    'Age / 10','Log Total Income','Log Financial Assets');
X = Xv11 - repmat(mean(Xv11),H,1);
[b,se,R2,V1] = delta_KSS(Y,X,lambda);
disp(sprintf('R-squared %1.3f', R2));
disp(sprintf('Lambda Correction Factor %1.3f', lambda));
CI = [b(:,1)-se(:,1)*1.96, b(:,1)+se(:,1)*1.96];
mprint([b,se,CI,b./se],info);  
bGMM_11 = b;
seGMM_11 = se;

%% Column 6 %%
disp('Table 7 Column 6: Modeling Response Error, Application Covariates, OLS')
info.rnames = strvcat('  ','Proxy RT (Model 12)','Male','Gt 16 Yrs Ed','13-16 Yrs Ed','Lt 12 Yrs Ed','Black','Hispanic',...
    'Age / 10','Log Total Income','Log Financial Assets');
X = Xv12 - repmat(mean(Xv12),H,1);
[b,se,R2,V2] = delta_KSS(Y,X,1);
%R-2 Calculation with lambda factor;
N = size(Y,1); Sxx = X' * X / N;
Sxx(1,1) = (Vtheta_12/var(Xv12(:,1)))*Sxx(1,1);
R2 = b'*Sxx*b/(Y'*Y/N);
disp(sprintf('R-squared %1.3f', R2));
disp(sprintf('Lambda Correction Factor %1.3f', (Vtheta_12/var(Xv12(:,1)))));
CI = [b(:,1)-se(:,1)*1.96, b(:,1)+se(:,1)*1.96];
mprint([b,se,CI,b./se],info); 
bOLS_12 = b;
seOLS_12 = se;

save stockreg bOLS_11 bGMM_11 bOLS_12 seOLS_11 seGMM_11 seOLS_12 

diary off;

%% Export HRS Imputations %%
delete('ProxyHRS.out');
diary('ProxyHRS.out');
display('Proxy Values of Risk Preference -- Model 11');
display('Columns: c92, c94, c98, c00, c02, Risk Tol., Risk Aver.');
clear info;
info.fmt = strvcat('%15.0f','%2.0f','%2.0f','%2.0f','%2.0f','%2.0f','%10.3f','%10.3f','%10.1f');
mprint([hhidpn, c92, c94, c98, c00, c02, Elntheta_11, Etheta_11, Egamma_11],info)
diary off;

%% Output Table of Imputed Values %%
ProxyCats
