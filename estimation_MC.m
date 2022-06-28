function [P1,P2,f1,f2,f3,f4] = estimation_MC(sc)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here


n = length(sc.dt);
i = 71;

YN1 = -0.3*sc.u(i:n) + (0.3 + 2*sc.yobs1d(i:n)).*sc.yobs1(i:n);
YN2 = 2*sc.yobs2d(i:n).*sc.yobs2(i:n) - 0.3*sc.yobs1(i:n) + 0.3*sc.yobs2(i:n);  %2 ?y2y2 ? 0.3y1 + 0.3y2

R1 = [2*sc.yobs1d(i:n) 0.3*(sc.u(i:n)-sc.yobs1(i:n)) 0.3*ones(n-i+1,1)];
R2 = [-0.3*ones(n-i+1,1) 2*sc.yobs2d(i:n)+0.3];

P1 = inv((R1')*R1)*(R1')*(YN1);
P2 = inv((R2')*R2)*(R2')*(YN2);

F4 = [1 + sqrt(1+P1(2)) 1 - sqrt(1+P1(2))];
for i = 1:2
    if (F4(i)>0 & F4(i)<1)
        f4 = F4(i);
    end
end

f2 = P2(1);
f3 = P2(2);
f1 = P1(3)/((f4-1)^2) - f2;


end

