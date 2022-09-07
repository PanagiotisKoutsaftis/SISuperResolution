function sam = sam_value(I_q,I_ref)

%==========================================================================
% This function calculates the SAM index value of an image compared to a 
% reference image. According to the SAM algorithm we regard a pixel as a 
% vector in a B-dimensional space (B is the number of the bands in the
% image). We this in mind we can calculate the angle between a pixel of I_q
% and the corresponding pixel of the reference image. The SAM index value
% is the average angle between the pixels of the two images.
% Inputs of the function
%   I_q: The image of which we want to find the SAM index value
%   I_ref: The reference image
% Output of the function
%   The SAM index value
%
% NOTE: The size of the images must be equal or an error is raised.
%
% Author: Panagiotis Koutsaftis (aivc21010@uniwa.gr)
%
% REFERENCE: Yuhas, R. H., A. F. H. Goetz, and J. W. Boardman. 1992.
% "Discrimination among Semi-Arid Landscape Endmembers Using the Spectral
% Anglemapper (SAM) Algorithm." In Proc. Summaries 3rd Annu.
% JPL Airborne Geosci. Workshop, 147–149. California, USA: Jet Propulsion
% Laboratory (JPL), NASA.
%==========================================================================

%checking the size of the images
if (size(I_q) ~= size(I_ref))
    error("The size of the two images is unequal")
end

%converting the images to double, need for calculations
I_q = double(I_q);
I_ref = double(I_ref);

%size of the images
[rows,columns,bands] = size(I_q);

%initializing the sum of the SAM equation
sam_sum = 0;

%calculating the needed values
for row=1:rows
    for column=1:columns
        %norm of the first image's (current) pixel vector
        first_image_norm = dot(I_q(row,column,:),I_q(row,column,:));
        %norm of the second image's (current) pixel vector
        second_image_norm = dot(I_ref(row,column,:),I_ref(row,column,:));
        %dot product of the (current) pixels vectors
        images_dot = dot(I_q(row,column,:),I_ref(row,column,:));
        %sum of the ratio of the norms
        sam_sum = sam_sum + acos(images_dot/(first_image_norm*second_image_norm));
    end
end

%value of the SAM index
sam = sam_sum/(rows*columns);