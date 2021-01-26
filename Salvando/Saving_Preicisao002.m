
dataX = 1:0.01:100;

pulse=sin(dataX);
Gain=cos(dataX);

plot(dataX,pulse);
hold on

plot(dataX,Gain);


% =====   Saving Measurement
fileID = fopen('C:\Users\LabPC\Desktop\SSGain_response_RFpower_002.txt','w'); % name of the data File
t = datetime('now','TimeZone','local','Format','d-MMM-y HH:mm:ss'); %  save the measurement date and time
fprintf(fileID, '%s\r\n', t); % print time and hour 
fprintf(fileID, '%s\r\n', 'Meas. Pulse Power provided by IQ-Mod and Small signal Gain Response'); % Data header information 
fprintf(fileID, '%s\r\n', 'CW @ 8.5GHz and -20dBm'); % Data header information  
fprintf(fileID, '\r\n'); % let empty one row
fprintf(fileID,'%s\t %s\t %s\t\n', 'Time(Sec.)', 'Gain(dB)', 'Pout(dBm)'); % measured variables
fprintf(fileID,' %f\t %f\t %f\t\n  ', [dataX(:),pulse(:),Gain(:)].'); % measured values

% fprintf(fileID,'%s\t %s\t %s\t\n', 'Freq(Hz)', 'Inc. Wave(dBm)', 'Reflect. Wave(dBm)'); % measured variables
% fprintf(fileID,' %f\t %f\t %f\t\n ', [dataX(:),incidentWave(:),reflectedWave(:)].'); % measured values


fclose(fileID);
%% Ending Saving