function load_gating_figs(animal)
    % Load the retrospective gating figures corresponding to a particular animal.
    % --------------------------------------------------------------------------------------
    try
        openfig(fullfile(animal.week0.scanDataPath, ...
            'diffGate_leadPointRespiration_TE_80.fig'));
        openfig(fullfile(animal.week0.scanDataPath, ...
            'diffGate_leadPointRespiration_TE_200.fig'));
        openfig(fullfile(animal.week0.scanDataPath, ...
            'diffGate_leadPointRespiration_TE_400.fig'));
    catch
        warning('Some figures are not available for opening.');
    end
    
    try
        openfig(fullfile(animal.week4.scanDataPath, ...
            'diffGate_leadPointRespiration_TE_80.fig'));
        openfig(fullfile(animal.week4.scanDataPath, ...
            'diffGate_leadPointRespiration_TE_200.fig'));
        openfig(fullfile(animal.week4.scanDataPath, ...
            'diffGate_leadPointRespiration_TE_400.fig'));
    catch
        warning('Some figures are not available for opening.');
    end
    
    try
        openfig(fullfile(animal.week8.scanDataPath, ...
            'diffGate_leadPointRespiration_TE_80.fig'));
        openfig(fullfile(animal.week8.scanDataPath, ...
            'diffGate_leadPointRespiration_TE_200.fig'));
        openfig(fullfile(animal.week8.scanDataPath, ...
            'diffGate_leadPointRespiration_TE_400.fig'));
    catch
        warning('Some figures are not available for opening.');
    end
end

