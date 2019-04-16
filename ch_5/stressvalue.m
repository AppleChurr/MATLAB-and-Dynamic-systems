function [sn, tnt] = stressvalue(theta, sx, sy, txy)
% 다중 입력을 받아서 다중 출력을 보내는 함수파일 예
% 응력 변환식을 이용하여 각 theta에 따라 변하는
% 수직응력과 전단응력을 구하는 함수 파일이다.
% 입력 변수 1) 각 theta, 2) 수직응력 sx, sy; 전단응력 txy
% 출력변수는 각 theta에서의 수직응력 sn과 전단응력 tnt이다.
% 파일명은 stressvalue.m이다.
sn = (sx+sy)/2 + (sx-sy)/2 * cos(2*theta*pi/180) + txy*sin(2*theta*pi/180);
tnt = -(sx-sy)/2 * sin(2*theta*pi/180) + txy*cos(2*theta*pi/180);
end

