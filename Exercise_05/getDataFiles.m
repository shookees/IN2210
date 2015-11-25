% Retrieves a file of data files, provided that
% the data files are of same template with different numbering
%TODO: move data folder, data file template and data file amount into parameters
function data_files = getDataFiles()
    data_folder = 'data/';
    data_file_template = 'Tree{0}.txt';
    for i = 1: 10
        % strcat - joins two strings
        % strrep - replaces a substring in a string
        % int2str - convert integer to string
        % data files are enumerated from 0 to 9
        data_files{i} = strcat(data_folder, strrep(data_file_template, '{0}', int2str(i - 1)));
    end
end