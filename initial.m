%% ����ԭʼ����

clear all;

%�ܹ�����������
number = 25;

%====================================����====================================%

input = zeros(6,number);     %������������
output = zeros(4,number);   %�����������

%============================================================================%

%��������
[NUM,TXT,RAW] = xlsread('����');

%��ԭʼ������ɸѡ����
input = NUM(:,4:9)';
stringOutput = TXT(2:number+1,10);
stringOutput = cell2mat(stringOutput);  %�Ѷ����cell���;���ת��Ϊchar����
for i = 1:number
    switch stringOutput(i)
        case '��'
            output(:,i) = [1;0;0;0];
        case '��'
            output(:,i) = [0;1;0;0];
        case '��'
            output(:,i) = [0;0;1;0];
        otherwise
            output(:,i) = [0;0;0;1];
    end
end
    