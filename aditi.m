clc;
clear all;
data=readmatrix("data.xlsx",'Sheet','data','Range','B2:B34945');
norm_data=(data-mean(data))/std(data);
p=3;
d=2;
q=2;
Mdl=arima(p,d,q);
estMdl=estimate(Mdl,norm_data,'Display','off');
actual=readmatrix("data.xlsx",'Sheet','data','Range','B34946:B35041');
forecast_steps=length(actual);
forecast_norm=forecast(EstMdl,forecast_steps,norm_data);
forecast=(forecast_norm*std(data))+mean(data);
MAE=mean(abs(actual-forecast));
RMSE=sqrt(mean((actual-forecast).^2));
MAPE=mean(abs((actual-forecast)./actual))*100;
fprintf(MAE);
fprintf(RMSE);
fprintf(MAPE);
figure
plot(actual,'MarkerSize',3,'Marker','o')
hold on
plot(forecast,'MarkerSize',4,'.')
xlim([1 forecast_steps])
xlabel('Time(Minute)')
ylabel('wind power(MW')




