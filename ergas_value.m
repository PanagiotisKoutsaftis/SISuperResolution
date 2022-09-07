function ergas = ergas_value(I_q,I_ref,scale_factor)

%==========================================================================
% This function calculates and returns the ERGAS value of an image I_q with
% respect to a reference image (I_ref).
% Inputs of the function
%   I_q: The image of which the quality we assess
%   I_ref: The reference image
%   scale_factor: The scale factor of the imaging model of the satellite
%
% Author: Panagiotis Koutsaftis (aivc21010@uniwa.gr)
%
% REFERENCE
% Veganzones, M., M. Simoes, G. Licciardi, N. Yokoya, J. Bioucas-Dias,
% and J. Chanussot. 2016. "Hyperspectral Super-Resolution of Locally Low
% Rank Images from Complementary
% Multisource Data.” IEEE Transactions on Image Processing 25 
% (1): 274–288. doi:10.1109/TIP.2015.2496263.
%==========================================================================

%checking the size of the images
if (size(I_q) ~= size(I_ref))
    error("The size of the two images is unequal")
end

%size of the images
[rows,columns,bands] = size(I_q);

%converting the image under evaluation to double. Needed for calculations
I_q_double = double(I_q);

%initializing the sum of the ERGAS equation
ergas_sum = 0;

%calculating the sum value
for band_index=1:bands
    band_rmse = rmse_value(I_q(:,:,band_index),I_ref(:,:,band_index));
    band_mean = mean(I_q_double(:,:,band_index),'all');
    sq_ratio = (band_rmse/band_mean)^2;
    ergas_sum = ergas_sum + sq_ratio;
end

%final ERGAS value
ergas = (100/scale_factor)*sqrt(ergas_sum/bands);