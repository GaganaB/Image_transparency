function hOVM = alphamask(bwMask, colour, transparency, axHandle)
% ALPHAMASK:  Overlay image with semi-transparent mask

 I= peaks(200);
 %peaks is a function which returns a 200 X 200 matrix, obtained by translating and scaling
 %Gaussian distributions and its particularly useful for demonstarting
 %contour changes
 
bwMask = eye(200); %identity matrix of 200 X 200
imshow(I, [], 'Colormap', hot);

% Create colour image and overlay it
colour = [0 0 1];
rgbI = cat(3, colour(1)*ones(size(bwMask)), colour(2)*ones(size(bwMask)), colour(3)*ones(size(bwMask)));
%concatenation function 

%overlapping
hold on,
%This MATLAB function retains plots in the current axes so that new plots
%added to the axes do not delete existing plots.

hOVM = imshow(rgbI, 'Parent',gca);
%gca returns the current axes for the current figure.
%parent property refers to the base image

set(hOVM, 'AlphaData', bwMask*transparency);       % use mask values as alpha channel of overlay
%set(H,NameArray,ValueArray) specifies multiple property values using the
%cell arrays NameArray and ValueArray.

hold off;
%sets the hold state to off

end

