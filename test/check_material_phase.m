% Copyright 2013 Max-Planck-Institut f�r Eisenforschung GmbH
function [lattice_parameters, flag_error] = ...
    check_material_phase(material, phase, varargin)
%% Check match between a given material and a given phase

% author: d.mercier@mpie.de

if nargin < 2
    phaseList = listPhase;
    phase = phaseList(randi(length(phaseList)));
    display(phase);
end
   
if nargin < 1
    materialList = listMaterial;
    material = materialList(randi(length(materialList)));
    display(material);
end

% Get the lattice parameter for the grain
lattice_parameters = latt_param(material, phase);
if lattice_parameters(1) == 0
    warning_commwin('Wrong input for material and structure !!!');
    flag_error = 1;
else
    flag_error = 0;
end

end