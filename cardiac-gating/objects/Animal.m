classdef Animal
    % Animal object for CGADC processing/analysis.
    % --------------------------------------------------------------------------------------
    
    properties
        subjectID
        subjectRootPath
        scanPairs
    end
    
    methods
        function obj = Animal(subjectID, subjectRootPath, scanPairArray)
            % Class constructor.
            % ------------------------------------------------------------------------------
            obj.subjectID = subjectID;
            obj.subjectRootPath = subjectRootPath;
            
            obj.scanPairs = [];
            for idx = 1:length(scanPairArray)
                singleGatedAcqPath = ...
                    fullfile(obj.subjectRootPath, num2str(scanPairArray(idx, 1)));
                dualGatedAcqPath = ...
                    fullfile(obj.subjectRootPath, num2str(scanPairArray(idx, 2)));
                obj.scanPairs = ...
                    [obj.scanPairs ScanPair(singleGatedAcqPath, dualGatedAcqPath)];
            end
        end
        
        function collect_dicom
        
        function binary_mask_all(obj)
            for idx = 1:length(obj.scanPairs)
                obj.scanPairs(idx).binaryMask = erode_dilate_2d(
        
        function adc_map_all(obj, bValues)
            for idx = 1:length(obj.scanPairs)
                obj.scanPairs(idx).singleGatedADCMap = ...
                    adc_fitting(obj.scanPairs(idx).singleGatedDICOMPath, bValues);
                obj.scanPairs(idx).dualGatedADCMap = ...
                    adc_fitting(obj.scanPairs(idx).dualGatedDICOMPath, bValues);
            end
        end
    end
end

