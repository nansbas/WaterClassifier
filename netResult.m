function [ predict ] = netResult( input, weight1, bias1, weight2, bias2 )
%   用训练后的神经网络，得到某输入的预测结果

[inputDimension, inputNumber] = size(input); 
[outputDimension,a] = size(bias2);

predict = zeros(outputDimension,inputNumber);

for i = 1:inputNumber
    result = sigmoid(weight2*sigmoid(weight1*input(:,i)+bias1)+bias2);
    %result中最大的分量为预测结果
    max = 1;
    for j = 2:outputDimension
        if result(max) < result(j)
            max = j;
        end
    end
    predict(max,i) = 1;
end

end

