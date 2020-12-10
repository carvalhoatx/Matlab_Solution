% Instrument Connection

% % % % Find a VISA-TCPIP object.
% % % 
obj1 = instrfind('Type', 'visa-tcpip', 'RsrcName', 'TCPIP0::K-Instr0000.local::inst0::INSTR', 'Tag', '');

% otherwise use the object that was found.
if isempty(obj1)

      obj1 = visa('NI', 'TCPIP0::K-Instr0000.local::inst0::INSTR');
else
    fclose(obj1);
    obj1 = obj1(1);
end


% % ==============================================================================================
% % ==============================================================================================

% % Configure instrument object, obji.
set(obj1, 'InputBufferSize', 16384);   % 
set(obj1, 'Timeout', 30);


%% Instrument Configuration and Control

% % % % % % % % % % Communicating with instrument object, obj1.
% % % % % % % % % data = query(obj1, '*IDN?');


% Connect to instrument object, obj1.
 fopen(obj1);
%% =========  Starting PNA Control  ============
 fprintf(obj1,'SYST:PRES'); 
pause(2)
fprintf(obj1,'DISP:WIND:TRAC1:DEL');     % Delete the Trace1, Standard S11

% pause(2)

%%  Reading the External Pulse provided by AWG
fprintf(obj1,'CALCulate:PARameter:DEFine:EXT "Meas1","b1,0"');   
fprintf(obj1,'DISPlay:WINDow:TRACe2:FEED "Meas1"');
query(obj1, '*OPC?');

% % % % % %   ====== CW Setting 
fprintf(obj1,'SENS:SWE:TYPE CW');           % others: LINear | LOGarithmic | POWer | CW 
fprintf(obj1,'SENS:FREQ 10e9');             % CW Frequency 
fprintf(obj1,':SOUR:POW -20');                  %  Power Level.   
fprintf(obj1,'SENS:SWE:POIN 201');              % N0 Points 
fprintf(obj1,'SENS:BWID:RES 10mhz');            % IF BW
%  pause(2)
  query(obj1, '*OPC?');
  fprintf(obj1, '*WAI');

fprintf(obj1,'SENS:SWE:PULS:PROF:STOP 60e-6');    % Stop Time 
fprintf(obj1, 'SENS:SWE:DWEL:SDEL 249.99e-3');    % Timing Delay PNA Screen

% fprintf(obj1,'SENS:SWE:PULS:PROF:STOP 12e-6');    % Stop Time 
% fprintf(obj1, 'SENS:SWE:DWEL:SDEL 250e-3');       % Timing Delay PNA Screen
query(obj1, '*OPC?');


% % ==========Setting  Trace-Position 
fprintf(obj1,'DISP:WIND:TRAC2:Y:RPOS 7');       % Reference Position 
  
  fprintf(obj1,':TRIG:SOUR EXT');    % External Trigger Enable 
  query(obj1, '*OPC?');
  fprintf(obj1, '*WAI');
    pause(1) 

%%=======================================
%%  Reading the Small signal Gain Response
fprintf(obj1,'CALCulate2:PARameter:DEFine:EXT "Gain","s43"');   
fprintf(obj1,'DISPlay:WINDow1:TRACe3:FEED "Gain"');
query(obj1, '*OPC?');

fprintf(obj1,'SYST:MACR:COPY:CHAN1 2');         % Copy channel 1 to ch-2
 
fprintf(obj1,'SENS2:FREQ 8.5e9');               % CW Frequency oper. @ ch-2
 
fprintf(obj1,'DISP:WIND:TRAC3:Y:RPOS 7');       % Reference Position 

    pause(1)
  query(obj1, '*OPC?');
  fprintf(obj1, '*WAI');

fprintf(obj1, 'SENS1:SWE:MODE HOLD');   % hold Ch-1   
pause(2)
  query(obj1, '*OPC?');
  fprintf(obj1, '*WAI');
  
fprintf(obj1, 'SENS2:SWE:MODE CONTinuous'); % Ch-2 @ continuous
 query(obj1, '*OPC?');
 fprintf(obj1, '*WAI');



%% ------------------   Setting in Order to Save the Measurement  
% fopen(obj1);
% Set byte order to swapped (little-endian) format
fprintf(obj1, 'FORM:BORD SWAP');    % Sets the data transfer to Swapped
% Set data type to real 64 bit binary block
fprintf(obj1, 'FORM REAL,64');
% Query selected measurement name
meas = query(obj1, 'CALC:PAR:SEL?', '%s\n' ,'%s');
 query(obj1, '*OPC?');
  fprintf(obj1, '*WAI');
%% ---------
% fprintf(obj1, 'CALC:PAR:SEL "CH1_S11_1"');
fprintf(obj1, 'CALC:PAR:SEL "Meas1"');

fprintf(obj1, 'CALC:DATA? FDAT');

pulse = binblockread(obj1, 'double');
fscanf(obj1, '%c', 1); %read back newline char at end of binblock
query(obj1, '*OPC?');
% pause(2)


% Read X axis data back from PNA.  
fprintf(obj1, 'CALC:X?');
dataX  = binblockread(obj1, 'double');
fscanf(obj1, '%c', 1); %read back newline char at end of binblock
% pause(2)
query(obj1, '*OPC?');
fprintf(obj1, '*WAI');

plot(dataX,pulse);
xlabel('Time (Sec.)')
ylabel('Pulse-Power(dBm) & Gain-Response(dB)')

hold on

% Select Gain to plot
fprintf(obj1, 'CALC2:PAR:SEL "Gain"');
% Read  formatted data back from PNA.  
fprintf(obj1, 'CALC2:DATA? FDAT');
Gain = binblockread(obj1, 'double');

fscanf(obj1, '%c', 1); %read back newline char at end of binblock
query(obj1, '*OPC?');
fprintf(obj1, '*WAI');

plot(dataX,Gain);

legend('Pulse','Gain' );


% =====   Saving Measurement
fileID = fopen('C:\Users\LabPC\Desktop\20201116\SSGain_response_RFpower_NegxxdBm_20201116.txt','w'); % name of the data File
t = datetime('now','TimeZone','local','Format','d-MMM-y HH:mm:ss'); %  save the measurement date and time
fprintf(fileID, '%s\r\n', t); % print time and hour 
fprintf(fileID, '%s\r\n', 'Meas. Pulse Power provided by IQ-Mod and Small signal Gain Response'); % Data header information 
fprintf(fileID, '%s\r\n', 'CW @ 8.5GHz and -20dBm'); % Data header information  
fprintf(fileID, '\r\n'); % let empty one row
fprintf(fileID,'%5s\t %5s %20s\t\n\n', 'Time(Sec.)', 'Gain(dB)', 'Pout(dBm)'); % measured variables
fprintf(fileID,'%g %15s %15d\n ', [dataX(:),pulse(:),Gain(:)].'); % measured values
fclose(fileID);
%% Ending Saving



fclose(obj1);




