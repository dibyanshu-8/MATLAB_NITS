clc
clear all;
close all;
data=readmatrix('data.xlsx','sheet','data','range','B2:B34945');
norm_data=(data-mean(data))/std(data);
p=3;
d=2;
q=2;
Mdl=arima(p,d,q);
stMd1=estimate(Mdl,norm_data,'Display','off');
actual=readmatrix('data.xlsx','Sheet','data','Range','B34946:B35041');
forecast_steps=length(actual);
forecast_norm=forecast(stMd1,forecast_steps,norm_data);
forecast=(forecast_norm*std(data))+mean(data);
MAE=mean(abs(actual-forecast));
RMSE=sqrt(mean((actual-forecast).^2));
MAPE=mean(abs((actual-forecast)./actual))*100;
fprintf('mean absolute error(MAE): %.4f MW\n',MAE);
fprintf('Root mean squared error(RMSE): %.4f MW\n',RMSE);
fprintf('Mean absolute percentage error(MAPE): %.2f%%\n',MAPE);
figure
plot(actual,'MarkerSize',3,'Marker','o')
hold on
plot(forecast,'MarkerSize',4,'Marker','.')
xlim([1 forecast_steps])
xlabel('time(minute)')
ylabel('wind power(MW)')
legend('Actual','ARIMA Forecast','Location','northoutside','Orientation','horizontal');