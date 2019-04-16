% break 명령 사용의 예
% 지정 범위 외에 값을 입력하면 while 구문을 탈출 함.

r = 0;

while r < 100
    r = input('0 보다 크고 100 보다 작은 반지름을 입력하시오. : ');
    if r <= 0 || r > 100, break, end
    vol = (4/3)*pi*r^3;
    fprintf('구의 부피 = %7.3f\n', vol)
end