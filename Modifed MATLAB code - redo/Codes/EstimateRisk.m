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
        b(1,1) = -0.055; % Constant         
        b(2,1) =  0.105; % SQB
        b(3,1) =  0.848; % True Std Dev
        b(4,1) =  0.348; % Persistent Original
        b(5,1) = -0.520; % Persistent SQB-Free (imprecisely estimated)
        b(6,1) =  1.486; % Transitory Error Original        
        b(7,1) =  2.176; % Transitory Error SQB-Free              
elseif model == 12   
        b = zeros(25,1);
        b(1,1) =  -2.150; % Constant         
        b(2,1) =  -0.066; % Black
        b(3,1) =  -0.121; % Hispanic 
        b(4,1) =   0.266; % Female
        b(5,1) =   0.144; % DROPOUT
        b(6,1) =   0.244; % High school
        b(7,1) =  -0.027; % Some College
        b(8,1) =   0.196; % Age/10  
        b(9,1) =   0.671; % Log Income/10  
        b(10,1) =  0.679; % Zero Income   
        b(11,1) =  0.029; % # weeks worked/10       
        b(12,1) = -0.005; % # weeks spouse worked/10
        b(13,1) = -0.035; % Unemployment Rate  
        b(14,1) =  0.068; % ICS
        b(15,1) = -0.084; % INDICATOR FOR MISSING WEEKS WORKED OF SPOUSE
        b(16,1) = -0.043; % NLSY BUSINESS OWNER
        b(17,1) = -0.051; % REAL BUSINESS OWNER
        b(18,1) = -0.285; % ENTREPRENEUR
        b(19,1) =  0.075; % MISSING BUSINESS DATA
        b(20,1) =  0.083; % SQB
        b(21,1) =  0.806; % True Std Dev
        b(22,1) =  0.374; % Persistent Original
        b(23,1) = -0.524; % Persistent SQB-Free (imprecisely estimated)
        b(24,1) =  1.467; % Transitory Error Original        
        b(25,1) =  2.174; % Transitory Error SQB-Free  
elseif model == 13  
        b = zeros(26,1);
        b(1,1) =  -1.669; % Constant
        b(2,1) =  -0.096; % Black
        b(3,1) =  -0.146; % Hispanic
        b(4,1) =   0.137; % East
        b(5,1) =   0.125; % NORTH CENTRAL
        b(6,1) =   0.082; % South   
        b(7,1) =  -0.035; % West
        b(8,1) =   0.897; % NEVER MARRIED
        b(9,1) =   1.269; % Married (spouse present)
        b(10,1) =  1.115; % Other marital status
        b(11,1) =  0.140; % Age/10 
        b(12,1) = -0.062; % Unemployment rate
        b(13,1) =  0.083; % ICS      
        b(14,1) =  0.000; % Mother's years of schooling   
        b(15,1) = -0.020; % Father's years of schooling  
        b(16,1) =  0.014; % Living with both biological parents at age 14?
        b(17,1) = -0.010; % AFQT score in 1981 (2006 version)
        b(18,1) = -0.067; % INDICATOR FOR MISSING MOM'S EDUCATION
        b(19,1) = -0.168; % INDICATOR FOR MISSING DAD'S EDUCATION
        b(20,1) = -0.036; % INDICATOR FOR MISSING AFQT SCORE
        b(21,1) =  0.117; % SQB
        b(22,1) =  0.840; % True Std Dev
        b(23,1) =  0.335; % Persistent Original 
        b(24,1) = -0.637; % Persistent SQB-Free (imprecisely estimated)
        b(25,1) =  1.466; % Transitory Error Original        
        b(26,1) =  2.253; % Transitory Error SQB-Free         
 elseif model == 14  
<<<<<<< Updated upstream
        b = zeros(35,1);
        b(1,1) =  -1.982; % Constant
        b(2,1) =  -0.089; % Black
        b(3,1) =  -0.133; % Hispanic
        b(4,1) =   0.060; % East
        b(5,1) =   0.039; % NORTH CENTRAL
        b(6,1) =  -0.000; % South   
        b(7,1) =  -0.111; % West
        b(8,1) =   0.857; % Never married
        b(9,1) =   1.201; % Married (spouse present)
        b(10,1) =  1.028; % Other marital status
        b(11,1) =  0.152; % Age/10 
        b(12,1) = -0.054; % Unemployment rate
        b(13,1) =  0.077; % ICS      
        b(14,1) =  0.001; % Mother's years of schooling   
        b(15,1) = -0.018; % Father's years of schooling  
        b(16,1) =  0.011; % Living with both biological parents at age 14?
        b(17,1) = -0.007; % AFQT score in 1981 (2006 version)
        b(18,1) = -0.026; % INDICATOR FOR MISSING MOM'S EDUCATION
        b(19,1) = -0.150; % INDICATOR FOR MISSING DAD'S EDUCATION
        b(20,1) =  0.000; % INDICATOR FOR MISSING AFQT SCORE
        b(21,1) =  0.284; % Female
        b(22,1) = -0.110; % DROPOUT
        b(23,1) =  0.019; % High school
        b(24,1) = -0.189; % College 
        b(25,1) =  0.153; % Log Income / 10 
        b(26,1) =  0.148; % Zero income
        b(27,1) =  0.030; % # weeks worked in previous year        
        b(28,1) = -0.016; % # weeks spouse worked in previous year   
        b(29,1) = -0.039; % INDICATOR FOR MISSING WEEKS WORKED BY SPOUSE
        b(30,1) = -0.060; % SQB
        b(31,1) =  0.814; % True Std Dev
        b(32,1) =  0.346; % Persistent Original
        b(33,1) = -0.522; % Persistent SQB-Free (imprecisely estimated)
        b(34,1) =  1.464; % Transitory Error Original        
        b(35,1) =  2.194; % Transitory Error SQB-Free               
=======
        b = zeros(39,1);
        b(1,1) =  -1.243; % Constant
        b(2,1) =  -0.088; % Black
        b(3,1) =  -0.111; % Hispanic
        b(4,1) =   0.022; % East
        b(5,1) =   0.023; % NORTH CENTRAL
        b(6,1) =  -0.032; % South   
        b(7,1) =  -0.152; % West
        b(8,1) =   0.022; % Never married
        b(9,1) =   0.375; % Married (spouse present)
        b(10,1) =  0.223; % Other marital status
        b(11,1) =  0.139; % Age/10 
        b(12,1) = -0.063; % Unemployment rate
        b(13,1) =  0.084; % ICS      
        b(14,1) =  0.003; % Mother's years of schooling   
        b(15,1) = -0.011; % Father's years of schooling  
        b(16,1) =  0.034; % Living with both biological parents at age 14?
        b(17,1) = -0.012; % AFQT score in 1981 (2006 version)
        b(18,1) =  0.022; % INDICATOR FOR MISSING MOM'S EDUCATION
        b(19,1) =  0.022; % INDICATOR FOR MISSING DAD'S EDUCATION
        b(20,1) =  0.003; % INDICATOR FOR MISSING AFQT SCORE
        b(21,1) =  0.268; % Female
        b(22,1) =  0.270; % DROPOUT
        b(23,1) =  0.129; % High school
        b(24,1) = -0.087; % College 
        b(25,1) =  0.170; % Log Income / 10 
        b(26,1) =  0.151; % Zero income
        b(27,1) =  0.005; % # weeks worked in previous year        
        b(28,1) = -0.002; % # weeks spouse worked in previous year   
        b(29,1) =  0.030; % INDICATOR FOR MISSING WEEKS WORKED BY SPOUSE
        b(30,1) =  0.012; % NLSY BUSINESS OWNER
        b(31,1) =  0.050; % REAL BUSINESS OWNER
        b(32,1) =  0.120; % ENTREPRENEUR
        b(33,1) =  0.060; % MISSING BUSINESS DATA
        b(34,1) = -0.058; % SQB
        b(35,1) =  0.815; % True Std Dev
        b(36,1) =  0.348; % Persistent Original
        b(37,1) = -0.376; % Persistent SQB-Free (imprecisely estimated)
        b(38,1) =  1.461; % Transitory Error Original        
        b(39,1) =  2.114; % Transitory Error SQB-Free               
>>>>>>> Stashed changes
end

 info.cnames = strvcat('estimate','t-stat','step');
    info.fmt=strvcat('%15.3f','%15.3f','%15.6f');
     
        if model == 11
            info.rnames = strvcat(' ','Constant','Status Quo Bias','Std Dev',...
		'Original Persistent Std Dev','SQB-Free Persistent Std Dev',...
		'Original Transitory Std Dev','SQB-Free Transitory Std Dev');   
        elseif model == 12
            info.rnames = strvcat(' ','Constant','Black','Hispanic','Female',...
		'Dropout','High school','College','Age','Log income',...
		'Zero income', '# weeks worked last year','# weeks spouse worked last year',...
		'Unemployment rate','ICS', "Missing weeks spouse worked", ...
        'NLSY business owner', 'Real business owner', 'Entrepreneur identity', 'Missing business data',...
        'Status Quo Bias','Std Dev','Original Persistent Std Dev','SQB-Free Persistent Std Dev',...
		'Original Transitory Std Dev','SQB-Free Transitory Std Dev');   
        elseif model == 13
            info.rnames = strvcat(' ','Constant','Black','Hispanic',...
<<<<<<< Updated upstream
		'East', 'North Central', 'South','West', 'Never married', 'Married (spouse present)','Other marital status',...
                'Age/10','Unemployment rate','ICS',"Mother's years of schooling","Father's years of schooling",...
                'Living with both biological parents at 14?', 'AFQT score (2006 version)', "Missing mom's education", "Missing dad's education", 'Missing AFQT',...
=======
		'East', 'North Central' , 'South','West', 'Never married', 'Married (spouse present)','Other marital status',...
                'Age/10','Unemployment rate','ICS',"Mother's years of schooling","Father's years of schooling",...
                'Living with both biological parents at 14?', 'AFQT score (2006 version)', "Missing mom's education", "Mssing dad's education", 'Missing AFQT', ...
>>>>>>> Stashed changes
                'Status Quo Bias','Std Dev','Original Persistent Std Dev','SQB-Free Persistent Std Dev',...
		        'Original Transitory Std Dev','SQB-Free Transitory Std Dev');  
        elseif model == 14
            info.rnames = strvcat(' ','Constant','Black','Hispanic',...
<<<<<<< Updated upstream
		'East','North','South','West', 'Never married','Married (spouse present)','Other marital status',...
                'Age/10','Unemployment rate','ICS',"Mother's years of schooling","Father's years of schooling",...
                'Living with both biological parents at 14?','AFQT score (2006 version)',"Missing mom's education", "Missing dad's education", 'Missing AFQT',......
                'Female', 'Dropout', 'High school', 'College','Log income/10', 'Zero income', '# weeks worked in previous year',...  
                '# weeks spouse worked in previous year', 'Missing weeks worked spouse', 'Status Quo Bias','Std Dev',...
=======
		'East', 'North Central' , 'South','West','Married (spouse present)','Other marital status',...
                'Age/10','Unemployment rate','ICS',"Mother's years of schooling","Father's years of schooling",...
                'Living with both biological parents at 14?','AFQT score (2006 version)',"Missing mom's education", "Mssing dad's education", 'Missing AFQT',...
                'Female', 'Dropout' , 'High school', 'College','Log income/10', 'Zero income', '# weeks worked in previous year',...  
                '# weeks spouse worked in previous year', 'Missing weeks worked spouse', 'NLSY business owner', 'Real business owner', 'Entrepreneur identity', 'Missing business data',...
                'Status Quo Bias','Std Dev',...
>>>>>>> Stashed changes
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
        save ../Output/results_final_11 b V se L iter err N itertime sumsi model;                 
    elseif model == 12
        save ../Output/results_final_12 b V se L iter err N itertime sumsi model;  
    elseif model == 13
        save ../Output/results_final_13 b V se L iter err N itertime sumsi model;        
    elseif model == 14
        save ../Output/results_final_14 b V se L iter err N itertime sumsi model;          
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





