function [BRISQUE_value, NIQE_value] = assessmentNoRef(I_q)

%==========================================================================
% This function calculates and returns the 2 most common quality metrics
% used when there is no reference image. Both metrics have an extra input
% of a custom feature model (cause they are training based methods)
% but for the sake of simplicity we omit that input.
% The only input of the function is the image I_q whose quality we want 
% assess.
% Output of the function
%   BRISQUE: Blind Referenceless Image Spatial QUality Evaluator
%   NIQE: Natural Image Quality Evaluator
%
% Author: Panagiotis Koutsaftis (aivc21010@uniwa.gr)
%==========================================================================


%BRISQUE value
BRISQUE_value = brisque(I_q);
%niqe value
NIQE_value = niqe(I_q);