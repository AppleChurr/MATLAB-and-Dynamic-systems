% While / end�� Ȱ���Ͽ� �׷��� �׸��� ���α׷��̴�.
% �־��� �׷����� Ǫ���� �޼��� �ٻ�ȭ�Ͽ� �׶���.
t = -5 : 0.01 : 5; % �ð� t ����
n = 1;
f = 0;
m = input('m = (1���� ū Ȧ���� �Է��Ͻÿ�)     ');

while n <= m
    f = f + (8/(n*pi))*sin((n*pi*t)/5); % f �� ���
    n = n + 2;    
end

string = ['m = ' num2str(m) '�� ��']; % �׷��� ���� ���ڿ�

plot(t, f)
title(string);xlabel('t (sec)');ylabel('f(t)'); %�׷��� ����, �� �̸� ǥ��
grid on
set(gcf, 'color', 'w')