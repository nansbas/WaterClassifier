%% Ö÷³ÌÐò

initial;
getTrainAndTest;
[weight1, bias1, weight2, bias2] = bpNet(trainInput,trainOutput,7,0.01,30);
predict = netResult(testInput, weight1, bias1, weight2, bias2);

rightNumber = 0;
for i = 1:testNumber
    if predict(:,i)==testOutput(:,i)
        rightNumber = rightNumber + 1;
    end
end

rightNumber
rightNumber/testNumber
    