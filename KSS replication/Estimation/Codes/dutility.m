function [fval,fjac] = dutility(gamma,dfrac);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% dutility
% Used to find the cut points on gamble categories
% Updated July 24, 2007
% Claudia R. Sahm (claudia.r.sahm@frb.gov)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% gamma = coefficient of relative risk aversion
% dfrac = 1 - (downside risk)

% Indifferent between accepting gamble (50-50 chance of double or dfrac)
% or rejecting gamble

% 1/2*U(2W) + 1/2*U(dfracW) = U(W) , where W is lifetime income
% CRRA utility form so U(X) = X^(1-gamma)/(1-gamma), where gamma is coeff. RRA

fval = 0.5*2^(1-gamma)/(1-gamma) + 0.5*dfrac^(1-gamma)/(1-gamma) - 1/(1-gamma);
fjac  = -0.5*log(2)*2^(1-gamma)/(1-gamma)-0.5*log(dfrac)*dfrac^(1-gamma)/(1-gamma) ...
        + 0.5*2^(1-gamma)/(1-gamma)^2 + 0.5*dfrac^(1-gamma)/(1-gamma)^2 - 1/(1-gamma)^2 ;