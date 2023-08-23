function EstimateRisk(c93,c02,c04,c06,c10,c12,c14,X93,X02,X04,X06,X10,X12,X14)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% EstimateRisk.m
% First-Step MLE
% Based on EstimateRisk_KSS BY Claudia R. Sahm (claudia.r.sahm@frb.gov)
%
% Author: Chau Pham (chau.pham.22@ucl.ac.uk)
% Updated August 22, 2023
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

global cpt_old cpt_new model  

N = size(X93,1);
maxit = 200;
tol = 1.0e-6; 

%% Compute Risk Tolerance Cutoffs for Risk Categories %%
dfrac = 1 - [1/5,1/3,1/2]; %(1 - downside risk) old series 
dfrac_new = 1 - [0.05, 0.1, 0.15];   %(1 - downside risk) new series

cutoff_old = zeros(1,size(dfrac,2));
for j = 1:size(dfrac,2)
    gamma = 5; % Initial guess for coefficient of relative risk aversion;
    for it=1:maxit  % Newton Rootfinder;  
        [fval,fjac] = dutility_old(gamma,dfrac(1,j));
        gamma = gamma - fjac\fval; 
        if norm(fval) < tol, break, end 
    end
    cutoff_old(1,j) = gamma.^-1; % Risk tolerance (Inverse of Risk Aversion);
end
cpt_old = [-1.0e+77;log(cutoff_old)';1.0e+77]; % old bounds 

cutoff_new = zeros(1,size(dfrac_new,2));
for j = 1:size(dfrac_new,2)
    gamma = 5; % Initial guess for coefficient of relative risk aversion;
    for it=1:maxit  % Newton Rootfinder;  
        [fval,fjac] = dutility_new(gamma, dfrac_new(1,j));
        gamma = gamma - fjac\fval; 
        if norm(fval) < tol, break, end 
    end
    cutoff_new(1,j) = gamma.^-1; % Risk tolerance (Inverse of Risk Aversion);
end
cpt_new = [-1.0e+77; log(cutoff_new)'; 1.0e+77]; % new bounds

tic;

% Initial parameter guess;
if model == 11   
        b = zeros(7,1);
        b(1,1) = -0.051; % Constant         
        b(2,1) =  0.114; % SQB
        b(3,1) =  0.894; % True Std Dev
        b(4,1) =  1.141; % Persistent Original
        b(5,1) = -0.037; % Persistent SQB-Free (imprecisely estimated)
        b(6,1) =  1.304; % Transitory Error Original        
        b(7,1) =  2.021; % Transitory Error SQB-Free              
elseif model == 12   
        b = zeros(19,1);
        b(1,1) =  -1.943; % Constant         
        b(2,1) =  -0.091; % Black
        b(3,1) =  -0.122; % Hispanic 
        b(4,1) =   0.285; % Female
        b(5,1) =   0.107; % High school
        b(6,1) =  -0.161; % Some College
        b(7,1) =   0.171; % Age/10  
        b(8,1) =   0.615; % Log Income/10  
        b(9,1) =   0.617; % Zero Income   
        b(10,1) =  0.026; % # weeks worked in 2001/10       
        b(11,1) =  0.010; % # weeks spouse worked in 2001/10
        b(12,1) = -0.028; % Unemployment Rate  
        b(13,1) =  0.058; % ICS
        b(14,1) =  0.065; % SQB
        b(15,1) = -0.876; % True Std Dev
        b(16,1) =  0.732; % Persistent Original
        b(17,1) = -0.079; % Persistent SQB-Free
        b(18,1) =  1.373; % Transitory Error Original        
        b(19,1) =  2.039; % Transitory Error SQB-Free  
elseif model == 13  
        b = zeros(21,1);
        b(1,1) =  -0.765; % Constant
        b(2,1) =  -0.094; % Black
        b(3,1) =  -0.119; % Hispanic
        b(4,1) =   0.018; % East
        b(5,1) =  -0.029; % South   
        b(6,1) =  -0.150; % West
        b(7,1) =   0.372; % Married (spouse present)
        b(8,1) =   0.221; % Other marital status
        b(9,1) =   0.138; % Age/10 
        b(10,1) = -0.072; % Unemployment rate
        b(11,1) =  0.089; % ICS      
        b(12,1) =  0.003; % Mother's years of schooling   
        b(13,1) = -0.012; % Father's years of schooling  
        b(14,1) =  0.030; % Living with both biological parents at age 14?
        b(15,1) = -0.014; % AFQT score in 1981 (2006 version)
        b(16,1) = -0.136; % SQB
        b(17,1) =  0.852; % True Std Dev
        b(18,1) = -0.051; % Persistent Original (imprecisely estimated)
        b(19,1) =  0.492; % Persistent SQB-Free
        b(20,1) =  1.430; % Transitory Error Original        
        b(21,1) =  1.941; % Transitory Error SQB-Free         
 elseif model == 14  
        b = zeros(28,1);
        b(1,1) =  -1.198; % Constant
        b(2,1) =  -0.086; % Black
        b(3,1) =  -0.109; % Hispanic
        b(4,1) =   0.021; % East
        b(5,1) =  -0.029; % South   
        b(6,1) =  -0.147; % West
        b(7,1) =   0.341; % Married (spouse present)
        b(8,1) =   0.177; % Other marital status
        b(9,1) =   0.150; % Age 
        b(10,1) = -0.065; % Unemployment rate
        b(11,1) =  0.079; % ICS      
        b(12,1) =  0.002; % Mother's years of schooling   
        b(13,1) = -0.010; % Father's years of schooling  
        b(14,1) =  0.029; % Living with both biological parents at age 14?
        b(15,1) = -0.008; % AFQT score in 1981 (2006 version)
        b(16,1) =  0.267; % Female
        b(17,1) =  0.127; % High school
        b(18,1) = -0.083; % College 
        b(19,1) =  0.170; % Log Income / 10 
        b(20,1) =  0.154; % Zero income
        b(21,1) =  0.005; % # weeks worked in previous year        
        b(22,1) = -0.002; % # weeks spouse worked in previous year       
        b(23,1) = -0.090; % SQB
        b(24,1) = -0.839; % True Std Dev
        b(25,1) =  0.051; % Persistent Original
        b(26,1) =  0.485; % Persistent SQB-Free
        b(27,1) =  1.431; % Transitory Error Original        
        b(28,1) =  1.956; % Transitory Error SQB-Free               
end

 info.cnames = strvcat('estimate','t-stat','step');
    info.fmt=strvcat('%15.3f','%15.3f','%15.6f');
     
        if model == 11
            info.rnames = strvcat(' ','Constant','Status Quo Bias','Std Dev',...
		'Original Persistent Std Dev','SQB-Free Persistent Std Dev',...
		'Original Transitory Std Dev','SQB-Free Transitory Std Dev');   
        elseif model == 12
            info.rnames = strvcat(' ','Constant','Black','Hispanic','Female',...
		'High school','College','Age','Log income',...
		'Zero income', '# weeks worked last year','# weeks spouse worked last year',...
		'Unemployment rate','ICS','Status Quo Bias','Std Dev',...
		'Original Persistent Std Dev','SQB-Free Persistent Std Dev',...
		'Original Transitory Std Dev','SQB-Free Transitory Std Dev');   
        elseif model == 13
            info.rnames = strvcat(' ','Constant','Black','Hispanic',...
		'East','South','West','Married (spouse present)','Other marital status',...
                'Age/10','Unemployment rate','ICS',"Mother's years of schooling","Father's years of schooling",...
                'Living with both biological parents at 14?', 'AFQT score (2006 version)', 'Status Quo Bias','Std Dev',...
		'Original Persistent Std Dev','SQB-Free Persistent Std Dev',...
		'Original Transitory Std Dev','SQB-Free Transitory Std Dev');  
        elseif model == 14
            info.rnames = strvcat(' ','Constant','Black','Hispanic',...
		'East','South','West','Married (spouse present)','Other marital status',...
                'Age/10','Unemployment rate','ICS',"Mother's years of schooling","Father's years of schooling",...
                'Living with both biological parents at 14?','AFQT score (2006 version)',...
                'Female', 'High school', 'College','Log income/10', 'Zero income', '# weeks worked in previous year',...  
                '# weeks spouse worked in previous year', 'Status Quo Bias','Std Dev',...
		'Original Persistent Std Dev','SQB-Free Persistent Std Dev',...
		'Original Transitory Std Dev','SQB-Free Transitory Std Dev');               
        end
    iter = 0;
    err = 1;
    
    % Find parameter values which maximize the
    % log-likelihood of the responses
    maxit = 50;
    lik = zeros(N,1);
    si = zeros(N,size(b,1));
    si = sparse(si);
    while (iter < maxit) && err >= tol 
        lik = likelihood(b,c93,c02,c04,c06,c10,c12,c14,X93,X02,X04,X06,X10,X12,X14);
        si = fdjac('likelihood',b,c93,c02,c04,c06,c10,c12,c14,X93,X02,X04,X06,X10,X12,X14);
        
        L = sum(lik);
        d = (si'*si)\si'*ones(N,1);

        b = b + d;
        err = abs(max(max(d)));
        
        iter = iter + 1;
        sumsi = sum(si);    
        V = inv(si'*si);
        se = diag(V).^.5;
        err=full(err);
        fprintf('Error at iteration %1.0f = %1.2e\n', iter,err );
       
        itertime = clock;
        disp(datestr(itertime,0));
        mprint([b,b./se,d],info)
        fprintf('Log-likelihood %10.1f\n', L);
      
        save ../Output/results_im b iter se err sumsi d lik si L  N model itertime ;
    end    

    L = sum(lik);
    
    %% Standard errors of estimates
    V = inv(si'*si);
    se = diag(V).^.5;
        
    if model == 0 
        save results_final_00 b V se L iter err N itertime sumsi model;      
    elseif model == 1 
        save results_final_01 b V se L iter err N itertime sumsi model;                 
    elseif model == 2
        save results_final_02 b V se L iter err N itertime sumsi model;                 
    elseif model == 11 
        save results_final_11 b V se L iter err N itertime sumsi model;                 
    elseif model == 12
        save results_final_12 b V se L iter err N itertime sumsi model;  
    elseif model == 13
        save results_final_13 b V se L iter err N itertime sumsi model;        
    elseif model == 14
        save results_final_14 b V se L iter err N itertime sumsi model;          
    end
    
    fprintf('Estimates of Model %1.1f\n', model );
    disp(datestr(itertime,0))
    fprintf('Sample size %1.0f\n', N );
    fprintf('Number of iterations = %1.0f\n', iter );
    err=full(err);
    fprintf('Error at last iteration = %1.2e\n', err ); 
        
    info.cnames = strvcat('estimate', 'std. error','t-stat');
    info.fmt='%15.3f';
    
    mprint([b,se,b./se],info)
    fprintf('Log-likelihood %10.1f\n', L );





