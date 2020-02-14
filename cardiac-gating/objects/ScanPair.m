classdef ScanPair
    % Pairs of Bruker data folder paths that correspond to sequential ADC acquisitions.
    %
    % Enables pairing of data that are analyzed comparatively.
    % --------------------------------------------------------------------------------------
    
    properties
        singleGatedAcqPath
        singleGatedDICOMPath
        dualGatedAcqPath
        dualGatedDICOMPath
    end
    
    properties
        singleGatedADCMap
        dualGatedADCMap
    end
    
    methods
        function obj = ScanPair(singleGatedAcqPath, dualGatedAcqPath)
            % Class constructor.
            %
            % Initialize a ScanPair object with paths to single-gated and dual-gated
            % acquisition folders (Bruker dataset folders) and paths to their respective
            % DICOM-containing folders.
            % ------------------------------------------------------------------------------
            obj.singleGatedAcqPath = singleGatedAcqPath;
            obj.singleGatedDICOMPath = fullfile(singleGatedAcqPath, 'pdata', '1', 'dicom');
            obj.dualGatedAcqPath = dualGatedAcqPath;
            obj.dualGatedDICOMPath = fullfile(dualGatedAcqPath, 'pdata', '1', 'dicom');
        end
    end
end

