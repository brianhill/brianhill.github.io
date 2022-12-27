% Program to make Kirchhoff.txt
% hw due 3/13 from worksheet handed out 3/8
% by Jessica Kintner
%
% Problem 1 not turned in
%
% Problem 2:
%
a = [1; 0; 2; 0; 3];
b = [5; 6; 7; 8; 9];
c = [-3; -2; -1; 0; 1];
%
writeMat = [a, b, c];
save kirchhoff_Kintner.txt writeMat -ascii
%
% Problem 3
%
voltages = [0, 6, 9]';
coeffMat = [-1, -1, 1; 400, 0 50; 0 300 50];
currents = inv(coeffMat)*voltages
%
save kirchhoff_Kintner.txt currents -ascii -append
%
% Problem 4
%
voltages = [0, 3, 6]';
coeffMat = [-1, -1, 1; 5, 0, 10; 0 20 10];
currents = inv(coeffMat)*voltages
%
save kirchhoff_Kintner.txt currents -ascii -append
