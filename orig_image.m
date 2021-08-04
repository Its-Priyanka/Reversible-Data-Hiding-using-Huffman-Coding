img=imread('reconstructed.bmp');
imshow(img)
img_filtered=medfilt2(img);
imshow(img_filtered);
title('original image recoverd')
