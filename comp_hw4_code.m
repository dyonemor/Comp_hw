
%%DIRICHLET WHEN K = 1
clc
clear
clear all

i=1;
syms x L U_0 v A k
u_norm=(((sinh(k*(L-x))+sinh(k*x))/sinh(k*L))-1)*(A/(k^2))+ U_0*((sinh(k*(L-x)))/sinh(k*L));
u_primeEq = diff(u_norm,x); % first derivative
u_doubleEq = diff(u_primeEq,x); % second derivative

% when k = 1
k=1;
L=1;
U_0=1;
v=1;
A=1;


for x=0:0.1:1

 u_Dirich(i)=(((sinh(k*(L-x))+sinh(k*x))/sinh(k*L))-1)*(A/(k^2))+ U_0*((sinh(k*(L-x)))/sinh(k*L));
    
 u_doublePrime_Dirich(i) = (U_0*k^2*sinh(k*(L - x)))/sinh(L*k) + (A*(k^2*sinh(k*x) + k^2*sinh(k*(L - x))))/(k^2*sinh(L*k));
 
 f_Neuman_k10(i) =  u_doublePrime_Dirich(i) - (k^2)*u_Dirich(i); % the f values using k = 1
    i = i+1;
end
disp(f_Neuman_k10)

%% DIRICHLET WHEN K = 10

i=1;
syms x L U_0 v A k
u_norm=(((sinh(k*(L-x))+sinh(k*x))/sinh(k*L))-1)*(A/(k^2))+ U_0*((sinh(k*(L-x)))/sinh(k*L));
u_primeEq = diff(u_norm,x); % first derivative
u_doubleEq = diff(u_primeEq,x) % second derivative

% when k = 10
k=10;
L=1;
U_0=1;
v=1;
A=1;


for x=0:0.1:1
u_double = u_doubleEq;
    u_Dirich(i)=(((sinh(k*(L-x))+sinh(k*x))/sinh(k*L))-1)*(A/(k^2))+ U_0*((sinh(k*(L-x)))/sinh(k*L));
    
 u_doublePrime_Dirich(i) = (U_0*k^2*sinh(k*(L - x)))/sinh(L*k) + (A*(k^2*sinh(k*x) + k^2*sinh(k*(L - x))))/(k^2*sinh(L*k));
 
 f_Dirich_k10(i) =  u_doublePrime_Dirich(i) - (k^2)*u_Dirich(i); % the f values using k = 10
    i = i+1;
end

disp(f_Dirich_k10)

%% Neumann Type When k=1

syms x L U_0 v A k

u_norm_2 = ((cosh(k*x)/cosh(k*L))-1)*(A/(k^2))-(v/k)*(sinh(k*(L-x))/cosh(k*L));
u_primeEq_2 = diff(u_norm_2,x); % first derivative
u_doubleEq_2 = diff(u_primeEq_2,x); % second derivative

% when k = 1
k=1;
L=1;
U_0=1;
v=1;
A=1;

i=1;
for x=0:0.1:1

 u_Neuman(i)=((cosh(k*x)/cosh(k*L))-1)*(A/(k^2))-(v/k)*(sinh(k*(L-x))/cosh(k*L));
    
 u_doublePrime_Neuman(i) = (A*cosh(k*x))/cosh(L*k) - (k*v*sinh(k*(L - x)))/cosh(L*k);
 
 f_Neuman_k1(i) =  u_doublePrime_Neuman(i) - (k^2)*u_Neuman(i); % the f values using k = 1
    i = i+1;
end
disp(f_Neuman_k1)

%% Neumann When k=10
syms x L U_0 v A k

u_norm_2 = ((cosh(k*x)/cosh(k*L))-1)*(A/(k^2))-(v/k)*(sinh(k*(L-x))/cosh(k*L));
u_primeEq_2 = diff(u_norm_2,x); % first derivative
u_doubleEq_2 = diff(u_primeEq_2,x); % second derivative

% when k = 10
k=10;
L=1;
U_0=1;
v=1;
A=1;

i=1;
for x=0:0.1:1

 u_Neuman(i)=((cosh(k*x)/cosh(k*L))-1)*(A/(k^2))-(v/k)*(sinh(k*(L-x))/cosh(k*L));
    
 u_doublePrime_Neuman(i) = (A*cosh(k*x))/cosh(L*k) - (k*v*sinh(k*(L - x)))/cosh(L*k);
 
 f_Neuman_k10(i) =  u_doublePrime_Neuman(i) - (k^2)*u_Neuman(i); % the f values using k = 1
    i = i+1;
end
disp(f_Neuman_k10)

