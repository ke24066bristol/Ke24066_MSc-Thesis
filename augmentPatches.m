%% clear

clear; close all; clc;

% patch imds

patch_imds = imageDatastore("Scanning Images for Testing");

out_folder = fullfile(pwd,"Scanning Images for Testing - Augmented");

for c_raw_img = 1:height(patch_imds.Files)

    i_raw_img = imread(patch_imds.Files{c_raw_img});

    [~,i_raw_name, i_raw_ext] = fileparts(patch_imds.Files(c_raw_img));

    t_raw_img = rot90(i_raw_img,2);    
    t_raw_out = fullfile(out_folder, ["rot180_" + i_raw_name + i_raw_ext])
    imwrite(t_raw_img, t_raw_out)


    t_flipx_img = fliplr(i_raw_img);
        t_raw_out = fullfile(out_folder, ["fliplr_" + i_raw_name + i_raw_ext])
    imwrite(t_flipx_img, t_raw_out)

    t_flipy_img = flipud(i_raw_img);
        t_raw_out = fullfile(out_folder, ["flipud_" + i_raw_name + i_raw_ext])
    imwrite(t_flipy_img, t_raw_out)

    

end

figure; imshowpair(i_raw_img, t_raw_img,'montage');