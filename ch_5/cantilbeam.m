function y = cantilbeam(p, x)
% 캔틸레버 보의 처짐을 구하는 함수 파일임.
% 입력 변수는 1) 하중 P, 2) 처짐을 구하려는 보의 위치 x
% 출력 변수는 처짐량 y
% 함수 파일 이름은 cantilbeam.m
E = 100e09; % E = 100GPa
I = 1e-4; L = 5; %l = 10^(-4)m^4, L = 5m
y = -(p*x.^2/(6*E*I)).*(3*L-x); % 처짐량 계산
end

