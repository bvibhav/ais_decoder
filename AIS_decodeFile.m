function [ dataAIS ] = AIS_decodeFile( fileAIS )
% This function decoded all AIS message and form AIS navigation reports
% that are stored in output file. 
%
% # input:
%    - fileAIS:         AIS.txt file handle containing AIS messages
%
% # output:
%    - dataAIS:         Array of structures containing confirmed tracks

dataAIS = {};
counter = 1;
% Load the first message
tline = fgets(fileAIS);

while ischar(tline)
%     disp(['Message: ' tline]);
    reportAIS = AIS_decodeMessage(tline, fileAIS);
    display('------------------------------------');
    display(reportAIS)
    
    if(strcmp(reportAIS.Report_Type,'No Decoder'))
        tline = fgets(fileAIS);
        continue;
    end
    
    dataAIS{counter} = reportAIS;
    counter = counter + 1;
    
    % Load the next message
    tline = fgets(fileAIS);
end

end

