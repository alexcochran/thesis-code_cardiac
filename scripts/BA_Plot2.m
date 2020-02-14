clear;clc;close all;
load('data.mat'); % should be column data



%gate = rand(20,1)/100;
%ungate = rand(20,1)/100;

gate = CARDIAC;
ungate = NONCARDIAC;


AxScale = 0.05;

%%
%% 129Xe h

dif = (gate - ungate);
ADC_ave = (gate + ungate)/2;
mean_dif = mean(gate - ungate);

ComfInt = [(mean(dif)+ std(dif)*1.96),(mean(dif)- std(dif)*1.96)];
yvals = [dif' ComfInt];
Ymin = min(yvals)- AxScale*range(yvals);
Ymax = max(yvals)+ AxScale*range(yvals);
Xmin = min(ADC_ave)- AxScale*range(ADC_ave);
Xmax = max(ADC_ave)+ AxScale*range(ADC_ave);

scatter(ADC_ave, dif,'b');
hold on;
plot(linspace(0,.2,100),mean(dif)*ones(1,100),'b')
plot(linspace(0,.2,100),zeros(1,100),'k:')
plot(linspace(0,.2,100),ComfInt(1)*ones(1,100),('r--'))
plot(linspace(0,.2,100),ComfInt(2)*ones(1,100),('r--'))
xlabel('ADC (Gated + Ungated)/2  [x10^-^3 cm^2 s^-^1]')
ylabel('ADC (Gated - Ungated)   [x10^-^3 cm^2 s^-^1]')
axis([Xmin Xmax Ymin Ymax], 'square')
