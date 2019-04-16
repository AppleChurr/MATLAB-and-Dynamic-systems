% 직선 운동을 하는 질략의 가속도 변화 그래프

clear; clf; hold off % 그래프 초기화

hold on % hold on
grid on % 그리드 온
title('가속도의 변화'); % 제목
xlabel('t (sec)'); % x축 라벨
ylabel('a (m/s^2)'); % y축 라벨

for t = 0 : 0.1 : 50 % 시간 범위 설정
    if(t <= 10) % t가 10보다 작거나 같을 때
        a = 0;
    elseif(t <= 20) % t가 20보다 작거나 같을 때
        a = -5;
    elseif(t <= 40) % t가 40보다 작거나 같을 때
        a = 0;
    elseif(t <= 45) % t가 45보다 작거나 같을 때
        a = 3;
    else % 나머지(t가 50보다 작거나 같을 때)
        a = 5;
    end
    plot(t, a, '.'); % 그래프 출력
end
axis([0 50 -6 4]); % 축 범위 설정