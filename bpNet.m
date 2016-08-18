function [ weight1, bias1, weight2, bias2 ] = bpNet( trainInput, trainOutput, hideNumber, alpha, iteratorNumber )
%    bp神经网络

[layer1Number,trainNumber] = size(trainInput);
[layer3Number,trainNumber] = size(trainOutput);
layer2Number = hideNumber;

% 初始化权值
weight1 = -1 + 2 * rand(layer2Number,layer1Number);
weight2 = -1 + 2 * rand(layer3Number,layer2Number);
bias1 = -1 + 2 * rand(layer2Number,1);
bias2 = -1 + 2 * rand(layer3Number,1);

% 迭代iteratorNumber次
for k = 1:iteratorNumber
    dWeight1 = zeros(layer2Number,layer1Number);
    dBias1 = zeros(layer2Number,1);
    dBias2 = zeros(layer3Number,1);
    dWeight2 = zeros(layer3Number,layer2Number);
    for i=1:trainNumber
        layer1=trainInput(:,i);
        %隐含层输出
        z = weight1 * layer1 + bias1;
        layer2 = sigmoid(z);
        %输出层输出
        z=weight2 * layer2 + bias2;
        layer3 = sigmoid(z);
        
        %计算delta
        layer3Delta = (layer3 - trainOutput(:,i)) .*layer3.*(1-layer3);
        layer2Delta = weight2'*layer3Delta.*layer2.*(1-layer2);
    
        %计算梯度
        dWeight2 = dWeight2 + layer3Delta*layer2';
        dWeight1 = dWeight1 + layer2Delta*layer1';
        dBias2 = dBias2 + layer3Delta;
        dBias1 = dBias1 + layer2Delta;
    
        % 权值和阈值的更新
        weight2 = weight2 - alpha*dWeight2;
        bias2 = bias2 - alpha*dBias2;
        weight1 = weight1 - alpha*dWeight1;
        bias1 = bias1 - alpha*dBias1;
    
    end
end

end

