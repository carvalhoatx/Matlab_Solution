
% load('C:\Users\LabPC\Desktop\Measurements\20210422\LNA2\LNA2_waves_td_Pm20dBm.mat');
% load('C:\Users\LabPC\Desktop\Measurements\20210422\LNA2\LNA2_waves_td_Pm15dBm.mat');
% load('C:\Users\LabPC\Desktop\Measurements\20210422\LNA2\LNA2_waves_td_Pm10dBm.mat');
% load('C:\Users\LabPC\Desktop\Measurements\20210422\LNA2\LNA2_waves_td_Pm5dBm.mat');
% load('C:\Users\LabPC\Desktop\Measurements\20210422\LNA2\LNA2_waves_td_0dBm.mat');

load('C:\Users\LabPC\Desktop\Measurements\2021\20210422\LNA2\Meas1_lr\LNA2_waves_td_Pm20dBm.mat');
load('C:\Users\LabPC\Desktop\Measurements\2021\20210422\LNA2\Meas1_lr\LNA2_waves_td_Pm15dBm.mat');
load('C:\Users\LabPC\Desktop\Measurements\2021\20210422\LNA2\Meas1_lr\LNA2_waves_td_Pm10dBm.mat');

load('C:\Users\LabPC\Desktop\Measurements\2021\20210422\LNA2\Meas1_lr\LNA2_waves_td_Pm5dBm.mat');
load('C:\Users\LabPC\Desktop\Measurements\2021\20210422\LNA2\Meas1_lr\LNA2_waves_td_0dBm.mat');
load('C:\Users\LabPC\Desktop\Measurements\2021\20210422\LNA2\Meas1_lr\LNA2_waves_td_1dBm.mat');
load('C:\Users\LabPC\Desktop\Measurements\2021\20210422\LNA2\Meas1_lr\LNA2_waves_td_2dBm.mat');
load('C:\Users\LabPC\Desktop\Measurements\2021\20210422\LNA2\Meas1_lr\LNA2_waves_td_3dBm.mat');

% losses in coupler
InputPath = -12.18;
OutputPath = -11.74;
FilterPath = -66.3;
CouplerPath = -11;

% % % figure(1);
% % % % yyaxis left;
% % % % add the losses in the system
% % % % PulsePower is read over the coupled path of the coupler
% % % % we have -11 dB losses
% % % % correct these losses: PulsePower measured + (-11dB)
% % % plot(dataX_m20dBm, PulsePower_m20dBm-(FilterPath+CouplerPath), 'b');
% % % hold on;
% % % grid on;
% % % plot(dataX_m15dBm, PulsePower_m15dBm-(FilterPath+CouplerPath), 'r');
% % % hold on;
% % % plot(dataX_m10dBm, PulsePower_m10dBm-(FilterPath+CouplerPath), 'g');
% % % hold on;
% % % plot(dataX_m5dBm, PulsePower_m5dBm-(FilterPath+CouplerPath), 'c');
% % % hold on;
% % % 
% % % plot(dataX_0dBm, PulsePower_0dBm-(FilterPath+CouplerPath), 'k');
% % % hold on;
% % % 
% % % 
% % % plot(dataX_3dBm, PulsePower_3dBm-(FilterPath+CouplerPath), 'r');
% % % hold on;
% % % 

% ylabel('Jammer power at IQ-Mod output (dBm)');
% yyaxis right

% add the losses in the system
% Gain is read over the coupler
% we have at the input path of DUT -12.1 dB losses
% we have at the output path of DUT -11.7 dB losses
% correct these losses: Gain measured = Power (from PNAX) + (-12.1dB) +
% Gain(DUT) + (-11.7dB)
% Pout_DUT = InputPath + Gain_DUT + OutputPath;
% Gain_m20dBm = Pout - Pavs;
GainDUT_m20dBm = Gain_m20dBm - InputPath - OutputPath;
GainDUT_m15dBm = Gain_m15dBm - InputPath - OutputPath;
GainDUT_m10dBm = Gain_m10dBm - InputPath - OutputPath;
GainDUT_m5dBm = Gain_m5dBm - InputPath - OutputPath;
GainDUT_0dBm = Gain_0dBm - InputPath - OutputPath;


GainDUT_3dBm = Gain_3dBm - InputPath - OutputPath;

figure(1);
% % plot(dataX_m20dBm, GainDUT_m20dBm, 'b');
% % hold on;
% % plot(dataX_m15dBm, GainDUT_m15dBm, 'r');
% % hold on;
% % plot(dataX_m10dBm, GainDUT_m10dBm, 'g');
% % hold on
plot(dataX_m5dBm, GainDUT_m5dBm, 'b');
hold on
plot(dataX_0dBm, GainDUT_0dBm, 'r');

hold on
plot(dataX_3dBm, GainDUT_3dBm, 'k');
grid on

xlim([0 0.3]);
ylim([-20 20]);

xlabel('Time (sec)','FontSize',18);
ylabel('Small Signal Gain Response (dB)','FontSize',18);

leg=legend('23.8 dBm', '28.8 dBm', '31.8 dBm');    % Standard Legend creating....
% set(leg, 'Box', 'off' ) ;  % Turn the Box legend OFF "EdgeColor" 
set( leg, 'Box', 'off', 'Color', [0.8,0.8,0.8], 'EdgeColor', get( leg, 'Color' ),'FontSize',18) ;   % change box color opaque 
set(gca,'FontSize',20);  % font size of numbers axis - size




% create a new pair of axes inside current figure
% axes('position',[.65 .075 .25 .35])
axes('position',[.40 .20 .49 .40])    % Box/plot position inside fig.
box on % put box around new pair of axes

indexOfInterest = (dataX_3dBm < 0.04) & (dataX_3dBm > 0); % range of t near/inside

plot(dataX_3dBm(indexOfInterest),GainDUT_3dBm(indexOfInterest),'k') % plot on new axes
hold on
grid on

set(gca,'FontSize',20);  % font size of numbers axis - size

indexOfInterest = (dataX_0dBm < 0.04) & (dataX_0dBm > 0); % range of t near/inside
plot(dataX_0dBm(indexOfInterest),GainDUT_0dBm(indexOfInterest),'r') % plot on new axes
hold on

indexOfInterest = (dataX_m5dBm < 0.04) & (dataX_m5dBm > 0); % range of t near/inside
plot(dataX_m5dBm(indexOfInterest),GainDUT_m5dBm(indexOfInterest),'b') % plot on new axes
hold on


ylim([-15 15])  % resolution limits @ y-axis
xticks(0:0.01:0.05);   % specify axis spacing @ X-axis 
