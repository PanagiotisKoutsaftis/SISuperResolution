function cc = cc_value(I_q,I_ref)

%==========================================================================
% This function returns the correlation coefficient of the two images.
% The cc is used as a quality metric because it is able to capture the
% characteristics of the Human Visual System.
% Inputs of the function
%   I_q: The image of which the quality is assessed
%   I_ref: The reference image
% Output of the function
%   cc: The correlation coefficient
%
% NOTE: The size of the images must be equal or an error is raised.
%
% Author: Panagiotis Koutsaftis (aivc21010@uniwa.gr)
%==========================================================================

%checking the size of the images
if (size(I_q) ~= size(I_ref))
    error("The size of the two images is unequal")
end

%converting the images to double type for calculations
I_q = double(I_q);
I_ref = double(I_ref);

%calculating the correlation coefficients matrix
corr_matrix = corrcoef(I_q,I_ref);

%one of the non-diagonal elements is the value of CC we want
%the non-diagonal elements are equal so we choose one of them
cc = corr_matrix(1,2);









