for idx = 1:length(ST)
    try
        mkdir(fullfile(ST(idx).subject.week0.scanDataPath, 'masks'))
        mkdir(fullfile(ST(idx).subject.week0.scanDataPath, 'masks', 'thoracic'))
        mkdir(fullfile(ST(idx).subject.week0.scanDataPath, 'masks', 'vascular'))
        mkdir(fullfile(ST(idx).subject.week0.scanDataPath, 'masks', 'parenchymal'))
    catch
        warning('Operation could not be completed.');
    end
    
    try
        mkdir(fullfile(ST(idx).subject.week4.scanDataPath, 'masks'))
        mkdir(fullfile(ST(idx).subject.week4.scanDataPath, 'masks', 'thoracic'))
        mkdir(fullfile(ST(idx).subject.week4.scanDataPath, 'masks', 'vascular'))
        mkdir(fullfile(ST(idx).subject.week4.scanDataPath, 'masks', 'parenchymal'))
    catch
        warning('Operation could not be completed.');
    end
    
    try
        mkdir(fullfile(ST(idx).subject.week8.scanDataPath, 'masks'))
        mkdir(fullfile(ST(idx).subject.week8.scanDataPath, 'masks', 'thoracic'))
        mkdir(fullfile(ST(idx).subject.week8.scanDataPath, 'masks', 'vascular'))
        mkdir(fullfile(ST(idx).subject.week8.scanDataPath, 'masks', 'parenchymal'))
    catch
        warning('Operation could not be completed.');
    end
end

for idx = 1:length(BT)
    try
        mkdir(fullfile(BT(idx).subject.week0.scanDataPath, 'masks'))
        mkdir(fullfile(BT(idx).subject.week0.scanDataPath, 'masks', 'thoracic'))
        mkdir(fullfile(BT(idx).subject.week0.scanDataPath, 'masks', 'vascular'))
        mkdir(fullfile(BT(idx).subject.week0.scanDataPath, 'masks', 'parenchymal'))
    catch
        warning('Operation could not be completed.');
    end
    
    try
        mkdir(fullfile(BT(idx).subject.week4.scanDataPath, 'masks'))
        mkdir(fullfile(BT(idx).subject.week4.scanDataPath, 'masks', 'thoracic'))
        mkdir(fullfile(BT(idx).subject.week4.scanDataPath, 'masks', 'vascular'))
        mkdir(fullfile(BT(idx).subject.week4.scanDataPath, 'masks', 'parenchymal'))
    catch
        warning('Operation could not be completed.');
    end
    
    try
        mkdir(fullfile(BT(idx).subject.week8.scanDataPath, 'masks'))
        mkdir(fullfile(BT(idx).subject.week8.scanDataPath, 'masks', 'thoracic'))
        mkdir(fullfile(BT(idx).subject.week8.scanDataPath, 'masks', 'vascular'))
        mkdir(fullfile(BT(idx).subject.week8.scanDataPath, 'masks', 'parenchymal'))
    catch
        warning('Operation could not be completed.');
    end
end
