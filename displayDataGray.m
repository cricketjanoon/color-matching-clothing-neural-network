function [h, display_array] = displayDataGray(X, example_width)
%DISPLAYDATA Display 2D data in a nice grid
%   [h, display_array] = DISPLAYDATA(X, example_width) displays 2D data
%   stored in X in a nice grid. It returns the figure handle h and the 
%   displayed array if requested.

% Set example_width automatically if not passed in
if ~exist('example_width', 'var') || isempty(example_width) 
	example_width = round(sqrt(size(X, 2)));
end

% Gray Image        
%  colormap();

% Compute rows, cols 
[m n] = size(X);
example_height = (n / example_width);

% Compute number of items to display
%display_rows = floor(sqrt(m));
%displayData() selects in turn 25 images to show in a grid
display_rows = 5; 

%display_cols = ceil(m / display_rows);
display_cols = 5;

% Between images padding
pad = 1;

% Setup blank display
display_array = - ones(pad + display_rows * (example_height + pad), ...
                       pad + display_cols * (example_width + pad));
disp(size(display_array));
% Copy each example into a patch on the display array
curr_ex = 1;
for j = 1:display_cols
	for i = 1:display_rows
		if curr_ex > m, 
			break; 
		end
		% Copy the patch
		
		% Get the max value of the patch
		max_val = max(abs(X(curr_ex, :)));
		display_array(pad + (j - 1) * (example_height + pad) + (1:example_height), ...
		              pad + (i - 1) * (example_width + pad) + (1:example_width)) = ...
						reshape(X(curr_ex, :), example_height, example_width) / max_val;
		curr_ex = curr_ex + 1;
	end
	if curr_ex > m, 
		break; 
	end
end

% Display Image
  h = imshow(display_array, []);
%   h = imshow(display_array, []);
%  h = imshow(display_array, []);
% Do not show axis
% cd D:\ClothingNeuralNetwork\abcd

axis image off

drawnow;

end
