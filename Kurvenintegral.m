%Kurvenintegrale
%% PK-2a
clc; clear; close;

%Plot der beiden Flächen
%Fläche 1
 [a, b] = meshgrid(linspace(-5, 5), linspace(-5, 5));
 c=8./(a.^2+b.^2);
 surf(a,b,c);
 hold on;

%Fläche 2
 [r,t] = meshgrid(linspace(-5, 5), linspace(-5, 5));
 f=sqrt(r.^2+t.^2);
 surf(r,t,f);
 
%Schnittkruve c
%  [t]=linspace(0,2*pi,200);
%  x=2*cos(t);
%  y=2*sin(t);
%  z=2+0*t;

% plot3(x, y, z,Color='r');
 xlim([-5, 5]), ylim([-5, 5]), zlim([-5, 5])

%Plot des Vektorfelds
[o, p, l] = meshgrid(linspace(-5, 5, 5), linspace(-5, 5, 5), linspace(-2, 25, 5));
U=o-2.*p.^2.*l;
V=o.^3-l.^2;
W=o.^2+p.^2;

quiver3(o,p,l,U,V,W);

hold off


%% Aufgabe WS18-2a
% Kurvenintegral
clc;
clear;
close;

%  [a, b] = meshgrid(linspace(-5, 5), linspace(-5, 5));
%  c=-sqrt(a.^2+b.^2);
%  
%  surf(a,b,c);

%Halbkugel
theta=[0:0.1:1]*2*pi;
phi=[0:0.1:0.5]*pi;
R=1;
[THETA,PHI]=meshgrid(theta,phi);
X1=R.*cos(THETA).*sin(PHI);
Y1=R.*sin(THETA).*sin(PHI);
Z1=R.*cos(PHI);
%mesh(X1,Y1,Z1)
xlim([-1, 1]), ylim([-1, 1]), zlim([-1, 1])
hold on

%Fläche
x2=[-10:0.1:10];
y2=[-10:0.1:10];
[X2 , Y2]= meshgrid(x2,y2);
X3=-Y2;
Y3= X2;
Z3= X2.*Y2;
surf(X3,Y3,Z3);
hold on

%Rand der Halbkugel
[t]=linspace(0,2*pi,200);
x=cos(t);
y=sin(t);
z=0*t;
plot3(x, y, z,Color='r');



hold off;

 