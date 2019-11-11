function imageData = load_raw(imageFilePath)
    % Load *.raw image data to a 3-dimensional matrix.
    % --------------------------------------------------------------------------------------
    imageNumEl = 128 ^ 3;
    
    % read the raw image file data
    fileID = fopen(imageFilePath, 'r');
    imageData = fread(fileID, imageNumEl, 'float32');
    fclose(fileID);
    
    % reshape image data to the correct matrix shape
    imageData = reshape(imageData, [128 128 128]);
end

