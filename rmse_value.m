function rmse = rmse_value(I_q,I_ref)

%==========================================================================
% This function calculates the Root Mean Square Error of an image with
% respect to a reference image.
% Inputs of the function
%   I_q: The image of which we want to calculate the RMSE
%   I_ref: The reference image
% Output of the function
%   rmse: The value of Root Mean Square Error
%
% NOTE: The size of the images must be equal or an error is raised.

% Author: Panagiotis Koutsaftis (aivc21010@uniwa.gr)
%==========================================================================

%checking the size of the images
if (size(I_q) ~= size(I_ref))
    error("The size of the two images is unequal")
end


%converting the images to double. Needed for calculations
I_q = double(I_q);
I_ref = double(I_ref);

%size of the images
[rows,columns,bands] = size(I_q);

%initializing the sum of the RMSE equation
rmse_sum = 0;

%calculating the sum
for band_index=1:bands
    for row=1:rows
        for column=1:columns
            sq_dif = (I_q(row,column,band_index)-I_ref(row,column,band_index))^2;
            rmse_sum = rmse_sum + sq_dif;
        end
    end
end

%final rmse value
rmse = sqrt(rmse_sum)/sqrt(rows*columns*bands);