%% TUGAS INDIVIDU KE-3 (DERET TAYLOR) KALKULUS LANJUT
% Dibuat Tanggal 6 dan 7 November 2022
% Dibuat Oleh : Sinsin Triana Kian Q (2108541077)

% Tentukan hampiran Taylor untuk persamaan f(x) di titik x = 3
% f(x)=    / pi x \
%       sin| ---- |
%          \   3  /
%       -----------
%       sqrt(x + 1)

%% Mencari Turunan f(x) dari Command Windows dengan Syntax sebagai berikut:
% >> sysm x
% >> f = sin(pi*x/3)/sqrt(x+1)
% f =
% sin((pi*x)/3)/(x + 1)^(1/2)

% Substitusi x = 3 ke fungsi f
% >> subs(f,x,3)
% ans =
% 0

% Turunan Pertama f(x) 
     % >> a = diff(f)
     % a =
     % (pi*cos((pi*x)/3))/(3*(x + 1)^(1/2)) - sin((pi*x)/3)/(2*(x + 1)^(3/2))
 % Turunan Pertama f(3)
     % >> subs(a,x,3)
     % ans =
     % -pi/6
     
% Turunan Kedua f(x)
     % >> b = diff(f,2)
     % b =
     % (3*sin((pi*x)/3))/(4*(x + 1)^(5/2)) - (pi*cos((pi*x)/3))/(3*(x + 1)^(3/2)) - (pi^2*sin((pi*x)/3))/(9*(x + 1)^(1/2))
 % Turunan Kedua f(3)
     % >> subs(b,x,3)
     % ans =
     % pi/24
     
% Turunan Ketiga f(x)
     % >> c = diff(f,3)
     % c =
     %(3*pi*cos((pi*x)/3))/(4*(x + 1)^(5/2)) - (15*sin((pi*x)/3))/(8*(x + 1)^(7/2)) - (pi^3*cos((pi*x)/3))/(27*(x + 1)^(1/2)) + (pi^2*sin((pi*x)/3))/(6*(x + 1)^(3/2))
 % Turunan Ketiga f(3)
     % >> subs(c,x,3)
     % ans =
     % pi^3/54 - (3*pi)/128
     
% Turunan Keempat f(x)
     % >> d = diff(f,4)
     % d =
     %(105*sin((pi*x)/3))/(16*(x + 1)^(9/2)) - (5*pi*cos((pi*x)/3))/(2*(x + 1)^(7/2)) + (2*pi^3*cos((pi*x)/3))/(27*(x + 1)^(3/2)) + (pi^4*sin((pi*x)/3))/(81*(x + 1)^(1/2)) - (pi^2*sin((pi*x)/3))/(2*(x + 1)^(5/2))
 % Turunan Keempat f(3)   
     % >> subs(d,x,3)
     % ans =
     % (5*pi)/256 - pi^3/108
     
%% Instalisasi awal
clear;
clc;
close all;

%% Program Utama
x  = linspace(-1,20,1000);
x1 = linspace(-1,20,1000);
x2 = linspace(-1,20,1000);

for i=1:1000
    y(i) = sin(pi*x(i)/3)/sqrt(x(i)+1);
    y1(i)= 0 - (pi/6)*(x(i)-3);
    y2(i)= 0 - (pi/6)*(x(i)-3) + ((pi/24)/2)*(x(i)-3)^2;
    y3(i)= 0 - (pi/6)*(x(i)-3) + ((pi/24)/2)*(x(i)-3)^2 + ((pi^3/54 - (3*pi)/128)/6)*(x(i)-3)^3; 
    y4(i)= 0 - (pi/6)*(x(i)-3) + ((pi/24)/2)*(x(i)-3)^2 + ((pi^3/54 - (3*pi)/128)/6)*(x(i)-3)^3 + (((5*pi)/256 - pi^3/108)/24)*(x(i)-3)^4; 
end

plot(x,y,'r','LineWidth',3)
hold on
plot(x1,y1,'b','LineWidth',3)
plot(x2,y2,'g','LineWidth',3)
plot(x2,y3,'k','LineWidth',3)
plot(x2,y4,'Y','LineWidth',3)

xline(3) % Garis x=3
yline(0) % Garis y=0
xlim([-1 8]) % Rentang plot sumbu x
ylim([-2 2]) % Rentang plot sumbu y

% Keterangan Plot
f = '$\frac{sin\frac{\pi}{3}x}{\surd(x+1)}$';
title(f,'interpreter', 'latex') %Memberi Judul Plot
ax=gca;
ax.FontSize = 12;   %Mengubah Fontsize
xlabel('Sumbu X','interpreter', 'latex');
ylabel('Sumbu Y','interpreter', 'latex');
legend('$f(3)$','$f(3)+f^1(3)(x-3)$','$f(3)+f^1(3)(x-3)+\frac{f^2(3)}{2!}(x-3)^2$','$f(3)+f^1(3)(x-3)+\frac{f^2(3)}{2!}(x-3)^2+\frac{f^3(3)}{3!}(x-3)^3$','$f(3)+f^1(3)(x-3)+\frac{f^2(3)}{2!}(x-3)^2+\frac{f^3(3)}{3!}(x-3)^3+\frac{f^4(3)}{4!}(x-3)^4$','interpreter', 'latex')
