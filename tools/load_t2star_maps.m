function [week0T2Star, week4T2Star, week8T2Star] = load_unmasked_t2star_maps(animal)
    % Load reconstructed images associated with an animal.

    
    
    % week 0
    try
        imageData = load_image_data(fullfile(animal.week0.scanDataPath, 'T2StarMap_unmasked.raw'));
        imslice(imageData);
        currentFigure = gcf;
        currentFigure.Name = strcat(animal.ID, ' week 0', ' T2*');
    catch
        warning('One of the images could not be loaded.');
    end

    % week 4
    try
        imageData = load_image_data(fullfile(animal.week4.scanDataPath, 'T2StarMap_unmasked.raw'));
        imslice(imageData);
        currentFigure = gcf;
        currentFigure.Name = strcat(animal.ID, ' week 4', ' T2*');
    catch
        warning('One of the images could not be loaded.');
    end

    % week 8
    try
        imageData = load_image_data(fullfile(animal.week8.scanDataPath, 'T2StarMap_unmasked.raw'));
        imslice(imageData);
        currentFigure = gcf;
        currentFigure.Name = strcat(animal.ID, ' week 8', ' T2*');
    catch
        warning('One of the images could not be loaded.');
    end
end

function imageData = load_image_data(path)
    fileID = fopen(path, 'r');
    imageData = fread(fileID, 'float32');
    imageData = reshape(imageData, [128, 128, 128]);
    imageData = rot90(imageData);
    imageData = rot90(imageData);
    imageData = rot90(imageData);
    fclose(fileID);
end