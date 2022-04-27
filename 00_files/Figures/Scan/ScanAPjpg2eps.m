%%%%%%%%%%%%%%%%%55%%%%%%%%%%%%
%%   ScanAP: JPG To EPS      %%
%%   by Jirka Roubal, 2013   %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clc; clear; close all;


%% BitMap to EPS
A = imread('task.jpg');
[m,n,o] = size(A);
figure(1)
    image(A);
    axis off equal
print(1,'-depsc2','task');

B = imread('signature.jpg');
[m,n,o] = size(B);
figure(2)
    image(B);
    axis off equal
print(2,'-depsc2','signature');