function load_images(animal)
    % Load reconstructed images associated with an animal.

    % 1
    try
        imageData = load_image_data(fullfile(animal.week0.scanDataPath, 'newFA_gated_reco_TE_80.raw'));
        imslice(imageData);
        currentFigure = gcf;
        currentFigure.Name = strcat(animal.ID, ' week 0', ' TE: 80 us');
    catch
        warning('One of the images could not be loaded.');
    end

    % 2
    try
        imageData = load_image_data(fullfile(animal.week0.scanDataPath, 'newFA_gated_reco_TE_200.raw'));
        imslice(imageData);
        currentFigure = gcf;
        currentFigure.Name = strcat(animal.ID, ' week 0', ' TE: 200 us');
    catch
        warning('One of the images could not be loaded.');
    end

    % 3
    try
        imageData = load_image_data(fullfile(animal.week0.scanDataPath, 'newFA_gated_reco_TE_400.raw'));
        imslice(imageData);
        currentFigure = gcf;
        currentFigure.Name = strcat(animal.ID, ' week 0', ' TE: 400 us');
    catch
        warning('One of the images could not be loaded.');
    end
    
    % 4
    try
        imageData = load_image_data(fullfile(animal.week4.scanDataPath, 'newFA_gated_reco_TE_80.raw'));
        imslice(imageData);
        currentFigure = gcf;
        currentFigure.Name = strcat(animal.ID, ' week 4', ' TE: 80 us');
    catch
        warning('One of the images could not be loaded.');
    end
    
    % 5
    try
        imageData = load_image_data(fullfile(animal.week4.scanDataPath, 'newFA_gated_reco_TE_200.raw'));
        imslice(imageData);
        currentFigure = gcf;
        currentFigure.Name = strcat(animal.ID, ' week 4', ' TE: 200 us');
    catch
        warning('One of the images could not be loaded.');
    end
    
    % 6
    try
        imageData = load_image_data(fullfile(animal.week4.scanDataPath, 'newFA_gated_reco_TE_400.raw'));
        imslice(imageData);
        currentFigure = gcf;
        currentFigure.Name = strcat(animal.ID, ' week 4', ' TE: 400 us');
    catch
        warning('One of the images could not be loaded.');
    end
    
    % 7
    try
        imageData = load_image_data(fullfile(animal.week8.scanDataPath, 'newFA_gated_reco_TE_80.raw'));
        imslice(imageData);
        currentFigure = gcf;
        currentFigure.Name = strcat(animal.ID, ' week 8', ' TE: 80 us');
    catch
        warning('One of the images could not be loaded.');
    end
    
    % 8
    try
        imageData = load_image_data(fullfile(animal.week8.scanDataPath, 'newFA_gated_reco_TE_200.raw'));
        imslice(imageData);
        currentFigure = gcf;
        currentFigure.Name = strcat(animal.ID, ' week 8', ' TE: 200 us');
    catch
        warning('One of the images could not be loaded.');
    end
    
    % 9
    try
        imageData = load_image_data(fullfile(animal.week8.scanDataPath, 'newFA_gated_reco_TE_400.raw'));
        imslice(imageData);
        currentFigure = gcf;
        currentFigure.Name = strcat(animal.ID, ' week 8', ' TE: 400 us');
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