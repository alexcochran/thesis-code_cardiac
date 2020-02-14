% Setup script for analysis.
%
% Adds paths to MATLAB's search path and initializes the master configuration struct.
% ------------------------------------------------------------------------------------------

fprintf('[ SETUP ]\n');
fprintf('- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - \n');

addpath('cardiac-gating');
addpath('cardiac-gating/objects');
addpath(genpath('tools'));

archStr = computer('arch');
switch upper(archStr)
    case 'WIN64'
        fprintf('Identified system as a 64-bit Windows platform.\n');
        dataRoot = 'E:\02_cardiac-gating-project\data-working';
        warning('Image reconstructions requiring the MEX compiler/engine may not work.');
    case 'GLNXA64'
        fprintf('Identified system as a 64-bit Linux platform.\n');
        dataRoot = '/media/alex/My Passport/02_cardiac-gating-project/data-working';
    case 'MACI64'
        fprintf('Identified system as a 64-bit macOS platform.\n');
        warning('This package has not been tested on macOS.');
end

% import configuration struct
try
    configStruct = yaml.ReadYaml(fullfile(dataRoot, 'config.yml'));
catch
    warning('Configuration struct could not be loaded. Is the data''s root path valid?');
end

