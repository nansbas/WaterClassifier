%% ���ѵ�����Ͳ��Լ�

%ԭʼ�������ݣ�input
%ԭʼ������ݣ�output

%ѡȡ��Ϊѵ������������
trainNumber = 20;
%ѡȡ��Ϊ���Լ���������
testNumber = number - trainNumber;

%=========================����================================

%ѵ����
trainInput = zeros(6,trainNumber);
trainOutput = zeros(4,trainNumber);
%���Լ�
testInput = zeros(6,testNumber);
testOutput = zeros(4,testNumber);

%=============================================================

%��һ������
input = mapminmax(input);
%���ѡȡtrainNumber����������ѵ����
rand = rand(1,number);
[sorted,index] = sort(rand);
trainIndex = index(1,1:trainNumber);
testIndex = index(1,trainNumber+1:number);
trainInput = input(:,trainIndex);
trainOutput = output(:,trainIndex);
testInput = input(:,testIndex);
testOutput = output(:,testIndex);
