# AIS Decoder

A MATLAB decoder for reading and generating AIS reports from AIS text files based of communication specification NMEA 0183. The code does not include all the AIS messages. Most of the common message types have been implemeneted and other can be added if needed. 

You can download a sample file from http://www.aishub.net/nmea-sample.php

# To run
fileAIS = fopen('fileName','r');
AIS_reports = AIS_decodeFile(fileAIS);
