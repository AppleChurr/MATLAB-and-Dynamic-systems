function [disp, vel] = drop(g, v0, t)
% 자유 낙하하는 물체의 속도와 낙하거리를 구하는 함수파일
% 입력 변수는 1) 중력가속도 g, 2) 초기속도 v0, 3) 시간 t
% 출력변수는 변위 disp, 속도 vel
% 위 방향은 (+), 아래 방향은 (-)임
disp = v0*t - 0.5*g*t.^2;
vel = v0 - g*t;
end

