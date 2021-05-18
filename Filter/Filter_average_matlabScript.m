load('C:\Processing_Data_Meas\Data\Matlab_AVG_Filtering_Filter\LNA1_waves_td_0dBm.mat');


figure(1)
plot(dataX_0dBm,PulsePower_0dBm);
hold on
xlabel('time(sec)');
ylabel('Power(dBm)');

z = medfilt1(PulsePower_0dBm,8);        % Median Filter 

figure(1)
plot (dataX_0dBm,z,'k')
xlabel('time(sec)');
ylabel('Power(dBm)');


legend('Before Filtering', 'After Filtering');