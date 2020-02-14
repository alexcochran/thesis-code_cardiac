classdef ScanDataset
    % Scan and analysis data for a particular acquisition.
    % --------------------------------------------------------------------------------------
    
    properties
        scanPath
        imagePath
        ADCMap
        ADCMean
        ADCStdDev
    end
    
    methods
        function obj = ScanDataset(scanPath)
            % Class constructor.
            % ------------------------------------------------------------------------------
            obj.scanPath = scanPath;
            obj.imagePath = fullfile(scanPath, 'pdata', '1', 'dicom');
        end
    end
end

