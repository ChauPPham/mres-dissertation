
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ProxyCats.m;
% Computes the E(theta|c,X)
% Updated July 24, 2007
% Claudia R. Sahm (claudia.r.sahm@frb.gov)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

ct = 0;
% original 4-way only
for i = 1:4
    ct=ct+1;
    c4wo(ct,1) = i;
end
% original 6-way only
for i = 1:6
    ct=ct+1;
    c6wo(ct,1) = i;
end
% bias-free 6-way only
for i = 1:6
    ct=ct+1;
    c6w1u(ct,1) = i;
end

% original mulitples
for i = 1:4
    for j = 1:6
        ct=ct+1;
        c4wo(ct,1) = i;
        c6wo(ct,1) = j;
    end    
end

% bias-free mulitples
for i = 1:6
    for j = i:6
        ct=ct+1;
        c6w1u(ct,1) = i;
        c6w2u(ct,1) = j;      
    end    
end

for i = 1:6
    for j = i:6
        for k = j:6
            ct=ct+1;
            c6w1u(ct,1) = i;
            c6w2u(ct,1) = j;  
            c6w3u(ct,1) = k;
        end
    end    
end

%original singles and bias-free multiples

% with 4-way original mulitple bias-free
for o = 1:4
    
for i = 1:6
    ct=ct+1;
    c4wo(ct,1) = o;
    c6w1u(ct,1) = i;    
end    
    
for i = 1:6
    for j = i:6
        ct=ct+1;
        c4wo(ct,1) = o;
        c6w1u(ct,1) = i;
        c6w2u(ct,1) = j;      
    end    
end

for i = 1:6
    for j = i:6
        for k = j:6
            ct=ct+1;
            c4wo(ct,1) = o;
            c6w1u(ct,1) = i;
            c6w2u(ct,1) = j;  
            c6w3u(ct,1) = k;
        end
    end    
end    
end

% with 6-way original mulitple bias-free
for o = 1:6

for i = 1:6
    ct=ct+1;
    c6wo(ct,1) = o;
    c6w1u(ct,1) = i;    
end    

for i = 1:6
    for j = i:6
        ct=ct+1;
        c6wo(ct,1) = o;
        c6w1u(ct,1) = i;
        c6w2u(ct,1) = j;      
    end    
end

for i = 1:6
    for j = i:6
        for k = j:6
            ct=ct+1;
            c6wo(ct,1) = o;
            c6w1u(ct,1) = i;
            c6w2u(ct,1) = j;  
            c6w3u(ct,1) = k;
        end
    end    
end    
end

%original multiples and bias-free multiples
for o = 1:4
    for p = 1:6
    
for i = 1:6
    ct=ct+1;
    c4wo(ct,1) = o;
    c6wo(ct,1) = p;
    c6w1u(ct,1) = i;    
end    
    
for i = 1:6
    for j = i:6
        ct=ct+1;
        c4wo(ct,1) = o;
        c6wo(ct,1) = p;
        c6w1u(ct,1) = i;
        c6w2u(ct,1) = j;      
    end    
end

for i = 1:6
    for j = i:6
        for k = j:6
            ct=ct+1;
            c4wo(ct,1) = o;
            c6wo(ct,1) = p;
            c6w1u(ct,1) = i;
            c6w2u(ct,1) = j;  
            c6w3u(ct,1) = k;
        end
    end    
end

end
end

load results_final_11
N = size(c4wo,1);
[Etheta]  = Etheta_KSS(b,c4wo,c6wo,c6w1u,c6w2u,c6w3u,[ones(N,1),ones(N,1)],[ones(N,1),ones(N,1)],...
	[ones(N,1),zeros(N,1)],[ones(N,1),zeros(N,1)],[ones(N,1),zeros(N,1)]);

[Elntheta] = Elntheta_KSS(b,c4wo,c6wo,c6w1u,c6w2u,c6w3u,[ones(N,1),ones(N,1)],[ones(N,1),ones(N,1)],...
	[ones(N,1),zeros(N,1)],[ones(N,1),zeros(N,1)],[ones(N,1),zeros(N,1)]); 

[Egamma]  = Egamma_KSS(b,c4wo,c6wo,c6w1u,c6w2u,c6w3u,[ones(N,1),ones(N,1)],[ones(N,1),ones(N,1)],...
	[ones(N,1),zeros(N,1)],[ones(N,1),zeros(N,1)],[ones(N,1),zeros(N,1)]);

delete('ProxyCats.out');
diary('ProxyCats.out');
display('Proxy Values');
display('Columns: 4-way Orig., 6-way Orig., 1st 6-way BF, 2nd 6-way BF, 3rd 6-way BF, Risk Tol., Log Risk Tol., Risk Aver.');

mprint([c4wo, c6wo, c6w1u, c6w2u, c6w3u, Etheta, Elntheta,Egamma])

diary off;
