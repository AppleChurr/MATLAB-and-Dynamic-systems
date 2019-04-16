function fsum = coshfun(x, m)
% cosh를 Tayor 시리즈로 근사화.
% 입력변수는 x와 m
% 출력변수는 fsum
% 함수 파일명은 coshfun.m

fsum = 0; % 시그마 합 초기화
for n = 0 : m % m에 따른 횟수 조절
    f = x.^(2*n) / factorial(2*n); % 함수
    fsum = fsum + f; % 시그마 합
end



end

