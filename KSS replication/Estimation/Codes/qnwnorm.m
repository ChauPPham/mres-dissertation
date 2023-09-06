% QNWNORM Computes nodes and weights for multivariate normal distribution
% USAGE
%   [x,w] = qnwnorm(n,mu,var);
% INPUTS
%   n   : 1 by d vector of number of nodes for each variable
%   mu  : 1 by d mean vector
%   var : d by d positive definite covariance matrix
% OUTPUTS
%   x   : prod(n) by d matrix of evaluation nodes
%   w   : prod(n) by 1 vector of probabilities
% 
% To compute expectation of f(x), where x is N(mu,var), write a
% function f that returns m-vector of values when passed an m by d
% matrix, and write [x,w]=qnwnorm(n,mu,var); E[f]=w'*f(x);
%
% USES: ckron, gridmake

% Copyright (c) 1997-2000, Paul L. Fackler & Mario J. Miranda
% paul_fackler@ncsu.edu, miranda.4@osu.edu

function [x,w] = qnwnorm(n,mu,var)

d = length(n);
if nargin<3, var=eye(d); end
if nargin<2, mu=zeros(1,d); end
if size(mu,1)>1, mu=mu'; end

x = cell(1,d);
w = cell(1,d);
for i=1:d
   [x{i},w{i}] = qnwnorm1(n(i));
end
w = ckron(w(d:-1:1));
x = gridmake(x);
x = x*chol(var)+mu(ones(prod(n),1),:);

return


% QNWNORM1 Computes nodes and weights for the univariate standard normal distribution
% USAGE
%    [x,w] = qnwnorm1(n);
% INPUTS
%   n   : number of nodes
% OUTPUTS
%   x   : n by 1 vector of evaluation nodes
%   w   : n by 1 vector of probabilities
 
% Based on an algorithm in W.H. Press, S.A. Teukolsky, W.T. Vetterling
% and B.P. Flannery, "Numerical Recipes in FORTRAN", 2nd ed.  Cambridge
% University Press, 1992.

function [x,w] = qnwnorm1(n);

maxit = 100;
pim4 = 1/pi.^0.25;
m = fix((n+1)./2);
x = zeros(n,1);
w = zeros(n,1);
for i=1:m
   % Reasonable starting values 
   if i==1;        z = sqrt(2*n+1)-1.85575*((2*n+1).^(-1/6));
      elseif i==2; z = z-1.14*(n.^0.426)./z;
      elseif i==3; z = 1.86*z+0.86*x(1);
      elseif i==4; z = 1.91*z+0.91*x(2);
      else;        z = 2*z+x(i-2);
   end;
   % root finding iterations 
   its=0;
   while its<maxit;
      its = its+1;
      p1 = pim4;
      p2 = 0;
      for j=1:n
         p3 = p2;
         p2 = p1;
         p1 = z.*sqrt(2/j).*p2-sqrt((j-1)/j).*p3;
      end;
      pp = sqrt(2*n).*p2;
      z1 = z;
      z  = z1-p1./pp;
      if abs(z-z1)<1e-14; break; end;
   end;
   if its>=maxit
      error('failure to converge in qnwnorm1')
   end
   x(n+1-i) = z;
   x(i) = -z;
   w(i) = 2./(pp.*pp);
   w(n+1-i) = w(i);
end;
w = w./sqrt(pi);
x = x*sqrt(2);




% CKRON Repeated Kronecker products on a cell array of matrices.
% USAGE
%   z=ckron(b)     Solves (B1xB2x...xBd)
%   z=ckron(b,1)   Solves (inv(B1)xinv(B2)x...xinv(Bd))
% where x denotes Kronecker (tensor) product.
% The Bi are passed as a cell array B. 

% Copyright (c) 1997-2000, Paul L. Fackler & Mario J. Miranda
% paul_fackler@ncsu.edu, miranda.4@osu.edu

function z=ckron(b,invert)

if nargin<1, error('At least one parameter must be passed'), end
if nargin==1, invert=0; end

[d,m,n]=csize(b);
if invert & any(m~=n)
  error('Matrix elements must be square to invert');
end

if isempty(d)
  if invert z=inv(b); else z=b; end
else
  if invert z=inv(b{1})
  else z=b{1};
  end
  for i=2:d
    if invert
      z=kron(z,inv(b{i}));
    else
      z=kron(z,b{i});
    end
  end
end

% CSIZE Returns dimension information for cell arrays.
% USAGE
%   d=csize(b);
%   [d,n]=csize(b);
% If b is a cell array then:
%   d is the number of matrices in b
%   m is a dx2 matrix of row and column dimensions
%     or m and n are dx1 vectors
% If b is not a cell array
%   d=[]; this can be used to test if b is a cell array 
%         (isempty(d) is true is b is not a cell array)
%   m=size(b) or m=size(b,1) and n=size(b,2)

% Copyright (c) 1997-2000, Paul L. Fackler & Mario J. Miranda
% paul_fackler@ncsu.edu, miranda.4@osu.edu

function [d,m,n]=csize(b)

if iscell(b)
  d=length(b);
  m=zeros(d,2);
  for i=1:d
    m(i,:)=size(b{i});
  end
else
  d=[];
  m=size(b);
end

if nargout==0
  disp([(1:d)' m])
elseif nargout==3
  n=m(:,2);
  m=m(:,1);
end

% GRIDMAKE Forms grid points
% USAGE
%   X=gridmake(x);
%   X=gridmake(x1,x2,x3,...);
%   [X1,X2,...]=gridmake(x1,x2,x3,...);
%   X=gridmake({y11,y12},x2,{y21,y22,y23});
%
% Expands matrices into the associated grid points.
% If N is the dx2 matrix that indexes the size of the inputs
%   GRIDMAKE returns a prod(N(:,1)) by sum(N(:,2)) matrix.
%   The output can also be returned as either
%      d matrices or 
%      sum(N(:,2)) matices
% If any of the inputs are grids, they are expanded internally
% Thus
%    X=gridmake({x1,x2,x3})
%    X=gridmake(x1,x2,x3)
% and
%    x={x1,x2,x3}; X=gridmake(x{:})
% all produce the same output.
%
% Note: the grid is expanded so the first variable change most quickly.
%
% Example:
%  X=gridmake([1;2;3],[4;5])
% produces
%     1     4
%     2     4
%     3     4
%     1     5
%     2     5
%     3     5
% 
% The function performs an action similar to NDGRID, the main difference is in the
%   increased flexability in specifying the form of the inputs and outputs.
%
% Also the inputs need not be vectors.
%   X=gridmake([1;2;3],[4 6;5 7])
% produces
%     1     4     6
%     2     4     6
%     3     4     6
%     1     5     7
%     2     5     7
%     3     5     7
% 
% See also: ndgrid

% Copyright (c) 1997-2000, Paul L. Fackler & Mario J. Miranda
% paul_fackler@ncsu.edu, miranda.4@osu.edu

function varargout=gridmake(varargin)
m=prod(size(varargin));
n=nargout;
Z=[];
d=zeros(1,m+1);
for i=1:m
  if isa(varargin{i},'cell')
    Z=gridmake2(Z,gridmake(varargin{i}{:}));
  else
    Z=gridmake2(Z,varargin{i});
  end
  d(i+1)=size(Z,2);
end

varargout=cell(1,max(n,1));
if n<=1
  varargout{1}=Z;
elseif n==m
  for i=1:m
    varargout{i}=Z(:,d(i)+1:d(i+1));
  end
elseif n==size(Z,2)
  for i=1:n
    varargout{i}=Z(:,i);
  end
else
  error(['An improper number of outputs requested - should be 1, ' num2str(m)  ' or ' num2str(size(Z,2))])
end

% Expands gridpoints for 2 matrices
function Z=gridmake2(X1,X2)
if isempty(X1); Z=X2; return; end
m=size(X1,1);
n=size(X2,1);
ind1=(1:m)';
ind2=1:n;
Z=[X1(ind1(:,ones(n,1)),:) X2(ind2(ones(m,1),:),:)];