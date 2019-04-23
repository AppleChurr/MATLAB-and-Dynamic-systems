%% 6.1 다항식에 대한 MATLAB 명령
p = [1 2 3 4]
q = poly2sym(p)
r = sym2poly(q)

%% 6.1.1 다항식의 값
p = [1 2 3 4];

polyval(p, -2)
polyval(p, -1)

x = -5 : 0.01 : 5;
y = polyval(p, x);
plot(x, y); xlabel('x'); ylabel('y'); grid on

%% 6.1.2 다항식의 근
p = [1 -6 11 -6]

x = roots(p)

p = poly(x)

q = poly2sym(p)

polyval(p, 1)

%% 6.1.3 다항식의 연산
p1 = [1 2 3 4];
p2 = [1 -6 11 -6];
p = p1 + p2

q = poly2sym(p)

r = conv(p1, p2)

q = poly2sym(r)

p1 = [1 -6 11 -6];
p2 = [1 -1];
[s, t] = deconv(p1, p2)

q = poly2sym(s)

%% 6.1.4 다항식의 도함수
p = [1 -6 11 -6];
q = poly2sym(p)

a = polyder(p)

r = poly2sym(a)

p1 = [1 -5 6];
p2 = [1 -1];

b = polyder(p1, p2)

p = conv(p1, p2)
b = polyder(p)

p = [1 -6 11 -6];
p2 = [1 -1];

[c, d] = polyder(p, p2)

f = deconv(c, d)

g = poly2sym(f)























