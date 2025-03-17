clc
clear all;
close all;
data=readmatrix('data.xlsx','sheet','data','range','B2:B35041');
norm_data=(data-mean(data))/std(data);
xTrain=norm_data(1:34847);
yTrain=norm_data(2:34848);
xTrain=norm_data(34849:34944);
yTrain=norm_data(34945:35040);
rng(1)
numHiddenUnits=128;
learningRate=0.01;
L2Regularization=0.001;
mini_batch_size=32;
inputSize=1;
numResponses=1;
epoch=200;
layers=[
    sequenceInputLayer(inputSize)
    lstmLayer(numHiddenUnits)
    fullyConnectedLayer(numResponses)
    regressionLayer
    ];
options=trainingOptions('adam', ...
    'MaxEpochs',epoch, ...
    'MiniBatchSize',mini_batch_size, ...
    'LearningRateSchedule','piecewise', ...
    'InitialLearnRate',learningRate, ...
    'L2Regularization',L2Regularization);
net=trainNetwork(xTrain,yTrain,layers,options);
forecast_norm=predict(net,xtest);
forecast=(forecast_norm*std(data))+mean(data);
MAE=mean(abs(actual-forecast));
RMSE=sqrt(mean((actual-forecast).^2));
MAPE=mean(abs((actual-forecast)./actual))*100;
fprintf('mean absolute error(MAE): %.4f MW\n',MAE);
fprintf('Root mean squared error(RMSE): %.4f MW\n',RMSE);
fprintf('Mean absolute percentage error(MAPE): %.2f%%\n',MAPE);
figure
plot(yTest,'MarkerSize',3,'Marker','o')
hold on
plot(forecast,'MarkerSize',4,'Marker','.')
xlim([1 forecast_steps])
xlabel('time(minute)')
ylabel('wind power(MW)')
legend('Actual','ARIMA Forecast','Location','northoutside','Orientation','horizontal')