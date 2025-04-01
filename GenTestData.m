%  This program is free software; you can redistribute it and/or modify
%  it under the terms of the GNU General Public License as published by
%  the Free Software Foundation; either version 2 of the License, or
%  (at your option) any later version.
%  
%  This program is distributed in the hope that it will be useful,
%  but WITHOUT ANY WARRANTY; without even the implied warranty of
%  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
%  GNU General Public License for more details.
%  
%  
%  Authors: Zhi-Qiang Feng and Hong-Yan Zhang, Hainan Normal University
%    email: z.q.feng@foxmail.com,  hongyan@hainnu.edu.cn  

%% small sample
n = 100;
r = [1.1, 1.3, 1.5, 1.7, 1.9, 2.1, 2.2, 2.3, 2.4, 2.5];

for i = 1:length(r)
    m = int64(n * r(i));
    while 1
        A = randn(n * 30, m);
        if rank(A) == m
            break;
        end
    end
    u = randn(n * 30, 1);
    B = [A, u];
    % writematrix(B, ['randn', num2str(m), 'x', num2str(n), 'x30.txt']);
end

%% Noise-Free Case
m = 256;
n = 128;

A = randn(n*30, m);
u = randn(n*30, 1);
B = [A, u];
writematrix(B, ['randn', num2str(m), 'x', num2str(n), 'x30.txt']);

%% Sprase-Noise Case

m = 256;
p = 0.75; % 0.25 or 0.50 or 0.75 or any
E = [];
for i = 1:30
    e = 0.5 * sprandn(m, 1, p);
    E = [E; e];
end
% writematrix(E, ['noise', num2str(m), 'x1x30-', num2str(p*100), '.txt']);

%% Sparse-Noise Case with different m
n = 100;
r = [1.1, 1.3, 1.5, 1.7, 1.9, 2.1, 2.2, 2.3, 2.4, 2.5];
M = [110   130   150   170   190   210   220   230   240   250];
% M = [220   260   300   340   380   420   440   460   480   500];

for i = 1:length(r)
    m = M(i);
    p = 0.25;
    E = [];
    for i = 1:30
        e = 0.5 * sprandn(m, 1, p);
        E = [E; e];
    end
    % writematrix(E, ['noise', num2str(m), 'x1x30-', num2str(p*100), '.txt']);
end
