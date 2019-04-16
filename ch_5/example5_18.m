% While / end를 활용하여 그래프 그리는 프로그램이다.
% 주어진 그래프를 푸리에 급수로 근사화하여 그란다.
t = -5 : 0.01 : 5; % 시간 t 지정
n = 1;
f = 0;
m = input('m = (1보다 큰 홀수를 입력하시오)     ');

while n <= m
    f = f + (8/(n*pi))*sin((n*pi*t)/5); % f 를 계산
    n = n + 2;    
end

string = ['m = ' num2str(m) '일 때']; % 그래프 제목 문자열

plot(t, f)
title(string);xlabel('t (sec)');ylabel('f(t)'); %그래프 제목, 축 이름 표시
grid on
set(gcf, 'color', 'w')