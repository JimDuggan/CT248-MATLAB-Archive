clear;

hws = get_param(bdroot, 'modelworkspace');
hws.DataSource = 'MAT-File';
hws.FileName = 'params';
hws.assignin('InitBias', 10);
hws.assignin('TARGET_TEMP', 30);
hws.saveToSource;

simOut = sim('LectureVersion_Stage05_ALL');

subplot(3,1,1);
plot(simOut.tout,...
         simOut.simout.Data);
legend("Room Temp");
subplot(3,1,2);
plot(simOut.tout,...
         simOut.simout1.Data);
legend("Heater On/Off");

subplot(3,1,3);
plot(simOut.tout,...
         simOut.simout2.Data);
legend("Outside Temperature");

