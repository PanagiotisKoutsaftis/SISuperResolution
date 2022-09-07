function [SAM,RMSE,PSNR,ERGAS,CC] = assessmentWithRef(I_q,I_ref,scale_factor)

%==========================================================================
% This function calculates and returns some of the most well known
% reference based quality metrics of an image. The inputs are the following
% I_q: the image of which the quality we want to calculate
% I_ref: the reference image
% scale_factor: Scale factor of the degradation of the HR image. Given by
% the imaging model of the satellite.
% Output of the function
%   SAM: Spectral Angle Mapper
%   RMSE: Root Mean Square Error
%   PSNR: Peak Signal to Noise Ratio
%   ERGAS: Erreur Relative Globale Adimensionnelle de Synthese
%   CC: Correlation Coefficient
%
% Author: Panagiotis Koutsaftis (aivc21010@uniwa.gr)
%==========================================================================

%checking the size of the images
if (size(I_q) ~= size(I_ref))
    error("The size of the two images is unequal")
end


%calculating the PSNR value
PSNR = psnr(I_q,I_ref);

%calculating the RMSE value
RMSE = rmse_value(I_q,I_ref);

%calculating the SAM value
SAM = sam_value(I_q,I_ref);

%calculating the ERGAS index value
ERGAS = ergas_value(I_q,I_ref,scale_factor);

%calculating the correlation coefficient value
CC = cc_value(I_q,I_ref);