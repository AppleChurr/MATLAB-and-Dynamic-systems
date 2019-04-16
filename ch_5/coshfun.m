function fsum = coshfun(x, m)
% cosh�� Tayor �ø���� �ٻ�ȭ.
% �Էº����� x�� m
% ��º����� fsum
% �Լ� ���ϸ��� coshfun.m

fsum = 0; % �ñ׸� �� �ʱ�ȭ
for n = 0 : m % m�� ���� Ƚ�� ����
    f = x.^(2*n) / factorial(2*n); % �Լ�
    fsum = fsum + f; % �ñ׸� ��
end



end

