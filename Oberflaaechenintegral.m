% Oberflächenintegral
%% PK-2b
clc;
clear; 
close;

% Fläche 
%Fläche 1
 [a, b] = meshgrid(linspace(-1, 1), linspace(-1, 1));
 c=sqrt(1-a.^2);
 mesh(a,b,c);
 hold on;
 c=-sqrt(1-a.^2);
 mesh(a,b,c);

%Fläche 2
 [r,f] = meshgrid(linspace(-1, 1), linspace(-1, 1));
 t=sqrt(1-r.^2);
 mesh(r,t,f,LineStyle="--");
 t=-sqrt(1-r.^2);
 mesh(r,t,f,LineStyle="--");
 xlim([-1, 1]);
 axis equal;

 xlabel('x'); ylabel('y'); zlabel('z');

 % figure;
%Plot des Vektorfelds
[o, p, l] = meshgrid(linspace(-2, 2, 5), linspace(-2, 2, 5), linspace(-2, 2, 5));
U=o+l.^2;
V=l-p;
W=o.^2.*l;

quiver3(o,p,l,U,V,W,AutoScaleFactor=2);
 
hold off;

%% WS17-2b
clc;
clear; 
close;

% Fläche 
%Fläche 1
 [a, b] = meshgrid(linspace(-1, 1), linspace(-1, 1));
 c=sqrt(1)+0.*b;
 mesh(a,b,c);
 hold on;
 c=-sqrt(1)+0.*b;
 mesh(a,b,c);

%Fläche 2
 [r,f] = meshgrid(linspace(-1, 1), linspace(-1, 1));
 t=sqrt(1-r.^2);
 mesh(r,t,f,LineStyle="--");
 t=-sqrt(1-r.^2);
 mesh(r,t,f,LineStyle="--");
 xlim([-1, 1]);
 axis equal;

 xlabel('x'); ylabel('y'); zlabel('z');

% figure;
%Plot des Vektorfelds
[o, p, l] = meshgrid(linspace(-2, 2, 5), linspace(-2, 2, 5), linspace(-2, 2, 5));
U=o.^2.*l.^2;
V=o.*p.*l.^2;
W=o.*l.^3;

quiver3(o,p,l,U,V,W,AutoScaleFactor=2);

 
hold off;