% %% 6.2 ��ȣ ����
% 
% %% 6.2.1 ��ȣ��
% a = sym('A')
% 
% b = sym('beta')
% 
% d = sym(100)
% 
% syms a func x
% 
% a
% func
% x
% 
% syms x a b c
% x = (-b+sqrt(b^2-4*a*c))/(2*a)
% 
% syms x
% y = 3*x^3 - 15*x^2 + 23*x - 1 - (x^3 - 6*x^2 + 11*x - 6)
% 
% a = sym(6); b = sym(4); c = sym(2);
% 
% d = a/b + sqrt(c)
% 
% e = a/c + sqrt(b)
% 
% a = sym(6); c = sym(2)
% 
% d = 5/2
% 
% e = a/c
% 
% f = a/c + d
% 
% a = 4/3
% 
% b = sym(5) * sqrt(4)
% 
% c = a+b
% 
% d = double(a+b)
% 
% %% 6.2.2 ��ȣ���� ���� ����
% % expand : ������ �����Ѵ�.
% syms x a b
% expand(tan(a+b))
% 
% w = (x-a)*(x+b)*x^2
% 
% expand(w)
% 
% % collect : ���� ���� �׵� �� ���� ������ ������ �����ϴ� ���� ������.
% syms x a b c
% s = (x+a)*(x+b)*(x+c)
% 
% collect(s)
% 
% % factor : �־��� ���׽��� ���� ���� ������ ���׽��� ������ �ٲ��ش�.
% 
% syms x a b c
% w = x^3 + (-a+b-c)*x^2 + (-a*b-(-a+b)*c)*x+a*b*c
% 
% factor(w)
% 
% % simplify : ���ĺ��� �ܼ��� ���¸� ���� ���� �����
% syms x
% r = simplify((x+1)/(x^2-1))
% 
% % numden : �и�� ���ڸ� ���� ǥ�����ش�
% syms x
% s = (x^3-1)/(x-1)
% 
% [n, d] = numden(s)
% 
% t = simplify(s)
% 
% % finverse : �־��� �Լ��� ���Լ��� �����Ѵ�
% syms x
% a = 1/(x-1)
% 
% a1 = finverse(a)
% 
% b = sym(sin(x))
% 
% b1 = finverse(b)
% 
% % compose : �ռ��Լ��� �����Ѵ�.
% syms x
% s1 = sym(x^3+x^2+1)
% 
% s2 = sym(cos(x))
% 
% s = compose(s1, s2)
% 
% % taylor : �־��� �Լ��� Taylor �޼��� �����Ѵ�.
% % pretty : ��ȣ���� ���нİ� ���� ���·� ����Ѵ�.
% syms x
% a1 = sym(exp(x)); a2 = sym(cos(x)); a3 = sym(sin(x));
% 
% b1 = taylor(a1)
% 
% pretty(b1)
% 
% b11 = taylor(a1, 'order', 7)
% 
% pretty(b11)
% 
% b2 = taylor(a2)
% 
% pretty(b2)
% 
% b22 = taylor(a2, 'order', 8)
% 
% pretty(b22)
% 
% b3 = taylor(a3, 'order', 7)
% 
% pretty(b3)
% 
% %% 6.2.3 ��ȣ���� �̺а� ����
% % diff(s) : ��ȣ�� s�� �̺��Ѵ�.
% % diff(s, n) : n�� ���Լ��� ���Ѵ�.
% % diff(s, y) : �� s�� y�� ���� �̺��Ѵ�.
% % diff(s, t, 2) : �� s�� t�� ���ؼ� 2�� �̺��Ѵ�.
% 
% syms x t n
% 
% a1 = diff(x^n)
% 
% a2 = diff(exp(-x*t))
% 
% a3 = diff(exp(-x*t), t)
% 
% a4 = diff(exp(-x*t), t, 3)
% 
% % int(s) : ��ȣ�� s�� �����Ѵ�.
% % int(s, y) : �� s�� y�� ���ؼ� �����Ѵ�.
% % int(s, m, n) : ��ȣ�� s�� m���� n���� �����Ѵ�(������).
% % eval : ������ ������ش�.
% 
% syms x t
% b1 = int(t/x)
% 
% b2 = int(t/x, t)
% 
% b3 = int(exp(2*x), 1, 3)
% 
% eval(b3)

%% 6.2.4 ��� �������� �� ���ϱ�
syms a b x y

fx = a*x + b*y

sol_x = solve(fx)
sol_y = solve(fx, y)

fx = x^3-6*x^2+11*x-6

sol_x = solve(fx)

syms x1 x2
fx1 = 2*x1+x2-5
fx2 = 3*x1-x2

[sol_x1, sol_x2] = solve(fx1, fx2)