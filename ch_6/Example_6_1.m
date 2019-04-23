%% 1. 다음 함수를 미분하라
clc; clear;

% 1) a1 = exp(-0.1xt)
syms x t
a1 = exp(-0.1*x*t)
a1_ = diff(a1)

% 2) a2 = exp(axt)
syms x t a
a2 = exp(a*x*t)
a2_ = diff(a2)

% 3) a3 = sin(axt)
syms x t a
a3 = sin(a*x*t)
a3_ = diff(a3)

% 4) a4 = cos(axt)
syms x t a
a4 = cos(a*x*t)
a4_ = diff(a4)

% 5) a5 = tan(axt)
syms x t a
a5 = tan(a*x*t)
a5_ = diff(a5)

% 6) a6 = cot(axt)
syms x t a
a6 = cot(a*x*t)
a6_ = diff(a6)

% 7) a7 = sinh(axt)
syms x t a
a7 = sinh(a*x*t)
a7_ = diff(a7)

% 8) a8 = cosh(axt)
syms x t a
a8 = cosh(a*x*t)
a8_ = diff(a8)

% 9) a9 = log(ax)
syms x t a
a9 = log(a*x)
a9_ = diff(a9)

% 10) a10 = asin(ax)
syms x t a
a10 = asin(a*x)
a10_ = diff(a10)

% 11) a11 = acos(ax)
syms x t a
a11 = acos(a*x)
a11_ = diff(a11)

% 12) a12 = atan(ax)
syms x t a
a12 = atan(a*x)
a12_ = diff(a12)

