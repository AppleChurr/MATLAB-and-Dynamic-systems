function singraph(x)
% y = exp(-xt)sin(xt) �׷��� ��� �Լ� ����
% �Է� ������ x
% ��� ������ ���� �׷����� ���� ���
% ���� �̸��� singraph.m
t = 0 : 0.01 : 10;
y = exp(-x.*t/10).*sin(x.*t);
plot(t, y), grid
xlabel('t (sec)'), ylabel('y (t)')
title('y = exp(-xt/10)sin(xt)�� �׸��� �Լ�����')


end

