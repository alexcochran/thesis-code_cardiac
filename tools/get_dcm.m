function [imageVol] = get_dcm(dcmDir)
    % Get all DICOM files in a directory and load their data (NO GUI INTERACTION NEEDED).
    %
    % This function expects DICOM files to be in a file 'stack,' not a single file.
    % --------------------------------------------------------------------------------------
    dcmDirContents = dir(dcmDir);
    dcmDirCell = {dcmDirContents.name};
    dcmDirCell(:, 1) = []; % gets rid of '.' and '..'
    dcmDirCell(:, 1) = [];

    num_files=length(dcmDirCell);
    all_slices = cell(num_files,1);% load image slices into a cell

    for indx = 1:num_files
        img_slice = dicomread(fullfile(dcmDir, dcmDirCell{indx}));
        all_slices{indx} = img_slice;
    end

    imag_size = size(all_slices{1});
    imageVol = zeros(imag_size(1),imag_size(2),num_files);

    for slice = 1:num_files
        imageVol(:,:,slice) = all_slices{slice};
    end
end

