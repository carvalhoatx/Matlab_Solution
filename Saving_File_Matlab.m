%% Criando e salvando dados em .TXT com n-Colunas
%% Ref. https://de.mathworks.com/help/matlab/ref/fprintf.html  

x = 0:.01:100;

y=sin(x);
z=cos(x);
terc=cos(x+70);

A = [x; y; z; terc];
% A = [x; sin(x); cos(x); cos(x+70)];  % Se quiser fazer as operacoes diretamentes

plot(x,y,'r',x,z,'k',x,terc,'g')   % plot only to check the signal. 

fileID = fopen('AAAAAAAAAAAexp.txt','w');

date = datestr(now,'dd mmmm yyyy');
fprintf(fileID, '% s \n', date);
fprintf(fileID, '% s \n \n', 'TITLE  INFO  !!!!!'); 

fprintf(fileID,'%6s %6s %6s %12s\n','x','yyy','CCCC','DDDD');
fprintf(fileID,'%6.2f %6.2f  %6.2f  %12.8f\n',A);

% fprintf(fileID,'% g %15 s %15 d \n ', [x(:); y(:); z(:)].');

fclose(fileID);


