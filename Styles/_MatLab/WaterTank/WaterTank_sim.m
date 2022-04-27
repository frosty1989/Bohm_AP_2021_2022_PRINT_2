clc; clear; close all

%% Simulink Scheme to EPS
open_system('WaterTank.mdl');
get_param('WaterTank', 'PaperType')
get_param('WaterTank', 'PaperOrientation')
get_param('WaterTank', 'PaperPositionMode')
get_param('WaterTank', 'PaperPosition')
set_param('WaterTank', 'PaperOrientation', 'portrait')
    print('-sWaterTank','-depsc2','../../Figures/ModelWS');
    print('-sWaterTank','-dpng','../../Figures/ModelWS');
open_system('WaterTank/WATER TANK VR Model', 'force');
set_param('WaterTank/WATER TANK VR Model', 'PaperOrientation', 'portrait')
    print('-sWaterTank/WATER TANK VR Model','-depsc2','../../Figures/ModelWSunderMask');
bdclose('WaterTank.mdl');


%% Graphs
MODEL = fopen('WaterTank.mdl');
sim('WaterTank',1000);
fclose(MODEL);

vz = 50;
figure(1)
    plot(tu(1:vz:end,1),tu(1:vz:end,2),'r');
    grid on
FigPlot(1,'t [s]','u [V]',16,'',16,4);
axis([xlim 0 11]);
print(1,'-depsc2','../../Figures/Data_u');

figure(2)
    plot(ty(1:vz:end,1),ty(1:vz:end,2),'b');
    grid on
FigPlot(2,'t [s]','h [cm]',16,'',16,4);
print(2,'-depsc2','../../Figures/Data_h');