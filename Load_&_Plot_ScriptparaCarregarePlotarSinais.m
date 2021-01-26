
file=fopen('C:\Users\LabPC\Desktop\SSGain_response_RFpower_002.txt');
cdata=textscan(file,'%f%f%f%f%f%f%f%f','delimiter',',', 'HeaderLines', 6);
fclose(file);

figure (1);
plot(cdata{1}, cdata{2});
hold on;
grid on;
% title('signal');
xlabel('Time(Sec.)');
ylabel('Incident and trans. Waves (dBm)'); 
plot(cdata{1}, cdata{3});



% file=fopen('C:\Users\LabPC\Desktop\20201210\ZX60_waves_td.txt');
% cdata=textscan(file,'%f%f%f%f%f%f%f%f','delimiter',',', 'HeaderLines', 6);
% fclose(file);
% 
% figure (1);
% % A=plot(cdata{1}, cdata{2}');
% plot(cdata{1}, cdata{2}');
% hold on;
% grid on;
% % title('signal');
% xlabel('Time(Sec.)','FontSize',24);
% ylabel('Pulse-Power(dBm) & Gain-Response(dB)','FontSize',24)
% % B=plot(cdata{1}, cdata{3});
% plot(cdata{1}, cdata{3});
% set(gca,'FontSize',18);
% 

%  legend('Pulse','Gain')
% 
% file=fopen('C:\Users\LabPC\Desktop\20201116\SSGain_response_RFpower_0dBm_20201116.txt');
% cdata=textscan(file,'%f%f%f%f%f%f%f%f','delimiter',',', 'HeaderLines', 6);
% fclose(file);
% 
%  plot(cdata{1}, cdata{2},'-r');
% hold on;
% grid on;
% 
%  plot(cdata{1}, cdata{3},'--r');
% 
% legend([A B],'Pulse Power','Gain Response','FontSize',24)


% file=fopen('C:\Users\LabPC\Desktop\20201116\SSGain_response_RFpower_Neg1dBm_20201116.txt');
% cdata=textscan(file,'%f%f%f%f%f%f%f%f','delimiter',',', 'HeaderLines', 6);
% fclose(file);
% 
% plot(cdata{1}, cdata{2},'-c');
% hold on;
% grid on;
% 
% plot(cdata{1}, cdata{3},'--c');
% 
% file=fopen('C:\Users\LabPC\Desktop\20201116\SSGain_response_RFpower_Neg2dBm_20201116.txt');
% cdata=textscan(file,'%f%f%f%f%f%f%f%f','delimiter',',', 'HeaderLines', 6);
% fclose(file);
% 
% plot(cdata{1}, cdata{2},'-r');
% hold on;
% grid on;
% 
% plot(cdata{1}, cdata{3},'--r');
% 
% file=fopen('C:\Users\LabPC\Desktop\20201116\SSGain_response_RFpower_Neg3dBm_20201116.txt');
% cdata=textscan(file,'%f%f%f%f%f%f%f%f','delimiter',',', 'HeaderLines', 6);
% fclose(file);
% 
% plot(cdata{1}, cdata{2},'-g');
% hold on;
% grid on;
% 
% plot(cdata{1}, cdata{3},'--g');
% 
% file=fopen('C:\Users\LabPC\Desktop\20201116\SSGain_response_RFpower_Neg4dBm_20201116.txt');
% cdata=textscan(file,'%f%f%f%f%f%f%f%f','delimiter',',', 'HeaderLines', 6);
% fclose(file);
% 
% plot(cdata{1}, cdata{2},'-b');
% hold on;
% grid on;
% 
% plot(cdata{1}, cdata{3},'--b');
% 
% 
% file=fopen('C:\Users\LabPC\Desktop\20201116\SSGain_response_RFpower_Neg5dBm_20201116.txt');
% cdata=textscan(file,'%f%f%f%f%f%f%f%f','delimiter',',', 'HeaderLines', 6);
% fclose(file);
% 
% plot(cdata{1}, cdata{2},'-k');
% hold on;
% grid on;
% 
% plot(cdata{1}, cdata{3},'--k');
% 
% 
% file=fopen('C:\Users\LabPC\Desktop\20201116\SSGain_response_RFpower_Neg6dBm_20201116.txt');
% cdata=textscan(file,'%f%f%f%f%f%f%f%f','delimiter',',', 'HeaderLines', 6);
% fclose(file);
% 
% plot(cdata{1}, cdata{2});
% hold on;
% grid on;
% 
% plot(cdata{1}, cdata{3});
% 
% 
% file=fopen('C:\Users\LabPC\Desktop\20201116\SSGain_response_RFpower_Neg7dBm_20201116.txt');
% cdata=textscan(file,'%f%f%f%f%f%f%f%f','delimiter',',', 'HeaderLines', 6);
% fclose(file);
% 
% plot(cdata{1}, cdata{2});
% hold on;
% grid on;
% 
% plot(cdata{1}, cdata{3});
% 
% 
% 
% file=fopen('C:\Users\LabPC\Desktop\20201116\SSGain_response_RFpower_Neg8dBm_20201116.txt');
% cdata=textscan(file,'%f%f%f%f%f%f%f%f','delimiter',',', 'HeaderLines', 6);
% fclose(file);
% 
% plot(cdata{1}, cdata{2});
% hold on;
% grid on;
% 
% plot(cdata{1}, cdata{3});
% 
% 
% 
% file=fopen('C:\Users\LabPC\Desktop\20201116\SSGain_response_RFpower_Neg9dBm_20201116.txt');
% cdata=textscan(file,'%f%f%f%f%f%f%f%f','delimiter',',', 'HeaderLines', 6);
% fclose(file);
% 
% plot(cdata{1}, cdata{2});
% hold on;
% grid on;
% 
% plot(cdata{1}, cdata{3});
% 
% 
% file=fopen('C:\Users\LabPC\Desktop\20201116\SSGain_response_RFpower_Neg10dBm_20201116.txt');
% cdata=textscan(file,'%f%f%f%f%f%f%f%f','delimiter',',', 'HeaderLines', 6);
% fclose(file);
% 
% plot(cdata{1}, cdata{2});
% hold on;
% grid on;
% 
% plot(cdata{1}, cdata{3});

% 
%  legend('1dBm','0dBm','-1dBm','-2dBm','-3dBm','-4dBm','-5dBm','-6dBm','-7dBm','-8dBm','-9dBm','-10dBm');
% lgd = legend;
% lgd.FontSize = 14;
% lgd.Title.String = 'RF IQMOD output Power';
