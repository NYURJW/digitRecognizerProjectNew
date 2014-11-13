%classify hand writing digit using SVM classification algorithms
%%initialization

clear; close all; clc;

%%=====================Part1:loading and visualizing data==================
%load data from train.csv downloaded from kaggle Digit Recognizer
%Competition.

digitRecognizerTrainData=csvread('train.csv',1,0);
save('train.mat','digitRecognizerTrainData');
load('train.mat');

%find two digits that have the maximum and second maximum sample size and
%used them as data for binary classification using SVM.

uniqueListOfDigits=unique(digitRecognizerTrainData(:,1));
for i=1:length(uniqueListOfDigits)
     answer(i,:)=[uniqueListOfDigits(i) length(find(digitRecognizerTrainData(:,1)==uniqueListOfDigits(i)))];
end 
disp(answer);

[answerR,answerC]=sort(answer(:,2));
sortedAnswer=answer(answerC,:); 
pickedBinaryClass = sortedAnswer((end-1):end,1);

pickedSampleEqualTo1 = digitRecognizerTrainData(digitRecognizerTrainData(:,1)==1,:);
pickedSampleEqualTo7 = digitRecognizerTrainData(digitRecognizerTrainData(:,1)==7,:);
pickedSample = [pickedSampleEqualTo1;pickedSampleEqualTo7];
%%=====================Part2:optimize parameters used in SVM===============
