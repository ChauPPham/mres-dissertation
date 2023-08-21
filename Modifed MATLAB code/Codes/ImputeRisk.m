
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

[ID, INCOME_1993, RISK1_1993, INTERVIEW_MONTH_1993, WKS_WORKED_1993, WKS_WORKED_SPS_1993, RISK2_1993, ...
    EAST_1993, SOUTH_1993, WEST_1993, MARRIED_1993, OTHER_1993, HS_1993, COLLEGE_1993, AGE_1993, ...
    INCOME_2002, RISK1_2002, INTERVIEW_MONTH_2002, WKS_WORKED_2002, WKS_WORKED_SPS_2002, RISK2_2002, ...
    EAST_2002, SOUTH_2002, WEST_2002, MARRIED_2002, OTHER_2002, HS_2002, COLLEGE_2002, AGE_2002, ...
    INCOME_2004, RISK1_2004, INTERVIEW_MONTH_2004, WKS_WORKED_2004, WKS_WORKED_SPS_2004, RISK2_2004, ...
    EAST_2004, SOUTH_2004, WEST_2004, MARRIED_2004, OTHER_2004, HS_2004, COLLEGE_2004, AGE_2004, ...
    INCOME_2006, RISK1_2006, INTERVIEW_MONTH_2006, WKS_WORKED_2006, WKS_WORKED_SPS_2006, RISK2_2006, ...
    EAST_2006, SOUTH_2006, WEST_2006, MARRIED_2006, OTHER_2006, HS_2006, COLLEGE_2006, AGE_2006, ...
    INCOME_2010, RISK1_2010, INTERVIEW_MONTH_2010, WKS_WORKED_2010, WKS_WORKED_SPS_2010, RISK2_2010, ...
    EAST_2010, SOUTH_2010, WEST_2010, MARRIED_2010, OTHER_2010, HS_2010, COLLEGE_2010, AGE_2010, ...
    INCOME_2012, RISK1_2012, INTERVIEW_MONTH_2012, WKS_WORKED_2012, WKS_WORKED_SPS_2012, RISK2_2012, ...
    EAST_2012, SOUTH_2012, WEST_2012, MARRIED_2012, OTHER_2012, HS_2012, COLLEGE_2012, AGE_2012, ...
    INCOME_2014, RISK1_2014, INTERVIEW_MONTH_2014, WKS_WORKED_2014, WKS_WORKED_SPS_2014, RISK2_2014, ...
    EAST_2014, SOUTH_2014, WEST_2014, MARRIED_2014, OTHER_2014, HS_2014, COLLEGE_2014, AGE_2014, ...
    MOM_HGC, DAD_HGC, AFQT_2006, HISPANIC, BLACK, FEMALE, AGE_14] = ...
textread('../Input/MATLAB_INPUT.txt','%u %f %u %u %u %u %u %u %u %u %u %u %u %u %u %f %u %u %u %u %u %u %u %u %u %u %u %u %u %f %u %u %u %u %u %u %u %u %u %u %u %u %u %f %u %u %u %u %u %u %u %u %u %u %u %u %u %f %u %u %u %u %u %u %u %u %u %u %u %u %u %f %u %u %u %u %u %u %u %u %u %u %u %u %u %f %u %u %u %u %u %u %u %u %u %u %u %u %u %u %u %u %u %u %u %u', -1, 'delimiter', '\t', 'emptyvalue', Inf);

N = size(ID,1);

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
        URATE_1993(ii,1) = URATE(aa,1)*100; % Unemployment rate in interview month
    end
end   

%% 2002 NLSY79
for mn = 1:12
ii = find(INTERVIEW_MONTH_2002 == mn);
    if size(ii,1) > 0 
        aa = find(ayear == 2002 & amonth == mn);
        ICS_2002(ii,1) = ICS(aa,1)/10; % Index of Consumer Sentiment / 10 in interview month
        URATE_2002(ii,1) = URATE(aa,1)*100; % Unemployment rate in interview month
    end
end

%% 2004 NLSY79
for mn = 1:12
ii = find(INTERVIEW_MONTH_2004 == mn);
    if size(ii,1) > 0 
        aa = find(ayear == 2004 & amonth == mn);
        ICS_2004(ii,1) = ICS(aa,1)/10; % Index of Consumer Sentiment / 10 in interview month
        URATE_2004(ii,1) = URATE(aa,1)*100; % Unemployment rate in interview month
    end
end

%% 2006 NLSY79
for mn = 1:12
ii = find(INTERVIEW_MONTH_2006 == mn);
    if size(ii,1) > 0 
        aa = find(ayear == 2006 & amonth == mn);
        ICS_2006(ii,1) = ICS(aa,1)/10; % Index of Consumer Sentiment / 10 in interview month
        URATE_2006(ii,1) = URATE(aa,1)*100; % Unemployment rate in interview month
    end
end

%% 2010 NLSY79
for mn = 1:12
ii = find(INTERVIEW_MONTH_2010 == mn);
    if size(ii,1) > 0 
        aa = find(ayear == 2010 & amonth == mn);
        ICS_2010(ii,1) = ICS(aa,1)/10; % Index of Consumer Sentiment / 10 in interview month
        URATE_2010(ii,1) = URATE(aa,1)*100; % Unemployment rate in interview month
    end
end

%% 2012 NLSY79
for mn = 1:12
ii = find(INTERVIEW_MONTH_2012 == mn);
    if size(ii,1) > 0 
        aa = find(ayear == 2012 & amonth == mn);
        ICS_2012(ii,1) = ICS(aa,1)/10; % Index of Consumer Sentiment / 10 in interview month
        URATE_2012(ii,1) = URATE(aa,1)*100; % Unemployment rate in interview month
    end
end

%% 2014 NLSY79
for mn = 1:12
ii = find(INTERVIEW_MONTH_2014 == mn);
    if size(ii,1) > 0 
        aa = find(ayear == 2014 & amonth == mn);
        ICS_2014(ii,1) = ICS(aa,1)/10; % Index of Consumer Sentiment / 10 in interview month
        URATE_2014(ii,1) = URATE(aa,1)*100; % Unemployment rate in interview month
    end
end

%% Variable Matrices for Baseline Estimation %%    
X92 = zeros(N,13); X94 = zeros(N,13); X98 = zeros(N,13); X00 = zeros(N,13); X02 = zeros(N,13);

ii = find(iwyr_1992 > 0);
X92(ii,:) = [ones(size(ii)), black_1992(ii), hispanic_1992(ii),male(ii),dropout(ii), smcoll(ii), pscoll(ii),... 
    age_1992(ii)/10,ltotinc_1992(ii)/10,ztotinc_1992(ii),lfwealth_1992(ii)/10,zfwealth_1992(ii),Urate_1992(ii)];  

ii = find(iwyr_1994 > 0);
X94(ii,:) = [ones(size(ii)), black_1994(ii), hispanic_1994(ii),male(ii),dropout(ii), smcoll(ii), pscoll(ii),... 
    age_1994(ii)/10,ltotinc_1994(ii)/10,ztotinc_1994(ii),lfwealth_1994(ii)/10,zfwealth_1994(ii),Urate_1994(ii)];  

ii = find(iwyr_1998 > 0);
X98(ii,:) = [ones(size(ii)), black_1998(ii), hispanic_1998(ii),male(ii),dropout(ii), smcoll(ii), pscoll(ii),... 
    age_1998(ii)/10,ltotinc_1998(ii)/10,ztotinc_1998(ii), lfwealth_1998(ii)/10,zfwealth_1998(ii),Urate_1998(ii)];  

ii = find(iwyr_2000 > 0);
X00(ii,:) = [ones(size(ii)), black_2000(ii), hispanic_2000(ii),male(ii),dropout(ii), smcoll(ii), pscoll(ii),... 
    age_2000(ii)/10,ltotinc_2000(ii)/10,ztotinc_2000(ii),lfwealth_2000(ii)/10,zfwealth_2000(ii),Urate_2000(ii)];  

ii = find(iwyr_2002 > 0);
X02(ii,:) = [ones(size(ii)), black_2002(ii), hispanic_2002(ii),male(ii),dropout(ii), smcoll(ii), pscoll(ii),... 
    age_2002(ii)/10,ltotinc_2002(ii)/10,ztotinc_2002(ii),lfwealth_2002(ii)/10,zfwealth_2002(ii),Urate_2002(ii)];   

X92 = sparse(X92); X94 = sparse(X94); X98 = sparse(X98); X00 = sparse(X00); X02 = sparse(X02);

%% Variable Matrices for Sampling Sensitivity Check %%
W92 = zeros(N,14); W94 = zeros(N,14); W98 = zeros(N,14); W00 = zeros(N,14); W02 = zeros(N,14);

ii = find(iwyr_1992 > 0);
    W92(ii,:) = [ones(size(ii)), bc3141(ii),bc4280(ii),black_1992(ii), hispanic_1992(ii),...
        couple_1992(ii),sbc3141_1992(ii),sbc4280_1992(ii),south_1992(ii), east_1992(ii), west_1992(ii),...
        age_1992(ii)/10,sage_1992(ii)/10,Urate_1992(ii)];  

ii = find(iwyr_1994 > 0);
    W94(ii,:) = [ones(size(ii)), bc3141(ii),bc4280(ii),black_1994(ii), hispanic_1994(ii),...
        couple_1994(ii),sbc3141_1994(ii),sbc4280_1994(ii),south_1994(ii), east_1994(ii), west_1994(ii),...
        age_1994(ii)/10,sage_1994(ii)/10,Urate_1994(ii)];    

ii = find(iwyr_1998 > 0);
    W98(ii,:) = [ones(size(ii)), bc3141(ii),bc4280(ii),black_1998(ii), hispanic_1998(ii),...
        couple_1998(ii),sbc3141_1998(ii),sbc4280_1998(ii),south_1998(ii), east_1998(ii), west_1998(ii),...
        age_1998(ii)/10,sage_1998(ii)/10,Urate_1998(ii)];    

ii = find(iwyr_2000 > 0);
    W00(ii,:) = [ones(size(ii)), bc3141(ii),bc4280(ii),black_2000(ii), hispanic_2000(ii),...
        couple_2000(ii),sbc3141_2000(ii),sbc4280_2000(ii),south_2000(ii), east_2000(ii), west_2000(ii),...
        age_2000(ii)/10,sage_2000(ii)/10,Urate_2000(ii)];    

ii = find(iwyr_2002 > 0);
    W02(ii,:) = [ones(size(ii)), bc3141(ii),bc4280(ii),black_2002(ii), hispanic_2002(ii),...
        couple_2002(ii),sbc3141_2002(ii),sbc4280_2002(ii),south_2002(ii), east_2002(ii), west_2002(ii),...
        age_2002(ii)/10,sage_2002(ii)/10,Urate_2002(ii)];   

W92 = sparse(W92); W94 = sparse(W94); W98 = sparse(W98); W00 = sparse(W00); W02 = sparse(W02); 

%% Variable Matrices for Sampling Sensitivity Check (Plus Second-Step Covariates) %%

XW92 = repmat(0,N,22); XW94 = repmat(0,N,22); XW98 = repmat(0,N,22); XW00 = repmat(0,N,22); XW02 = repmat(0,N,22);

ii = find(iwyr_1992 > 0);
XW92(ii,:) = [W92(ii,:),male(ii),dropout(ii), smcoll(ii), pscoll(ii),... 
     ltotinc_1992(ii)/10,ztotinc_1992(ii),lfwealth_1992(ii)/10,zfwealth_1992(ii)];  

ii = find(iwyr_1994 > 0);
XW94(ii,:) = [W94(ii,:),male(ii),dropout(ii), smcoll(ii), pscoll(ii),... 
     ltotinc_1994(ii)/10,ztotinc_1994(ii),lfwealth_1994(ii)/10,zfwealth_1994(ii) ];  

ii = find(iwyr_1998 > 0);
XW98(ii,:) = [W98(ii,:),male(ii),dropout(ii), smcoll(ii), pscoll(ii),... 
     ltotinc_1998(ii)/10,ztotinc_1998(ii), lfwealth_1998(ii)/10,zfwealth_1998(ii) ];  

ii = find(iwyr_2000 > 0);
XW00(ii,:) = [W00(ii,:),male(ii),dropout(ii), smcoll(ii), pscoll(ii),... 
     ltotinc_2000(ii)/10,ztotinc_2000(ii),lfwealth_2000(ii)/10,zfwealth_2000(ii) ];  

ii = find(iwyr_2002 > 0);
XW02(ii,:) = [W02(ii,:),male(ii),dropout(ii), smcoll(ii), pscoll(ii),... 
     ltotinc_2002(ii)/10,ztotinc_2002(ii),lfwealth_2002(ii)/10,zfwealth_2002(ii)];   

XW92 = sparse(XW92); XW94 = sparse(XW94); XW98 = sparse(XW98); XW00 = sparse(XW00); XW02 = sparse(XW02);

%% First Gamble Response for Model 0 %%
c92_1 = c92;
c94_1 = c94;
i = find(c92 > 0 & c94 > 0);
	c94_1(i) = 0;

%% Second-step Explanatory Variables %%
Z = [male, pscoll, smcoll, dropout, black_1992, hispanic_1992,... 
           age_1992/10,ltotinc_1992,lfwealth_1992];      

% Dependent Variable Share of Financial Assets held in Stocks
Y = stocksh_1992;

%% Save KSS Matlab Data Set %%
save KSSsample hhidpn X* Z W* Y finr c92* c94* c98 c00 c02 fwealth_1992 ltotinc_1992 lfwealth_1992 original biasfree N wgt*
diary off;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% First-step: MLE with Gamble Responses
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% MODEL 0: No Covariates, No Transitory Response Error, No Persistent Response Error
clear all;
load KSSsample;
global model 
model = 0;
itertime = clock;
disp(datestr(itertime,0));
dfile = ['Model_',int2str(model),'_',datestr(clock,1),'.out'];
diary(dfile);
disp('Model 0')
EstimateRisk_KSS(c92_1,c94_1,zeros(N,1),zeros(N,1),zeros(N,1),X92(:,1),X94(:,1),X98(:,1),X00(:,1),X02(:,1));
diary off;

%% MODEL 1: No Covariates, Transitory Response Error, No Persistent Response Error
clear all;
load KSSsample;
global model 
model = 1;
itertime = clock;
disp(datestr(itertime,0));
dfile = ['Model_',int2str(model),'_',datestr(clock,1),'.out'];
diary(dfile);
disp('Model 1')
EstimateRisk_KSS(c92,c94,c98,c00,c02,X92(:,1),X94(:,1),X98(:,1),X00(:,1),X02(:,1));
diary off;

%% MODEL 1: Second-Step Covariates, Transitory Response Error, No Persistent Response Error
clear all;
load KSSsample;
global model 
model = 2;
itertime = clock;
disp(datestr(itertime,0));
dfile = ['Model_',int2str(model),'_',datestr(clock,1),'.out'];
diary(dfile);
disp('Model 2')
EstimateRisk_KSS(c92,c94,c98,c00,c02,X92,X94,X98,X00,X02);
diary off;

%% MODEL 11: No Covariates, Transitory Response Error, Persistent Response Error
clear all;
load KSSsample;
global model 
model = 11;
itertime = clock;
disp(datestr(itertime,0));
dfile = ['Model_',int2str(model),'_',datestr(clock,1),'.out'];
diary(dfile);
disp('Model 11')
EstimateRisk_KSS(c92,c94,c98,c00,c02,[X92(:,1),ones(N,1)],[X94(:,1),ones(N,1)],[X98(:,1),zeros(N,1)],[X00(:,1),zeros(N,1)],[X02(:,1),zeros(N,1)]);
diary off;

%% MODEL 12: Second-Step Covariates, Transitory Response Error, Persistent Response Error
clear all;
load KSSsample; 
global model
model = 12;
itertime = clock;
disp(datestr(itertime,0));
dfile = ['Model_',int2str(model),'_',datestr(clock,1),'.out'];
diary(dfile);
disp('Model 12')
EstimateRisk_KSS(c92,c94,c98,c00,c02,[X92 ,ones(N,1)],[X94 ,ones(N,1)],...
    [X98 ,zeros(N,1)],[X00, zeros(N,1)],[X02, zeros(N,1)]);
diary off;

%% MODEL 13: Sampling Covariates, Transitory Response Error, Persistent Response Error
clear all;
load KSSsample; 
global model
model = 13;
itertime = clock;
disp(datestr(itertime,0));
dfile = ['Model_',int2str(model),'_',datestr(clock,1),'.out'];
diary(dfile);
disp('Model 13')
EstimateRisk_KSS(c92,c94,c98,c00,c02,[W92 ,ones(N,1)],[W94 ,ones(N,1)],...
    [W98 ,zeros(N,1)],[W00, zeros(N,1)],[W02, zeros(N,1)]);
diary off;

%% MODEL 14: Sampling plus Second-Step Covariates, Transitory Response Error, Persistent Response Error
clear all;
load KSSsample; 
global model
model = 14;
itertime = clock;
disp(datestr(itertime,0));
dfile = ['Model_',int2str(model),'_',datestr(clock,1),'.out'];
diary(dfile);
disp('Model 14')
EstimateRisk_KSS(c92,c94,c98,c00,c02,[XW92,ones(N,1)],[XW94 ,ones(N,1)],...
    [XW98 ,zeros(N,1)],[XW00, zeros(N,1)],[XW02, zeros(N,1)]);
diary off;
clear all;

diary('ImputeRisk_KSS.out');

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Impute Proxy Values for Risk Tolerance
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

load KSSsample
global model

%% Imputations from Model 0 %%
load results_final_00
[Elntheta_00] = Elntheta_KSS(b,c92_1,c94_1,zeros(N,1),zeros(N,1),zeros(N,1),X92(:,1),X94(:,1),X98(:,1),X00(:,1),X02(:,1));
[Etheta_00] = Etheta_KSS(b,c92_1,c94_1,zeros(N,1),zeros(N,1),zeros(N,1),X92(:,1),X94(:,1),X98(:,1),X00(:,1),X02(:,1));

i = find(c92==1);
    h0_1 = unique(Elntheta_00(i));
i = find(c92==2);
    h0_2 = unique(Elntheta_00(i));
i = find(c92==3);
    h0_3 = unique(Elntheta_00(i));
i = find(c92==4);
    h0_4 = unique(Elntheta_00(i));
disp('Proxy Values Log Risk Tolerance --- Model 0');
    disp([h0_1,h0_2,h0_3,h0_4]);

i = find(c92==1);
    h0_1 = unique(Etheta_00(i));
i = find(c92==2);
    h0_2 = unique(Etheta_00(i));
i = find(c92==3);
    h0_3 = unique(Etheta_00(i));
i = find(c92==4);
    h0_4 = unique(Etheta_00(i));
disp('Proxy Values Log Risk Tolerance --- Model 0');
    disp([h0_1,h0_2,h0_3,h0_4] );
      
%% Imputations from Model 1 %%
load results_final_01
[Elntheta_01] = Elntheta_KSS(b,c92,c94,c98,c00,c02,X92(:,1),X94(:,1),X98(:,1),X00(:,1),X02(:,1));
[Etheta_01] = Etheta_KSS(b,c92,c94,c98,c00,c02,X92(:,1),X94(:,1),X98(:,1),X00(:,1),X02(:,1));
    se = full(se); b = full(b); X92 = full(X92);
    sigmau = abs(b(2));
    xb_01 = X92(:,1)*b(1);
    mu_01 = mean(xb_01);
    va_01 = var(xb_01)+sigmau^2;
    Vtheta_01  = exp(2*mu_01+va_01)*(exp(va_01)-1);
    lambda  = Vtheta_01 / var(Etheta_01);
    
disp(sprintf('Model 1: Log Risk Tolerance Mean = %1.3f (%1.3f) Std Dev = %1.3f (%1.3f)', mu_01, se(1), va_01^.5, se(2) ));
disp(sprintf('Model 1: Risk Tolerance Mean = %1.3f Std Dev = %1.3f', exp(mu_01 + va_01/2), Vtheta_01^.5 ));

%% Imputations from Model 2 %%
load results_final_02
[Elntheta_02] = Elntheta_KSS(b,c92,c94,c98,c00,c02,X92,X94,X98,X00,X02);
[Etheta_02] = Etheta_KSS(b,c92,c94,c98,c00,c02,X92,X94,X98,X00,X02);
    se = full(se); b = full(b); X92 = full(X92);
    K = size(X92,2);
    N = size(X92,1);
    sigmau = abs(b(14));
    xb_02 = X92(:,1:K)*b(1:K);
    mu_02 = mean(xb_02);
    va_02 = var(xb_02)+sigmau^2;
    ez_02 = b(end);
    Vtheta_02  = exp(2*mu_02+va_02)*(exp(va_02)-1);
    
    X92 = full(X92);
    B = size(b,1);
    g = zeros(B,1);
    g(1:K,1) = mean(X92)';
    se_mu02 = (g'*V*g)^0.5;    
    
    X = X92 - repmat(mean(X92),N,1);
    g = zeros(B,1);
    g(1:K,1) = va_02^-.5*(X'*X)*b(1:K)/N;
    g(K+1) = va_02^-.5*sigmau;
    se_va02 = (g'*V*g)^0.5; 

disp(sprintf('Model 2: Log Risk Tolerance Mean = %1.3f (%1.3f) Std Dev = %1.3f (%1.3f)', mu_02, se_mu02,va_02, se_va02 ));
disp(sprintf('Model 2: Risk Tolerance Mean = %1.3f Std Dev = %1.3f', exp(mu_02 + va_02/2), Vtheta_02^.5 ));

%% Imputations from Model 11 %%
load results_final_11
[Etheta_11] = Etheta_KSS(b,c92,c94,c98,c00,c02,[X92(:,1),ones(N,1)],[X94(:,1),ones(N,1)],...
	[X98(:,1),zeros(N,1)],[X00(:,1),zeros(N,1)],[X02(:,1),zeros(N,1)]);
[Elntheta_11] = Elntheta_KSS(b,c92,c94,c98,c00,c02,[X92(:,1),ones(N,1)],[X94(:,1),ones(N,1)],...
	[X98(:,1),zeros(N,1)],[X00(:,1),zeros(N,1)],[X02(:,1),zeros(N,1)]); 
[Egamma_11]  = Egamma_KSS(b,c92,c94,c98,c00,c02,[X92(:,1),ones(N,1)],[X94(:,1),ones(N,1)],...
	[X98(:,1),zeros(N,1)],[X00(:,1),zeros(N,1)],[X02(:,1),zeros(N,1)]);
    se = full(se); b = full(b); X92 = full(X92);
    sigmau = abs(b(3));
    xb_11 = X92(:,1)*b(1);
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
[Etheta_12]  = Etheta_KSS(b,c92,c94,c98,c00,c02,[X92,ones(N,1)],[X94,ones(N,1)],[X98,zeros(N,1)],[X00,zeros(N,1)],[X02,zeros(N,1)]);
[Elntheta_12] = Elntheta_KSS(b,c92,c94,c98,c00,c02,[X92,ones(N,1)],[X94,ones(N,1)],[X98,zeros(N,1)],[X00,zeros(N,1)],[X02,zeros(N,1)]);  
se = full(se); b = full(b); X92 = full(X92);
    K = size(X92,2);    
    sigmau = abs(b(15));
    xb_12 = X92*b(1:K);
    mu_12 = mean(xb_12);
    va_12 = var(xb_12)+sigmau^2;
    Vtheta_12  = exp(2*mu_12+va_12)*(exp(va_12)-1);
   
    X92 = full(X92);
    B = size(b,1);
    g = zeros(B,1);
    g(1:K,1) = mean(X92)';
    se_mu12 = (g'*V*g)^0.5;    
    
    X = X92 - repmat(mean(X92),N,1);
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
[Etheta_14]  = Etheta_KSS(b,c92,c94,c98,c00,c02,[XW92,ones(N,1)],[XW94 ,ones(N,1)],...
    [XW98 ,zeros(N,1)],[XW00, zeros(N,1)],[XW02, zeros(N,1)]);
[Elntheta_14] = Elntheta_KSS(b,c92,c94,c98,c00,c02,[XW92,ones(N,1)],[XW94 ,ones(N,1)],...
    [XW98 ,zeros(N,1)],[XW00, zeros(N,1)],[XW02, zeros(N,1)]);
    se = full(se); b = full(b); W92 = full(W92);
    K = size(XW92,2);  
    sigmau = abs(b(24));
    xb_14 = XW92*b(1:K);
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
