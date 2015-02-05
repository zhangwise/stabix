% Copyright 2013 Max-Planck-Institut f�r Eisenforschung GmbH
function preCPFE_custom_menu_BX(parent)
%% Function used to add a custom menu item in the GUI menubar
% parent: handle of the GUI

% authors: d.mercier@mpie.de / c.zambaldi@mpie.de

uimenu(parent, 'Label', 'Load Bicrystal config. file', ...
    'Callback', ['preCPFE_load_YAML_BX_config_file(0,2);',...
    'gui = guidata(gcf);',...
    'set(gui.handles.mesh.inclination_val,',...
    '''string'', gui.GB.GB_Inclination);',...
    'preCPFE_indentation_setting_BX;'],...
    'Separator','on');
uimenu(parent, 'Label', 'Edit YAML Bicrystal config. file', ...
    'Callback', ['gui_BX = guidata(gcf); ' ...
    'edit(gui_BX.config_map.imported_YAML_GB_config_file);']);
%--------------------------------------------------------------------------
uimenu(parent, 'Label', 'Bicrystal GUI', ...
    'Callback', ['gui_BX = guidata(gcf); ' ...
    'A_gui_plotGB_Bicrystal(0, gui_BX)'],...
    'Separator','on');
%--------------------------------------------------------------------------
uimenu(parent, 'Label', 'Save mesh picture', ...
    'Callback', ['gui_BX = guidata(gcf); save_figure; ' ...
    'set(gui_BX.handles.gui_BX_win, ''Color'', [1 1 1]*.9);'],...
    'Separator','on');
%--------------------------------------------------------------------------
uimenu(parent, 'Label', 'Load mesh settings', ...
    'Callback', 'preCPFE_load_mesh(1);',...
    'Separator','on');
uimenu(parent, 'Label', 'Save mesh settings', ...
    'Callback', ['gui_BX = guidata(gcf); ' ...
    'preCPFE_save_mesh(gui_BX.variables)']);
%--------------------------------------------------------------------------
uimenu(parent, 'Label', 'Show bicrystal conventions', ...
    'Callback', ['gui_BX = guidata(gcf); ' ...
    'webbrowser(fullfile(gui_BX.config.doc_path_root, ' ...
    'gui_BX.config.doc_path_BXind_png))'], ...
    'Separator','on');
%--------------------------------------------------------------------------
preCPFE_custom_menu_edit_gui(parent, ...
    'A_preCPFE_windows_indentation_setting_BX');

end