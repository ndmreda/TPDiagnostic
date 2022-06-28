function [] = plotsc(sc)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

n = length(sc.dt);
eq1 = -0.3*sc.u + (0.3 + 2*sc.yobs1d).*sc.yobs1;
eq2 = 2*sc.yobs2d.*sc.yobs2 - 0.3*sc.yobs1 + 0.3*sc.yobs2;
subplot(1,2,1)
plot(sc.dt,eq1)
subplot(1,2,2)
plot(sc.dt,eq2)

end

