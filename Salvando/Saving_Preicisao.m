
dataX = 1:0.01:100;

pulse=sin(dataX);
Gain=cos(dataX);

plot(dataX,pulse);
hold on

plot(dataX,Gain);


% =====   Saving Measurement
fileID = fopen('C:\Users\LabPC\Desktop\SSGain_response_RFpower_NegxxdBm.txt','w'); % name of the data File
t = datetime('now','TimeZone','local','Format','d-MMM-y HH:mm:ss'); %  save the measurement date and time
fprintf(fileID, '%s\r\n', t); % print time and hour 
fprintf(fileID, '%s\r\n', 'Meas. Pulse Power provided by IQ-Mod and Small signal Gain Response'); % Data header information 
fprintf(fileID, '%s\r\n', 'CW @ 8.5GHz and -20dBm'); % Data header information  
fprintf(fileID, '\r\n'); % let empty one row
fprintf(fileID,'%5s\t %5s %20s\t\n\n', 'Time(Sec.)', 'Gain(dB)', 'Pout(dBm)'); % measured variables
fprintf(fileID,'%g %15s %15d\n ', [dataX(:),pulse(:),Gain(:)].'); % measured values

fclose(fileID);
%% Ending Saving