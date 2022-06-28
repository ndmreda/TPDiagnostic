sc1 = load('scenario1bis.mat');
sc2 = load('scenario3bis.mat');
sc3 = load('scenario4bis.mat');
sc4 = load('scenario5bis.mat');

scenarios = [sc1 sc2 sc3 sc4];

eq1 = -0.3*sc1.u + (0.3 + 2*sc1.yobs1d).*sc1.yobs1;
eq2 = 2*sc1.yobs2d.*sc1.yobs2 - 0.3*sc1.yobs1 + 0.3*sc1.yobs2;
subplot(4,2,1);plot(sc1.dt,eq1);
str1 = 'Equation 1 dans le scenario 1';
title(str1);
subplot(4,2,2);plot(sc1.dt,eq2);
str2 = 'Equation 2 dans le scenario 1';
title(str2);

eq1 = -0.3*sc2.u + (0.3 + 2*sc2.yobs1d).*sc2.yobs1;
eq2 = 2*sc2.yobs2d.*sc2.yobs2 - 0.3*sc2.yobs1 + 0.3*sc2.yobs2;
subplot(4,2,3);plot(sc2.dt,eq1);
str1 = 'Equation 1 dans le scenario 2';
title(str1);
subplot(4,2,4);plot(sc2.dt,eq2);
str2 = 'Equation 2 dans le scenario 2';
title(str2);


eq1 = -0.3*sc3.u + (0.3 + 2*sc3.yobs1d).*sc3.yobs1;
eq2 = 2*sc3.yobs2d.*sc3.yobs2 - 0.3*sc3.yobs1 + 0.3*sc3.yobs2;
subplot(4,2,5);plot(sc3.dt,eq1);
str1 = 'Equation 1 dans le scenario 3';
title(str1);
subplot(4,2,6);plot(sc3.dt,eq2);
str2 = 'Equation 2 dans le scenario 3';
title(str2);


eq1 = -0.3*sc4.u + (0.3 + 2*sc4.yobs1d).*sc4.yobs1;
eq2 = 2*sc4.yobs2d.*sc4.yobs2 - 0.3*sc4.yobs1 + 0.3*sc4.yobs2;
subplot(4,2,7);plot(sc4.dt,eq1);
str1 = 'Equation 1 dans le scenario 4';
title(str1);
subplot(4,2,8);plot(sc4.dt,eq2);
str2 = 'Equation 2 dans le scenario 4';
title(str2); 