
% Loading the LNA-1 - Variables Results
load('C:\Users\LabPC\Desktop\Measurements\2021\20210422\LNA1\Meas1_lr\LNA1_waves_td_Pm5dBm.mat');
load('C:\Users\LabPC\Desktop\Measurements\2021\20210422\LNA1\Meas1_lr\LNA1_waves_td_0dBm.mat');
load('C:\Users\LabPC\Desktop\Measurements\2021\20210422\LNA1\Meas1_lr\LNA1_waves_td_1dBm.mat');
load('C:\Users\LabPC\Desktop\Measurements\2021\20210422\LNA1\Meas1_lr\LNA1_waves_td_2dBm.mat');
load('C:\Users\LabPC\Desktop\Measurements\2021\20210422\LNA1\Meas1_lr\LNA1_waves_td_3dBm.mat');

InputPath = -12.18;
OutputPath = -11.74;
FilterPath = -66.3;
CouplerPath = -11;

% Rename Variables @ other Name

Gain_m5dBmRFLNA1 = load("C:\Users\LabPC\Desktop\Measurements\2021\20210422\LNA1\Meas1_lr\LNA1_waves_td_Pm5dBm.mat", 'Gain_m5dBm'); % Load in ONLY the variable.
Gain_m5dBm_RFLNA1 = Gain_m5dBmRFLNA1.Gain_m5dBm;  % Assign it to a new variable with different name.
GainDUT_m5dBm_LNA1 = Gain_m5dBm_RFLNA1 - InputPath - OutputPath;
figure(1)
plot(dataX_m5dBm, GainDUT_m5dBm_LNA1, 'b');
hold on


Gain_0dBmRFLNA1 = load("C:\Users\LabPC\Desktop\Measurements\2021\20210422\LNA1\Meas1_lr\LNA1_waves_td_0dBm.mat", 'Gain_0dBm'); % Load in ONLY the  variable.
Gain_0dBm_RFLNA1 = Gain_0dBmRFLNA1.Gain_0dBm;  % Assign it to a new variable with different name.
GainDUT_0dBm_LNA1 = Gain_0dBm_RFLNA1 - InputPath - OutputPath;
figure(2)
plot(dataX_0dBm, GainDUT_0dBm_LNA1, 'b');
hold on

Gain_1dBmRFLNA1 = load("C:\Users\LabPC\Desktop\Measurements\2021\20210422\LNA1\Meas1_lr\LNA1_waves_td_1dBm.mat", 'Gain_1dBm'); % Load in ONLY the  variable.
Gain_1dBm_RFLNA1 = Gain_1dBmRFLNA1.Gain_1dBm;  % Assign it to a new variable with different name.
GainDUT_1dBm_LNA1 = Gain_1dBm_RFLNA1 - InputPath - OutputPath;
figure(3)
plot(dataX_1dBm, GainDUT_1dBm_LNA1, 'b');
hold on

Gain_2dBmRFLNA1 = load("C:\Users\LabPC\Desktop\Measurements\2021\20210422\LNA1\Meas1_lr\LNA1_waves_td_2dBm.mat", 'Gain_2dBm'); % Load in ONLY the  variable.
Gain_2dBm_RFLNA1 = Gain_2dBmRFLNA1.Gain_2dBm;  % Assign it to a new variable with different name.
GainDUT_2dBm_LNA1 = Gain_2dBm_RFLNA1 - InputPath - OutputPath;
figure(4)
plot(dataX_2dBm, GainDUT_2dBm_LNA1, 'b');
hold on

Gain_3dBmRFLNA1 = load("C:\Users\LabPC\Desktop\Measurements\2021\20210422\LNA1\Meas1_lr\LNA1_waves_td_3dBm.mat", 'Gain_3dBm'); % Load in ONLY the  variable.
Gain_3dBm_RFLNA1 = Gain_3dBmRFLNA1.Gain_3dBm;  % Assign it to a new variable with different name.
GainDUT_3dBm_LNA1 = Gain_3dBm_RFLNA1 - InputPath - OutputPath;
figure(5)
plot(dataX_3dBm, GainDUT_3dBm_LNA1, 'b');
hold on


%%%% ==============================================================================
%Loading the LNA-2 - Variables Results
load('C:\Users\LabPC\Desktop\Measurements\2021\20210422\LNA2\Meas1_lr\LNA2_waves_td_Pm10dBm.mat');
load('C:\Users\LabPC\Desktop\Measurements\2021\20210422\LNA2\Meas1_lr\LNA2_waves_td_Pm5dBm.mat');
load('C:\Users\LabPC\Desktop\Measurements\2021\20210422\LNA2\Meas1_lr\LNA2_waves_td_0dBm.mat');
load('C:\Users\LabPC\Desktop\Measurements\2021\20210422\LNA2\Meas1_lr\LNA2_waves_td_1dBm.mat');
load('C:\Users\LabPC\Desktop\Measurements\2021\20210422\LNA2\Meas1_lr\LNA2_waves_td_2dBm.mat');
load('C:\Users\LabPC\Desktop\Measurements\2021\20210422\LNA2\Meas1_lr\LNA2_waves_td_3dBm.mat');

Gain_m5dBmRFLNA2 = load("C:\Users\LabPC\Desktop\Measurements\2021\20210422\LNA2\Meas1_lr\LNA2_waves_td_Pm5dBm.mat", 'Gain_m5dBm'); % Load in ONLY the  variable.
Gain_m5dBm_RFLNA2 = Gain_m5dBmRFLNA2.Gain_m5dBm;  % Assign it to a new variable with different name.
GainDUT_m5dBm_LNA2 = Gain_m5dBm_RFLNA2 - InputPath - OutputPath;
figure(1)
plot(dataX_m5dBm, GainDUT_m5dBm_LNA2, 'r');
hold on

xlabel('Time (sec)','FontSize',15);
ylabel('Small signal Gain response (dB)','FontSize',15);
legend( 'LNA1 under -5dBm/IQMod','LNA2 under -5dBm/IQMod');

Gain_0dBmRFLNA2 = load("C:\Users\LabPC\Desktop\Measurements\2021\20210422\LNA2\Meas1_lr\LNA2_waves_td_0dBm.mat", 'Gain_0dBm'); % Load in ONLY the variable.
Gain_0dBm_RFLNA2 = Gain_0dBmRFLNA2.Gain_0dBm;  % Assign it to a new variable with different name.
GainDUT_0dBm_LNA2 = Gain_0dBm_RFLNA2 - InputPath - OutputPath;
figure(2)
plot(dataX_0dBm, GainDUT_0dBm_LNA2, 'r');
hold on

xlabel('Time (sec)','FontSize',15);
ylabel('Small signal Gain response (dB)','FontSize',15);
legend( 'LNA1 under 0dBm/IQMod','LNA2 under 0dBm/IQMod');


Gain_1dBmRFLNA2 = load("C:\Users\LabPC\Desktop\Measurements\2021\20210422\LNA2\Meas1_lr\LNA2_waves_td_1dBm.mat", 'Gain_1dBm'); % Load in ONLY the variable.
Gain_1dBm_RFLNA2 = Gain_1dBmRFLNA2.Gain_1dBm;  % Assign it to a new variable with different name.
GainDUT_1dBm_LNA2 = Gain_1dBm_RFLNA2 - InputPath - OutputPath;
figure(3)
plot(dataX_1dBm, GainDUT_1dBm_LNA2, 'r');
hold on

xlabel('Time (sec)','FontSize',15);
ylabel('Small signal Gain response (dB)','FontSize',15);
legend( 'LNA1 under 1dBm/IQMod','LNA2 under 1dBm/IQMod');


Gain_2dBmRFLNA2 = load("C:\Users\LabPC\Desktop\Measurements\2021\20210422\LNA2\Meas1_lr\LNA2_waves_td_2dBm.mat", 'Gain_2dBm'); % Load in ONLY the variable.
Gain_2dBm_RFLNA2 = Gain_2dBmRFLNA2.Gain_2dBm;  % Assign it to a new variable with different name.
GainDUT_2dBm_LNA2 = Gain_2dBm_RFLNA2 - InputPath - OutputPath;
figure(4)
plot(dataX_2dBm, GainDUT_2dBm_LNA2, 'r');
hold on

xlabel('Time (sec)','FontSize',15);
ylabel(' Small signal Gain response (dB)','FontSize',15);
legend( 'LNA1 under 2dBm/IQMod','LNA2 under 2dBm/IQMod');



Gain_3dBmRFLNA2 = load("C:\Users\LabPC\Desktop\Measurements\2021\20210422\LNA2\Meas1_lr\LNA2_waves_td_3dBm.mat", 'Gain_3dBm'); % Load in ONLY the variable.
Gain_3dBm_RFLNA2 = Gain_3dBmRFLNA2.Gain_3dBm;  % Assign it to a new variable with different name.
GainDUT_3dBm_LNA2 = Gain_3dBm_RFLNA2 - InputPath - OutputPath;
figure(5)
plot(dataX_3dBm, GainDUT_3dBm_LNA2, 'r');
hold on

xlabel('Time (sec)','FontSize',15);
ylabel(' Small signal Gain response (dB)','FontSize',15);
legend( 'LNA1 under 2dBm/IQMod','LNA2 under 2dBm/IQMod');