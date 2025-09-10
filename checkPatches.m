%% clear

clear; close all; clc;

% path to patches

patch_folder = fullfile(pwd,"03. TrainingSet");
patch_imds   = imageDatastore(patch_folder);

cfgap   = imread(patch_imds.Files{1});
cftow   = imread(patch_imds.Files{22});
orig    = imread(patch_imds.Files{43});

cftow_mask = cftow>0;
cfgap_mask = cfgap>0;

proxy_cfgap = ~cftow_mask;