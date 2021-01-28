f_start=input('Set the Start @(Hz) :   ');
%     f_start=900;

%% Setting frequency Stop
f_stop=input('Set the  STOP @(Hz) :   ');
%     f_stop=2250;

%% Setting frequency STEP
f_step=input('Set the  STEP @(Hz) :   ');
   
%% Sweep do marker conforme frequencias operac. and Step's
% Salvando o Arquivo com  nome e extensao desejado
filename01 = sprintf('Marker_datazzzzzzzzzz.txt');
fname = filename01;
fid1 = fopen(filename01,'wt');
% print the header to the file
fprintf(fid1, '%s\t %20s\n\n', 'PointS', 'Y-Exit');   % linha de indentificao das colunas e nomes

for point = f_start:f_step:f_stop   
    %           
    Y = exp(point/100);
    plot(point,Y,'-o')
     hold on
    pause(1);

%% append information to data.txt 
%             fprintf(fid1,'%g %25s\n', [point(:),Y(:)].'); 
fprintf(fid1,'%g %25s\n', [point,Y].');         
end 

% close the file outside of the loop
fclose(fid1);   
hold off