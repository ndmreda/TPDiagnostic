clear all
clc

sc1 = load('scenario1bis.mat');
sc2 = load('scenario3bis.mat');
sc3 = load('scenario4bis.mat');
sc4 = load('scenario5bis.mat');

 figure();
 plotsc(sc1);
 figure();
 plotsc(sc2);
 figure();
 plotsc(sc3);
 figure();
 plotsc(sc4);

disp('Senario 1')
[P1,P2,f1,f2,f3,f4] = estimation_MC(sc1)
disp('Senario 2')
[P1,P2,f1,f2,f3,f4] = estimation_MC(sc2)
disp('Senario 3')
[P1,P2,f1,f2,f3,f4] = estimation_MC(sc3)
disp('Senario 4')
[P1,P2,f1,f2,f3,f4] = estimation_MC(sc4)








