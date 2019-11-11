function [customJet] = customcmap2
    %CUSTOMCMAP Return a custom 'jet' colormap configuration.
    
    customJet = jet;
    customJet(1,:) = [0 0 0];
    colormap(customJet)
    caxis manual
    caxis([0 3])
end