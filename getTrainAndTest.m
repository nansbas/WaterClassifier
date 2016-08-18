%% 获得训练集和测试集

%原始输入数据：input
%原始输出数据：output

%选取作为训练集的样本数
trainNumber = 20;
%选取作为测试集的样本数
testNumber = number - trainNumber;

%=========================变量================================

%训练集
trainInput = zeros(6,trainNumber);
trainOutput = zeros(4,trainNumber);
%测试集
testInput = zeros(6,testNumber);
testOutput = zeros(4,testNumber);

%=============================================================

%归一化操作
input = mapminmax(input);
%随机选取trainNumber个样本当做训练集
rand = rand(1,number);
[sorted,index] = sort(rand);
trainIndex = index(1,1:trainNumber);
testIndex = index(1,trainNumber+1:number);
trainInput = input(:,trainIndex);
trainOutput = output(:,trainIndex);
testInput = input(:,testIndex);
testOutput = output(:,testIndex);
