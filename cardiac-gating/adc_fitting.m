function [ADCMap,Mean,STD] = adc_fitting(ImageIn,BNMask,bvals)
%function [ADCMapExpFit,ADCMapLinFit,MeanExp,STDExp,MeanLin,STDLin] = ADCFitting(ImageIn,BNMask,bvals)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Function to fit ADC images
%Pass a stack of 2D Images and a vector containing the associated b-vals
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%Use Fitting based on equation Im(b) = Im(a)*exp(-b*ADC)



fo = fitoptions('Method','NonlinearLeastSquares',...
               'Lower',0,...
               'Upper',Inf,...
               'StartPoint',.01);
fiteq =fittype('exp(-b*x)','options',fo);

ADCMap = zeros(size(ImageIn,1),size(ImageIn,2));
%ADCMapLinFit = zeros(size(ImageIn,1),size(ImageIn,2));

if length(bvals)>2
    bvals = bvals';

    for i = 1:size(ImageIn,1)
        for j = 1:size(ImageIn,2)
            YData = squeeze(ImageIn(i,j,:)/ImageIn(i,j,1));
            if(BNMask(i,j) == 1)
                ExpFit = fit(bvals,YData,fiteq,fo);
                ADCMap(i,j) = ExpFit.b;
    %             linFit = polyfit(-1*bvals,log(YData),1);
    %             ADCMapLinFit(i,j) = linFit(2);
            end
        end
    end
else
    ADCMap = -1/bvals(2)*log(ImageIn(:,:,2)./ImageIn(:,:,1));
end
AveExp = ADCMap;
AveExp(BNMask == 0) = [];
AveExp(AveExp<0) = []; %ADC can't be zero, so kill any points that are negative
Mean = mean(AveExp);
STD = std(AveExp);

% AveLin = ADCMapLinFit;
% AveLin(BNMask == 0) = [];
% MeanLin = mean(AveLin);
% STDLin = std(AveLin);
