function maskedImage = apply_simple_binary_mask(imageData, niiBinaryMaskPath)
    % Applies a simple (1 material type) binary mask (from a NIfTI file) to image data.
    % --------------------------------------------------------------------------------------
    
    % load the binary mask or handle errors if the file doesn't exist
    try
        binaryMask = niftiread(niiBinaryMaskPath);
    catch ME
        switch ME.identifer
            case 'images:nifti:filenameDoesNotExist'
                error('Invalid binary mask path. Does the file exist?');
            case 'images:nifti:filenameNotNIfTIFile'
                error('Invalid file type. Binary masks must be NIfTI (*.nii) files.');
            otherwise
                rethrow(ME)
        end
    end
    
    % ensure the image and mask are the same size
    if numel(imageData) ~= numel(binaryMask)
        error('The image data and binary mask do not contain the same number of voxels.');
    end
    
    % flip (over the x-axis) and rotate (90 degrees clockwise) to correct for NIfTI loading
    % behaviors
    binaryMask = flip(binaryMask);
    binaryMask = imrotate(binaryMask, -90);
    
    % ensure the image and mask are now the same shape/orientation
    if size(imageData) ~= size(binaryMask)
        error('The image data and binary mask must be the same shape/orientation.');
    end
    
    % quash all mask values to create a true binary mask
    binaryMask = logical(binaryMask);
    maskedImage = imageData .* binaryMask;
end

