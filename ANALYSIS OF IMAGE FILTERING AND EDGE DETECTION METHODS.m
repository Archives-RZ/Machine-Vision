% Load the images 
% a = imread('C:\Users\’≈‹«æ≤\Desktop\2021 Winter\ELG 5163\Assignment2\licenceplateBW.jpg');
% subplot(421);imshow(a);title('Original Image');
% Add a Gaussian noise and add a salt-and-pepper noise on each image
% g = imnoise(a, 'gaussian', 0, 0.02);
% subplot(422);imshow(g);title('Add a Gaussian noise');
% z = imnoise(a, 'salt & pepper', 0.05);
% subplot(422);imshow(z);title('Add a salt & pepper noise');
a1 = imread('C:\Users\’≈‹«æ≤\Desktop\2021 Winter\ELG 5163\Assignment2\mountainBW.jpg');
% subplot(421);imshow(a1);title('Original Image');
g1 = imnoise(a1, 'gaussian', 0, 0.02);
% subplot(422);imshow(g1);title('Add a Gaussian noise');
z1 = imnoise(a1, 'salt & pepper', 0.05);
% subplot(422);imshow(z1);title('Add a salt & pepper noise');

% Define the flat average filter and apply it on each noisy images
% h1 = fspecial('average', 3);
% g_flat3 = imfilter(g, h1);
% subplot(423);imshow(g_flat3);title('3°¡3 flat average filter on Gaussian noisy image');
% z_flat3 = imfilter(z, h1);
% subplot(423);imshow(z_flat3);title('3°¡3 flat average filter on salt & pepper noisy image');
% g1_flat3 = imfilter(g1, h1);
% subplot(423);imshow(g1_flat3);title('3°¡3 flat average filter on Gaussian noisy image');
% z1_flat3 = imfilter(z1, h1);
% subplot(423);imshow(z1_flat3);title('3°¡3 flat average filter on salt & pepper noisy image');

% h2 = fspecial('average', 7);
% g_flat7 = imfilter(g, h2);
% subplot(424);imshow(g_flat7);title('7°¡7 flat average filter on Gaussian noisy image');
% z_flat7 = imfilter(z, h2);
% subplot(424);imshow(z_flat7);title('7°¡7 flat average filter on salt & pepper noisy image');
% g1_flat7 = imfilter(g1, h2);
% subplot(424);imshow(g1_flat7);title('7°¡7 flat average filter on Gaussian noisy image');
% z1_flat7 = imfilter(z1, h2);
% subplot(424);imshow(z1_flat7);title('7°¡7 flat average filter on salt & pepper noisy image');

% Define the directional average filter and apply it on each noisy images
% n=3;
% template1 = [1,2,1;2,4,2;1,2,1];
% template2 = template1/16;
% [height, width] = size(g);
% x1 = double(g);
% x2 = x1;
% for i = 1:height-n+1
%     for j = 1:width-n+1
%         c = x1(i:i+n-1,j:j+n-1).*template2;
%         s = sum(sum(c));
%         x2(i+(n-1)/2,j+(n-1)/2) = s;
%     end
% end 
% g_directional3 = uint8(x2);
% subplot(425);imshow(g_directional3);title('3°¡3 directional average filter on Gaussian noisy image');

% [height, width] = size(z);
% x3 = double(z);
% x4 = x3;
% for i = 1:height-n+1
%      for j = 1:width-n+1
%         c = x3(i:i+n-1,j:j+n-1).*template2;
%         s = sum(sum(c));
%         x4(i+(n-1)/2,j+(n-1)/2) = s;
%     end
% end 
% z_directional3 = uint8(x4);
% subplot(425);imshow(z_directional3);title('3°¡3 directional average filter on salt & pepper noisy image');

% [height1, width1] = size(g1);
% x5 = double(g1);
% x6 = x5;
% for i = 1:height1-n+1
%     for j = 1:width1-n+1
%         c = x5(i:i+n-1,j:j+n-1).*template2;
%         s = sum(sum(c));
%         x6(i+(n-1)/2,j+(n-1)/2) = s;
%     end
% end 
% g1_directional3 = uint8(x6);
% subplot(425);imshow(g1_directional3);title('3°¡3 directional average filter on Gaussian noisy image');
 
% [height1, width1] = size(z1);
% x7 = double(z1);
% x8 = x7;
% for i = 1:height1-n+1
%     for j = 1:width1-n+1
%         c = x7(i:i+n-1,j:j+n-1).*template2;
%         s = sum(sum(c));
%         x8(i+(n-1)/2,j+(n-1)/2) = s;
%     end
% end 
% z1_directional3 = uint8(x8);
% subplot(425);imshow(z1_directional3);title('3°¡3 directional average filter on salt & pepper noisy image');
% 
% n = 7;
% template3 = [1,2,4,8,4,2,1;2,4,8,16,8,4,2;4,8,16,32,16,8,4;8,16,32,64,32,16,8;4,8,16,32,16,8,4;2,4,8,16,8,4,2;1,2,4,8,4,2,1];
% template4 = template3/484;
% [height, width] = size(g);
% x9 = double(a);
% x10 = x9;
% for i = 1:height-n+1
%     for j = 1:width-n+1
%         c = x9(i:i+n-1,j:j+n-1).*template4;
%         s = sum(sum(c));
%         x10(i+(n-1)/2,j+(n-1)/2) = s;
%     end
% end
% g_directional7 = uint8(x10);
% subplot(426);imshow(g_directional7);title('7°¡7 directional average filter on Gaussian noisy image');

% [height, width] = size(z);
% x11 = double(z);
% x12 = x11;
% for i = 1:height-n+1
%     for j = 1:width-n+1
%         c = x11(i:i+n-1,j:j+n-1).*template4;
%         s = sum(sum(c));
%         x12(i+(n-1)/2,j+(n-1)/2) = s;
%     end
% end
% z_directional7 = uint8(x12);
% subplot(426);imshow(z_directional7);title('7°¡7 directional average filter on salt & pepper noisy image');

% [height1, width1] = size(g1);
% x13 = double(g1);
% x14 = x13;
% for i = 1:height1-n+1
%     for j = 1:width1-n+1
%         c = x13(i:i+n-1,j:j+n-1).*template4;
%         s = sum(sum(c));
%         x14(i+(n-1)/2,j+(n-1)/2) = s;
%     end
% end 
% g1_directional7 = uint8(x14);
% subplot(426);imshow(g1_directional7);title('7°¡7 directional average filter on Gaussian noisy image');

% [height1, width1] = size(z1);
% x15 = double(z1);
% x16 = x15;
% for i = 1:height1-n+1
%     for j = 1:width1-n+1
%         c = x15(i:i+n-1,j:j+n-1).*template4;
%         s = sum(sum(c));
%         x16(i+(n-1)/2,j+(n-1)/2) = s;
%     end
% end 
% z1_directional7 = uint8(x16);
% subplot(426);imshow(z1_directional7);title('7°¡7 directional average filter on salt & pepper noisy image');

% Define the gaussian filter and apply it on each noisy images
h3 = [0.000896860986547085,0.00358744394618834,0.00627802690582960,0.00896860986547085,0.00627802690582960,0.00358744394618834,0.000896860986547085;0.00358744394618834,0.0107623318385650,0.0233183856502242,0.0295964125560538,0.0233183856502242,0.0107623318385650,0.00358744394618834;0.00627802690582960,0.0233183856502242,0.0493273542600897,0.0636771300448430,0.0493273542600897,0.0233183856502242,0.00627802690582960;0.00896860986547085,0.0295964125560538,0.0636771300448430,0.0816143497757848,0.0636771300448430,0.0295964125560538,0.00896860986547085;0.00627802690582960,0.0233183856502242,0.0493273542600897,0.0636771300448430,0.0493273542600897,0.0233183856502242,0.00627802690582960;0.00358744394618834,0.0107623318385650,0.0233183856502242,0.0295964125560538,0.0233183856502242,0.0107623318385650,0.00358744394618834;0.000896860986547085,0.00358744394618834,0.00627802690582960,0.00896860986547085,0.00627802690582960,0.00358744394618834,0.000896860986547085];
% g_gaussian7 = imfilter(g, h3);
% subplot(427);imshow(g_gaussian7);title('Gaussian filter on Gaussian noisy image');
% z_gaussian7 = imfilter(z, h3);
% subplot(427);imshow(z_gaussian7);title('Gaussian filter on salt & pepper noisy image');
g1_gaussian7 = imfilter(g1, h3);
% subplot(427);imshow(g1_gaussian7);title('Gaussian filter on Gaussian noisy image');
% z1_gaussian7 = imfilter(z1, h3);
% subplot(427);imshow(z1_gaussian7);title('Gaussian filter on salt & pepper noisy image');

% Apply the median filter on each noisy images
% g_median = medfilt2(g);
% subplot(428);imshow(g_median);title('median filter on Gaussian noisy image');
% z_median = medfilt2(z);
% subplot(428);imshow(z_median);title('median filter on salt & pepper noisy image');
% g1_median = medfilt2(g1);
% subplot(428);imshow(g1_median);title('median filter on Gaussian noisy image');
z1_median = medfilt2(z1);
% subplot(428);imshow(z1_median);title('median filter on salt & pepper noisy image');

% Sobel edge detector
% licenceplate
% s1 = edge(a,'sobel');
% subplot(231);imshow(s1);title('Sobel edge detector on original image');
% s2 = edge(g,'sobel');
% subplot(232);imshow(s2);title('Sobel edge detector on original wtih Gaussian noise image');
% s3 = edge(z,'sobel');
% subplot(233);imshow(s3);title('Sobel edge detector on original wtih S&P noise image');
% s4 = edge(g_gaussian7,'sobel');
% subplot(234);imshow(s4);title('Sobel edge detector on Gaussian-filtered Gaussion noise image');
% s5 = edge(z_median,'sobel');
% subplot(235);imshow(s5);title('Sobel edge detector on median-filtered wtih S&P noise image');
% mountain
% s1 = edge(a1,'sobel');
% subplot(231);imshow(s1);title('Sobel edge detector on original image');
% s2 = edge(g1,'sobel');
% subplot(232);imshow(s2);title('Sobel edge detector on original wtih Gaussian noise image');
% s3 = edge(z1,'sobel');
% subplot(233);imshow(s3);title('Sobel edge detector on original wtih S&P noise image');
% s4 = edge(g1_gaussian7,'sobel');
% subplot(234);imshow(s4);title('Sobel edge detector on Gaussian-filtered Gaussion noise image');
% s5 = edge(z1_median,'sobel');
% subplot(235);imshow(s5);title('Sobel edge detector on median-filtered wtih S&P noise image');

% Prewitt edge detector
% licenceplate
% s1 = edge(a,'prewitt');
% subplot(231);imshow(s1);title('Prewitt edge detector on original image');
% s2 = edge(g,'prewitt');
% subplot(232);imshow(s2);title('Prewitt edge detector on original wtih Gaussian noise image');
% s3 = edge(z,'prewitt');
% subplot(233);imshow(s3);title('Prewitt edge detector on original wtih S&P noise image');
% s4 = edge(g_gaussian7,'prewitt');
% subplot(234);imshow(s4);title('Prewitt edge detector on Gaussian-filtered Gaussion noise image');
% s5 = edge(z_median,'prewitt');
% subplot(235);imshow(s5);title('Prewitt edge detector on median-filtered wtih S&P noise image');
% mountain
% s1 = edge(a1,'prewitt');
% subplot(231);imshow(s1);title('Prewitt edge detector on original image');
% s2 = edge(g1,'prewitt');
% subplot(232);imshow(s2);title('Prewitt edge detector on original wtih Gaussian noise image');
% s3 = edge(z1,'prewitt');
% subplot(233);imshow(s3);title('Prewitt edge detector on original wtih S&P noise image');
% s4 = edge(g1_gaussian7,'prewitt');
% subplot(234);imshow(s4);title('Prewitt edge detector on Gaussian-filtered Gaussion noise image');
% s5 = edge(z1_median,'prewitt');
% subplot(235);imshow(s5);title('Prewitt edge detector on median-filtered wtih S&P noise image');

% Laplacian of Gaussian edge detector
% licenceplate
% s1 = edge(a,'log');
% subplot(231);imshow(s1);title('Log edge detector on original image');
% s2 = edge(g,'log');
% subplot(232);imshow(s2);title('Log edge detector on original wtih Gaussian noise image');
% s3 = edge(z,'log');
% subplot(233);imshow(s3);title('Log edge detector on original wtih S&P noise image');
% s4 = edge(g_gaussian7,'log');
% subplot(234);imshow(s4);title('Log edge detector on Gaussian-filtered Gaussion noise image');
% s5 = edge(z_median,'log');
% subplot(235);imshow(s5);title('Log edge detector on median-filtered wtih S&P noise image');
% mountain
% s1 = edge(a1,'log');
% subplot(231);imshow(s1);title('Log edge detector on original image');
% s2 = edge(g1,'log');
% subplot(232);imshow(s2);title('Log edge detector on original wtih Gaussian noise image');
% s3 = edge(z1,'log');
% subplot(233);imshow(s3);title('Log edge detector on original wtih S&P noise image');
% s4 = edge(g1_gaussian7,'log');
% subplot(234);imshow(s4);title('Log edge detector on Gaussian-filtered Gaussion noise image');
% s5 = edge(z1_median,'log');
% subplot(235);imshow(s5);title('Log edge detector on median-filtered wtih S&P noise image');

% Canny edge detector
% licenceplate
% s1 = edge(a,'canny');
% subplot(231);imshow(s1);title('Canny edge detector on original image');
% s2 = edge(g,'canny');
% subplot(232);imshow(s2);title('Canny edge detector on original wtih Gaussian noise image');
% s3 = edge(z,'canny');
% subplot(233);imshow(s3);title('Canny edge detector on original wtih S&P noise image');
% s4 = edge(g_gaussian7,'canny');
% subplot(234);imshow(s4);title('Canny edge detector on Gaussian-filtered Gaussion noise image');
% s5 = edge(z_median,'canny');
% subplot(235);imshow(s5);title('Canny edge detector on median-filtered wtih S&P noise image');
%mountain
s1 = edge(a1,'canny');
subplot(231);imshow(s1);title('Canny edge detector on original image');
s2 = edge(g1,'canny');
subplot(232);imshow(s2);title('Canny edge detector on original wtih Gaussian noise image');
s3 = edge(z1,'canny');
subplot(233);imshow(s3);title('Canny edge detector on original wtih S&P noise image');
s4 = edge(g1_gaussian7,'canny');
subplot(234);imshow(s4);title('Canny edge detector on Gaussian-filtered Gaussion noise image');
s5 = edge(z1_median,'canny');
subplot(235);imshow(s5);title('Canny edge detector on median-filtered wtih S&P noise image');






