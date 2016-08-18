%% 读入原始数据

clear all;

%总共的样本数量
number = 25;

%====================================变量====================================%

input = zeros(6,number);     %保存输入样本
output = zeros(4,number);   %保存输出样本

%============================================================================%

%读入数据
[NUM,TXT,RAW] = xlsread('数据');

%从原始数据中筛选数据
input = NUM(:,4:9)';
stringOutput = TXT(2:number+1,10);
stringOutput = cell2mat(stringOutput);  %把读入的cell类型矩阵转化为char矩阵
for i = 1:number
    switch stringOutput(i)
        case 'Ⅰ'
            output(:,i) = [1;0;0;0];
        case 'Ⅱ'
            output(:,i) = [0;1;0;0];
        case 'Ⅲ'
            output(:,i) = [0;0;1;0];
        otherwise
            output(:,i) = [0;0;0;1];
    end
end
    