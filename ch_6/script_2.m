% %% 6.2 기호 연산
% 
% %% 6.2.1 기호식
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
% %% 6.2.2 기호식의 형태 변경
% % expand : 수식을 전개한다.
% syms x a b
% expand(tan(a+b))
% 
% w = (x-a)*(x+b)*x^2
% 
% expand(w)
% 
% % collect : 식의 여러 항들 중 같은 차수의 변수를 포함하는 항을 모은다.
% syms x a b c
% s = (x+a)*(x+b)*(x+c)
% 
% collect(s)
% 
% % factor : 주어진 다항식을 보다 낮은 차수의 다항식의 곱으로 바꿔준다.
% 
% syms x a b c
% w = x^3 + (-a+b-c)*x^2 + (-a*b-(-a+b)*c)*x+a*b*c
% 
% factor(w)
% 
% % simplify : 원식보다 단순한 형태를 가진 식을 만든다
% syms x
% r = simplify((x+1)/(x^2-1))
% 
% % numden : 분모와 분자를 따로 표현해준다
% syms x
% s = (x^3-1)/(x-1)
% 
% [n, d] = numden(s)
% 
% t = simplify(s)
% 
% % finverse : 주어진 함수의 역함수를 생성한다
% syms x
% a = 1/(x-1)
% 
% a1 = finverse(a)
% 
% b = sym(sin(x))
% 
% b1 = finverse(b)
% 
% % compose : 합성함수를 생성한다.
% syms x
% s1 = sym(x^3+x^2+1)
% 
% s2 = sym(cos(x))
% 
% s = compose(s1, s2)
% 
% % taylor : 주어진 함수의 Taylor 급수를 생성한다.
% % pretty : 기호식을 수학식과 닮은 형태로 출력한다.
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
% %% 6.2.3 기호식의 미분과 적분
% % diff(s) : 기호식 s를 미분한다.
% % diff(s, n) : n차 도함수를 구한다.
% % diff(s, y) : 식 s를 y에 대해 미분한다.
% % diff(s, t, 2) : 식 s를 t에 대해서 2번 미분한다.
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
% % int(s) : 기호식 s를 적분한다.
% % int(s, y) : 식 s를 y에 대해서 적분한다.
% % int(s, m, n) : 기호식 s를 m부터 n까지 적분한다(정적분).
% % eval : 수식을 계산해준다.
% 
% syms x t
% b1 = int(t/x)
% 
% b2 = int(t/x, t)
% 
% b3 = int(exp(2*x), 1, 3)
% 
% eval(b3)

%% 6.2.4 대수 방정식의 해 구하기
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