function spFilter

% read image
me = imread("megray.tif");
%display image
figure;
subplot(1,3,1);
imshow(me);
title("Original");

%apply low pass filter
f_lap = fspecial("average");
lap_filter_me_low = filter2(f_lap,me);
% display low pass 

subplot(1,3,2);
imshow(lap_filter_me_low/255);
title("LPF");

%apply high pass filter

f_lap = fspecial("log");
lap_filter_me_high = filter2(f_lap,me);
% display high pass
subplot(1,3,3);
imshow(lap_filter_me_high/255);
title("HPF");





