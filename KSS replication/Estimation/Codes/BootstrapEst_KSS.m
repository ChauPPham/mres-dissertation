%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% BootstrapEst_KSS.m
% Combines the bootstrap output to
% form the bootstap standard errors for Table 7
% Updated July 26, 2007
% Claudia R. Sahm (claudia.r.sahm@frb.gov)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

delete('Bootstrap_KSS.out')
diary('Bootstrap_KSS.out');

B = 199;
load stockreg.mat;

bs_bOLS_11 = zeros(B, size(bOLS_11,1));
bs_bGMM_11 = zeros(B, size(bGMM_11,1));
bs_bOLS_12 = zeros(B, size(bOLS_12,1));

%% Load in Bootstrap Results %%;
for i = 1:B
	sfile = ['stockreg_',int2str(i)];
	load(sfile);
	bs_bOLS_11(i,:) = bOLS_11';
    bs_bGMM_11(i,:) = bGMM_11';
    bs_bOLS_12(i,:) = bOLS_12';   
end

load stockreg.mat;

tbs_ols_11 = (bs_bOLS_11(:,1) - repmat(bOLS_11(1,1),B,1) )./repmat(seOLS_11(1,1),B,1);
tbs_gmm_11 = (bs_bGMM_11(:,1) - repmat(bGMM_11(1,1),B,1) )./repmat(seGMM_11(1,1),B,1);
tbs_ols_12 = (bs_bOLS_12(:,1) - repmat(bOLS_12(1,1),B,1) )./repmat(seOLS_12(1,1),B,1);

bsbar_ols_11 = mean(bs_bOLS_11(:,1));
bsse_ols_11 = std(bs_bOLS_11(:,1) - repmat(bOLS_11(1,1),B,1) );

tbs_ols_11 = sort(tbs_ols_11);
tcrit025_ols_11 = tbs_ols_11(0.025*(B+1));
tcrit975_ols_11 = tbs_ols_11(0.975*(B+1));
clb_ols_11 = bOLS_11(1,1) - tcrit975_ols_11.*seOLS_11(1,1);
cub_ols_11 = bOLS_11(1,1) - tcrit025_ols_11.*seOLS_11(1,1);

tbss_ols_11 = sort(abs(tbs_ols_11)); % Sort t-stats
tcrit950_ols_11 = (tbss_ols_11(0.95*(B+1),:)); 
sclb_ols_11 = bOLS_11(1,1) - tcrit950_ols_11.*seOLS_11(1,1);
scub_ols_11 = bOLS_11(1,1) + tcrit950_ols_11.*seOLS_11(1,1);

bsbar_gmm_11 = mean(bs_bGMM_11(:,1));
bsse_gmm_11 = std(bs_bGMM_11(:,1) - repmat(bGMM_11(1,1),B,1) );

tbs_gmm_11 = sort(tbs_gmm_11);
tcrit025_gmm_11 = tbs_gmm_11(0.025*(B+1));
tcrit975_gmm_11 = tbs_gmm_11(0.975*(B+1));
clb_gmm_11 = bGMM_11(1,1) - tcrit975_gmm_11.*seGMM_11(1,1);
cub_gmm_11 = bGMM_11(1,1) - tcrit025_gmm_11.*seGMM_11(1,1);

tbss_gmm_11 = sort(abs(tbs_gmm_11)); % Sort t-stats
tcrit950_gmm_11 = (tbss_gmm_11(0.95*(B+1),:)); 
sclb_gmm_11 = bGMM_11(1,1) - tcrit950_gmm_11.*seGMM_11(1,1);
scub_gmm_11 = bGMM_11(1,1) + tcrit950_gmm_11.*seGMM_11(1,1);


bsbar_ols_12 = mean(bs_bOLS_12(:,1));
bsse_ols_12 = std(bs_bOLS_12(:,1) - repmat(bOLS_12(1,1),B,1) );

tbs_ols_12 = sort(tbs_ols_12);
tcrit025_ols_12 = tbs_ols_12(0.025*(B+1));
tcrit975_ols_12 = tbs_ols_12(0.975*(B+1));
clb_ols_12 = bOLS_12(1,1) - tcrit975_ols_12.*seOLS_12(1,1);
cub_ols_12 = bOLS_12(1,1) - tcrit025_ols_12.*seOLS_12(1,1);

tbss_ols_12 = sort(abs(tbs_ols_11)); % Sort t-stats
tcrit950_ols_12 = (tbss_ols_12(0.95*(B+1),:)); 
sclb_ols_12 = bOLS_12(1,1) - tcrit950_ols_12.*seOLS_12(1,1);
scub_ols_12 = bOLS_12(1,1) + tcrit950_ols_12.*seOLS_12(1,1);

% OLS Model 11
disp('Bootstrap - OLS - Model 11')
disp('Modeling Status Quo Bias, Persistent and Transitory Response Errors')
disp('Compare Table 7 - Column 4')
info.cnames=strvcat('Estimate','As SE','As t', 'Bs Mean','Bs SE','LB','UB','Sym LB','Sym UB');
info.rnames = strvcat('  ','Proxy '); 
info.fmt = '%1.3f';
mprint([bOLS_11(1,1), seOLS_11(1,1), bOLS_11(1,1)./seOLS_11(1,1),...
        bsbar_ols_11,bsse_ols_11,clb_ols_11,cub_ols_11,sclb_ols_11,scub_ols_11],info);  

% GMM Model 11
disp('Bootstrap - GMM - Model 11')
disp('Modeling Status Quo Bias, Persistent and Transitory Response Errors')
disp('Compare Table 7 - Column 5')
mprint([bGMM_11(1,1), seGMM_11(1,1), bGMM_11(1,1)./seGMM_11(1,1),...
        bsbar_gmm_11,bsse_gmm_11,clb_gmm_11,cub_gmm_11,sclb_gmm_11,scub_gmm_11],info);   

% OLS Model 12
disp('Bootstrap - GMM - Model 11')
disp('Modeling Status Quo Bias, Persistent and Transitory Response Errors')
disp('Compare Table 7 - Column 6')
mprint([bOLS_12(1,1), seOLS_12(1,1), bOLS_12(1,1)./seOLS_12(1,1),...
        bsbar_ols_12,bsse_ols_12,clb_ols_12,cub_ols_12,sclb_ols_12,scub_ols_12],info);   

diary off;
