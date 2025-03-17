clc;
clear all;
close all
data=readmatrix('data.xlsx','Sheet','data','Range','B2:B35041');
norm_data=(data-mean(data))/std(data);
xtrain=norm_data(1:34847)';
ytrain=norm_data(2:34848)';
xtest=norm_data(34849:34944)';
ytest=data(34945:35040)';
rng(1)
numHiddenUnits=128;
learningRate=0.01;
L2regularization=0.001;
mini_batch_Size=32;

inputSize=1;
numResponses=1;
epoch=200;
   layers=[...
       sequenceInputLayer(inputSize)
       lstmlayer(numHiddenUnits)
       fullyConnectedLayer(numResponses)
       regressionLayer];
   options=trainingOptions('adam',...
       'MaxEpochs',epoch,...
       'MiniBatchSize',mini_batch_Size,...
       'LearnRateSchedule','piecewise',...
       'InitialLearnRate',learningRate,...
       'L2Regularization',L2regularization);

   net=trainNetwork(xTrain,yTrain,layers,options);
   forecast_norm=predict(net,xTest);
   forecast=(forecast_norm*std(data))+mean(data);
   MAE=mean(abs(ytest-forecast));
RMSE=sqrt(mean((ytest-forecast).^2));
MAPE=mean(abs((ytest-forecast)./actual))*100;
fprintf('mean absolute error(MAE): %.4f MW\n',MAE);
fprintf('Root mean squared error(RMSE): %.4f MW\n',RMSE);
fprintf('Mean absolute percentage error(MAPE): %.2f%%\n',MAPE);
figure
plot(ytest,'MarkerSize',3,'Marker','o')
hold on
plot(forecast,'MarkerSize',4,'Marker','.')
xlim([1 forecast_steps])
xlabel('time(minute)')
ylabel('wind power(MW)')
legend('Actual','ARIMA Forecast','Location','northoutside','Orientation','horizontal');
