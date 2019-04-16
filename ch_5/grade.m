function a = grade(x)
% 학점을 주는 프로그램
% 입력 변수는 x
% 함수 파일 명은 grade.m

if x > 94
    a = 'A+';
elseif x > 89
    a = 'Ao';
elseif x > 84
    a = 'B+';
elseif x > 79
    a = 'Bo';
elseif x > 74
    a = 'C+';
elseif x > 69
    a = 'Co';
elseif x > 64
    a = 'D+';
elseif x > 59
    a = 'Do';
else
    a = 'F';
end

end

