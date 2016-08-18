initial;
getTrainAndTest;
% 把输出转化为vector
trainOutputSVM = zeros(trainNumber,1);
testOutputSVM = zeros(testNumber,1);
for i=1:trainNumber
    if trainOutput(:,i)==[1;0;0;0]
        trainOutputSVM(i,:)=1;
    else if trainOutput(:,i)==[0;1;0;0]
            trainOutputSVM(i,:)=2;
        else if trainOutput(:,i)==[0;0;1;0]
                trainOutputSVM(i,:)=3;
            else
                trainOutputSVM(i,:)=4;
            end
        end
    end
end
for i=1:testNumber
    if testOutput(:,i)==[1;0;0;0]
        testOutputSVM(i,:)=1;
    else if testOutput(:,i)==[0;1;0;0]
            testOutputSVM(i,:)=2;
        else if testOutput(:,i)==[0;0;1;0]
                testOutputSVM(i,:)=3;
            else
                testOutputSVM(i,:)=4;
            end
        end
    end
end

model = svmtrain(trainOutputSVM,trainInput');
[predict,accuracy,decision_values] = svmpredict(testOutputSVM,testInput',model);