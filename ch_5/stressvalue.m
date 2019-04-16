function [sn, tnt] = stressvalue(theta, sx, sy, txy)
% ���� �Է��� �޾Ƽ� ���� ����� ������ �Լ����� ��
% ���� ��ȯ���� �̿��Ͽ� �� theta�� ���� ���ϴ�
% �������°� ���������� ���ϴ� �Լ� �����̴�.
% �Է� ���� 1) �� theta, 2) �������� sx, sy; �������� txy
% ��º����� �� theta������ �������� sn�� �������� tnt�̴�.
% ���ϸ��� stressvalue.m�̴�.
sn = (sx+sy)/2 + (sx-sy)/2 * cos(2*theta*pi/180) + txy*sin(2*theta*pi/180);
tnt = -(sx-sy)/2 * sin(2*theta*pi/180) + txy*cos(2*theta*pi/180);
end

