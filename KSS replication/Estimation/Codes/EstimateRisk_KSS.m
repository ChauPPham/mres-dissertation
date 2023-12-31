function EstimateRisk_KSS(c92,c94,c98,c00,c02,X92,X94,X98,X00,X02);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% EstimateRisk_KSS.m
% First-Step MLE
% Updated July 26, 2007
% Claudia R. Sahm (claudia.r.sahm@frb.gov)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

global cpt4 cpt6 model  

N = size(X92,1);
maxit = 200;
tol = 1.0e-6; 

%% Compute Risk Tolerance Cutoffs for Risk Categories %%
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
cpt4 = [-1.0e+77;log(cutoff(2:end-1))';1.0e+77]; % 4-way categories 
cpt6 = [-1.0e+77;log(cutoff)';1.0e+77]; % 6-way categories

tic;

% Initial parameter guess;
if model == 0 %  
        b = zeros(2,1);
        b(1,1) = -1.95; % Constant
        b(2,1) = 1.76; % Std. dev. 
elseif model == 1  
        b = zeros(3,1);
        b(1,1) = -0.85; % Constant         
        b(2,1) = 0.75; % True Std Dev
        b(3,1) = 1.40; % Transitory Error - Constant                  
elseif model == 2   
        b = zeros(15,1); 
        b(1,1) = 0.50; % Constant         
        b(2,1) = -0.20; % Black
        b(3,1) =  0.05; % Hispanic 
        b(4,1) =  0.20; % Male
        b(5,1) = -0.05; % Drop Out
        b(6,1) = 0.20; % Some College
        b(7,1) = 0.35; % Post College  
        b(8,1) = -0.20; % Age / 10   
        b(9,1) = -0.05; % Log Income / 10    
        b(10,1) = -0.05; % Zero Income        
        b(11,1) = -0.10; % Log Wealth / 10 
        b(12,1) = 0.10; % Negative Wealth        
        b(13,1) = 0.10; % U Rate       
        b(14,1) = 0.75; % True Std Dev
        b(15,1) = 1.40; % Transitory Error             
elseif model == 11   
        b = zeros(7,1);
        b(1,1) = -1.80; % Constant         
        b(2,1) = -0.10; % SQB
        b(3,1) = 0.75; % True Std Dev
        b(4,1) = 0.75; % Persistent Original
        b(5,1) = 0.75; % Persistent SQB-Free
        b(6,1) = 1.40; % Transitory Error Original        
        b(7,1) = 1.40; % Transitory Error SQB-Free              
elseif model == 12   
        b = zeros(19,1);
        b(1,1) = -0.85; % Constant         
        b(2,1) = -0.20; % Black
        b(3,1) =  0.05; % Hispanic 
        b(4,1) =  0.20; % Male
        b(5,1) = -0.05; % Drop Out
        b(6,1) = 0.20; % Some College
        b(7,1) = 0.35; % Post College  
        b(8,1) = -0.20; % Age / 10   
        b(9,1) = -0.05; % Log Income / 10    
        b(10,1) = -0.05; % Zero Income        
        b(11,1) = -0.10; % Log Wealth / 10 
        b(12,1) = 0.10; % Negative Wealth    
        b(13,1) = 0.10; % Unemployment Rate   
        b(14,1) = -0.10; % SQB
        b(15,1) = 0.725; % True Std Dev
        b(16,1) = 0.75; % Persistent Original
        b(17,1) = 0.75; % Persistent SQB-Free
        b(18,1) = 1.40; % Transitory Error Original        
        b(19,1) = 1.40; % Transitory Error SQB-Free  
elseif model == 13  
        b = zeros(20,1);
        b(1,1) = -0.85; % Constant
        b(2,1) =  0.25; % 1931-41 Birth Cohort
        b(3,1) =  0.25; % 1942+ Birth Cohort
        b(4,1) = -0.25; % Black
        b(5,1) = -0.05; % Hispanic   
        b(6,1) = -0.05; % Couple
        b(7,1) =  0.05; % Spouse 1931-41 Birth Cohort
        b(8,1) =  0.05; % Spouse 1942+ Birth Cohort
        b(9,1) = -0.25; % South 
        b(10,1) = -0.05; % East
        b(11,1) = -0.05; % West      
        b(12,1) = -0.15; % Age   
        b(13,1) = -0.15; % Spouse Age  
        b(14,1) = -0.06; % U-rate    
        b(15,1) = -0.10; % SQB
        b(16,1) = 0.725; % True Std Dev
        b(17,1) = 0.75; % Persistent Original
        b(18,1) = 0.75; % Persistent SQB-Free
        b(19,1) = 1.40; % Transitory Error Original        
        b(20,1) = 1.40; % Transitory Error SQB-Free         
 elseif model == 14  
        b = zeros(28,1);
        b(1,1) = -0.85; % Constant
        b(2,1) =  0.25; % 1931-41 Birth Cohort
        b(3,1) =  0.25; % 1942+ Birth Cohort
        b(4,1) = -0.25; % Black
        b(5,1) = -0.05; % Hispanic   
        b(6,1) = -0.05; % Couple
        b(7,1) =  0.05; % Spouse 1931-41 Birth Cohort
        b(8,1) =  0.05; % Spouse 1942+ Birth Cohort
        b(9,1) = -0.25; % South 
        b(10,1) = -0.05; % East
        b(11,1) = -0.05; % West      
        b(12,1) = -0.15; % Age   
        b(13,1) = -0.15; % Age Spouse  
        b(14,1) = -0.06; % U-rate             
        b(15,1) =  0.20; % Male
        b(16,1) = -0.05; % Drop Out
        b(17,1) = 0.20; % Some College
        b(18,1) = 0.35; % Post College  
        b(19,1) = -0.05; % Log Income / 10    
        b(20,1) = -0.05; % Zero Income        
        b(21,1) = -0.10; % Log Wealth / 10 
        b(22,1) = 0.10; % Negative Wealth       
        b(23,1) = -0.10; % SQB
        b(24,1) = 0.725; % True Std Dev
        b(25,1) = 0.75; % Persistent Original
        b(26,1) = 0.75; % Persistent SQB-Free
        b(27,1) = 1.40; % Transitory Error Original        
        b(28,1) = 1.40; % Transitory Error SQB-Free               
end

 info.cnames = strvcat('estimate','t-stat','step');
    info.fmt=strvcat('%15.3f','%15.3f','%15.6f');
     
        if model == 0
          info.rnames = strvcat(' ','Mean','Std. dev.');    
        elseif model == 1 
            info.rnames = strvcat(' ','Mean','Std Dev','Error Std Dev');              
        elseif model == 2
            info.rnames = strvcat(' ','Constant','Black','Hispanic','Male',...
		'Lt 12 Yrs Ed','13-16 Yrs Ed','Gt 16 Yrs Ed','Age / 10',...
		'Log Total Income / 10', 'Zero Total Income','Log Financial Assets / 10',...
		'Non-Positive Assets','Unemployement Rate','Std Dev','Error Std Dev');                    
        elseif model == 11
            info.rnames = strvcat(' ','Constant','Status Quo Bias','Std Dev',...
		'Original Persistent Std Dev','SQB-Free Persistent Std Dev',...
		'Original Transitory Std Dev','SQB-Free Transitory Std Dev');   
        elseif model == 12
            info.rnames = strvcat(' ','Constant','Black','Hispanic','Male',...
		'Lt 12 Yrs Ed','13-16 Yrs Ed','Gt 16 Yrs Ed','Age / 10',...
		'Log Total Income / 10', 'Zero Total Income','Log Financial Assets / 10',...
		'Non-Positive Assets','Unemployement Rate','Status Quo Bias','Std Dev',...
		'Original Persistent Std Dev','SQB-Free Persistent Std Dev',...
		'Original Transitory Std Dev','SQB-Free Transitory Std Dev');   
        elseif model == 13
            info.rnames = strvcat(' ','Constant','1931-41 Cohorts','1942+ Cohorts',...
		'Black','Hispanic','Couple','Spouse 1931-41','Spouse 1942+',...
                'South','East','West','Age / 10','Spouse Age / 10','Unemployement Rate','Status Quo Bias','Std Dev',...
		'Original Persistent Std Dev','SQB-Free Persistent Std Dev',...
		'Original Transitory Std Dev','SQB-Free Transitory Std Dev');  
        elseif model == 14
            info.rnames = strvcat(' ','Constant','1931-41 Cohorts','1942+ Cohorts',...
		'Black','Hispanic','Couple','Spouse 1931-41','Spouse 1942+',...
                'South','East','West','Age/10','Spouse Age / 10','Unemployement Rate',...
                'Male','Lt 12 Yrs Ed','13-16 Yrs Ed','Gt 16 Yrs Ed','Log Total Income / 10', ...
		'Zero Total Income','Log Financial Assets / 10','Non-Positive Assets',...
                'Status Quo Bias','Std Dev',...
		'Original Persistent Std Dev','SQB-Free Persistent Std Dev',...
		'Original Transitory Std Dev','SQB-Free Transitory Std Dev');               
        end
    iter = 0;
    err = 1;
    
    % Find parameter values which maximize the
    % log-likelihood of the responses
    maxit = 20;
    lik = zeros(N,1);
    si = zeros(N,size(b,1));
    si = sparse(si);
    while (iter < maxit) & err >= tol 
        lik = like_KSS(b,c92,c94,c98,c00,c02,X92,X94,X98,X00,X02);
        si = fdjac('like_KSS',b,c92,c94,c98,c00,c02,X92,X94,X98,X00,X02);
        
        L = sum(lik);
        d = inv(si'*si)*si'*ones(N,1);

        b = b + d;
        err = abs(max(max(d)));
        
        iter = iter + 1;
        sumsi = sum(si);    
        V = inv(si'*si);
        se = diag(V).^.5;
        err=full(err);
        disp(sprintf('Error at iteration %1.0f = %1.2e', iter,err ));
       
        itertime = clock;
        disp(datestr(itertime,0));
        mprint([b,b./se,d],info)
        disp(sprintf('Log-likelihood %10.1f', L));
      
        save results_im b iter se err sumsi d lik si L  N model itertime ;
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
    
    disp(sprintf('Estimates of Model %1.1f', model ));
    disp(datestr(itertime,0))
    disp(sprintf('Sample size %1.0f', N ));
    disp(sprintf('Number of iterations = %1.0f', iter ));
    err=full(err);
    disp(sprintf('Error at last iteration = %1.2e', err )); 
        
    info.cnames = strvcat('estimate', 'std. error','t-stat');
    info.fmt='%15.3f';
    
    mprint([b,se,b./se],info)
    disp(sprintf('Log-likelihood %10.1f', L ));





