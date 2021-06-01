%  Noise figure and S21(Gain) measured.

% NOTE:  Mandatory the s2p file with Noise measurement, otherwise, it doesnt work !!!

% meas = read(rfdata.data, 'C:\Users\LabPC\Desktop\Measurements\2021\20210519\LNAC15\Noise_LNAC15_AP1.s2p');
meas = read(rfdata.data, 'C:\Users\LabPC\Desktop\Measurements\2021\20210526\Noise_LNAC5_AP2_20210526.s2p');
%% Loading LNAC15 
meas2 = read(rfdata.data, 'C:\Users\LabPC\Desktop\Measurements\2021\20210526\Noise_LNAC15_AP2_20210526.s2p');


hlineType1=plot(meas,'s21','db');   % Plot dB(S21) in XY plane.
hlineType1.Color = 'r';
title('LNAC5 & LNAC15')
xlabel('Frequency (GHz)') 
ylabel('Magnitude (dB)') 

hold on


hlineType = plot(meas,'NF','db');
hlineType.Color = 'b';
hold on

hlineType2=plot(meas2,'s21','db');   % Plot dB(S21) in XY plane.
hlineType2.Color = 'g';
hold on

hlineType3 = plot(meas2,'NF','db');
hlineType3.Color = 'k';
hold off

% % % legend('S21','NF')
% hlineType1.Annotation.LegendInformation.IconDisplayStyle = 'off';
% hlineType.Annotation.LegendInformation.IconDisplayStyle = 'off';
% hlineType2.Annotation.LegendInformation.IconDisplayStyle = 'off';
% hlineType3.Annotation.LegendInformation.IconDisplayStyle = 'off';




 leg=legend('S21-LNAC5','NF-LNAC5','S21-LNAC15','NF-LNAC15');
% set(leg, 'Box', 'off' ) ;
set( leg, 'Box', 'on', 'Color', [0.8,0.8,0.8], 'EdgeColor', get( leg, 'Color' )) ;

% text(10.7, 30.75, 'S21-LNAC5');
% text(10.1, 30.78, '_____', 'Color', 'red');

%  load('C:\Users\LabPC\Desktop\Measurements\2021\20210526\Noise_LNAC5_AP2_20210526.mat');