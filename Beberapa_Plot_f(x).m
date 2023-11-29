clear all, close all,  clc

%=============================================================
%Bagian I: Ini pendahuluan

%x = -10:5:10 % membuat vektor sumbu X
%y = x         % membuat vektor sumbu Y
%plot(x,y)      % menggambar koordinat (X,Y)
%=============================================================
% Bagian II:

%x = -10:1:10;    % membuat vektor sumbu X
%y = x.^2;        % membuat vektor sumbu Y
%plot(x,y,'mo','LineWidth',3)

% Keterangan:
% LineWidth untuk ketebalan garis
% beberapa opsi warna adalah: r=red,b=blue,y=yellow,k=black,g=green
% beberapa opsi penghubung gambar adalah: -=garis,:=titik-titik. Coba
% menggunakan -. atau * atau *. atau --

%=============================================================
%Bagian III:

%x = -2*pi:0.01:2*pi;
%y = sin(x);
%z = cos(x);
%plot(x,y,x,z,LineWidth=2)
%hold on

%xlim([-pi pi])
%ylim([-1 1])

%xline(0)
%yline(0)

% hold on berfungsi untuk menggambar semua perintah
% xlim dan ylim merupakan rentang sumbu X dan Y
% yline dan x line menggambarkan sumbu X dan Y
%==============================================================
%Latihan: gambar fungsi 1/x
%x = -10:0.1:10;    % membuat vektor sumbu X
%y = 1./x;        % membuat vektor sumbu Y
%plot(x,y,'m','LineWidth',3)

%xlim([-8 8])
%ylim([-8 8])

%xline(0)
%yline(0)

%Latihan: tan x = sin x/cos x

%x1=-(0.5)*pi:0.1:0.5*pi;
%x2=-(1.5)*pi:0.1:-0.5*pi;
%x3=(0.5)*pi+0.01:0.1:(1.5)*pi;
%x4=(1.5)*pi+0.01:0.1:(2.5)*pi;
%x5=-(2.5)*pi:0.1:-1.5*pi;
%y1= tan(x1);
%y2= tan(x2);
%y3= tan(x3);
%y4= tan(x4);
%y5= tan(x5);
%plot(x1,y1,'r',LineWidth=3)
%hold on
%plot(x2,y2,'r',LineWidth=3)
%hold on
%plot(x3,y3,'r',LineWidth=3)
%plot(x4,y4,'r',LineWidth=3)
%plot(x5,y5,'r',LineWidth=3)
%xlim([-2*pi 2*pi])
%ylim([-3 3])

%xline(0)
%xline(0.5*pi)
%xline(1.5*pi)
%xline(2.5*pi)
%xline(-0.5*pi)
%xline(-1.5*pi)
%xline(-2.5*pi)
%yline(0)

%=====================================================

%Latihan: gambar fungsi f(x) = (x/(x+1)(x-2))+3
x1 = linspace(-5,-1,100);
x2 = linspace(-1,2,100);
x3 = linspace(2,5,100);

for i=1:100
    y1(i)=(x1(i)/((x1(i)+1)*(x1(i)-2)))+3;
    y2(i)=(x2(i)/((x2(i)+1)*(x2(i)-2)))+3;
    y3(i)=(x3(i)/((x3(i)+1)*(x3(i)-2)))+3;
end
plot(x1,y1,'r','LineWidth',3)
hold on
plot(x2,y2,'r','LineWidth',3)
plot(x3,y3,'r','LineWidth',3)

xlim([-5 5])
ylim([-2 8])

xline(-1)
xline(2)
xline(0)
yline(0)
yline(3)

%=========================================================
%Bagian IV:

%x = -10:0.01:10;
%y = x;
%z = log(x);
%plot(x,y,x,z,LineWidth=2)
%hold on

%xlim([-2*pi 2*pi])
% ylim([-1.5 1.5])

%xline(0)
%yline(0)
%==============================================================
%Bagian V:
%r=4;
%pusatx=0;
%pusaty=0;
%theta = 0:0.01:2*pi;
%x=r*cos(theta)+pusatx;
%y=r*sin(theta)+pusaty;

%plot(x,y)

%xlim([-4 4])
%ylim([-4 4])

%===========================================================
%Bagian VI: Gambar deret Taylor  f(x)=1/sqrt(x)

%x=linspace(0,20,1000);
%x1 = linspace(0,20,1000);
%x2 = linspace(0,20,1000);

%for i=1:1000
%    y(i)=sqrt(x(i));
%    y1(i)=2+(1/4)*(x(i)-4);
%    y2(i)=2+(1/4)*(x(i)-4)-(1/64)*(x(i)-4)^2;
%    y3(i)=2+(1/4)*(x(i)-4)-(1/64)*(x(i)-4)^2+(1/1536)*(x(i)-4)^3;
%end

%plot(x,y,'r',LineWidth=3)
%hold on
%plot(x1,y1,'b',LineWidth=3)
%plot(x2,y2,'g',LineWidth=3)
%plot(x2,y3,'k',LineWidth=3)

%xline(4)
%yline(2)
%xlim([0 10])
%ylim([0 4])


%===========================================================
%Bagian VII:

%z = 0:0.01:5*pi;
%x = sin(z);
%y = cos(z);
%plot3(x,y,z)




%[X,Y] = meshgrid(1:0.1:10,1:20);
%Z = sin(X) + cos(Y);
%surf(X,Y,Z)