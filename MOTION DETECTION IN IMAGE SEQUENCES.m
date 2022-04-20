clear;
clc;

% Read Image
file_path =  '.\ImageSequence\';
img_path_list = dir(strcat(file_path,'*.jpg'));
N = length(img_path_list);

% Temporal differentiation
% for j = 1:N-1
%     i = j + 1;
%     image_name1 = img_path_list(j).name;
%     image1 = imread(strcat(file_path,image_name1));
%     image_name2 = img_path_list(i).name;
%     image2 = imread(strcat(file_path,image_name2));
%     K = imabsdiff(image1,image2);
%     BW = im2bw(K,0.1); % Set the threshold.
%     figure
%     imshow(BW);
% end

% Make the generated pictures into videos for comparison.
% vedio = VideoWriter('0.1.avi'); 
% vedio.FrameRate = 2;
% open(vedio);
% for i=1:40  
%     fname=strcat('.\image\',num2str(i),'.jpg');
%     frame = imread(fname);
%     writeVideo(vedio,frame);
% end
% close(vedio);

% Adaptive background differentiation
%  image_name = img_path_list(2).name;
%  image = imread(strcat(file_path,image_name));
%  im = rgb2gray(image);
%  image_00 = img_path_list(1).name;
%  image_0 = imread(strcat(file_path,image_00)); 
%  i0 = rgb2gray(image_0);
%  [m,n] = size(i0);
%  i_0 = zeros(size(i0));
%  i_1 = zeros(size(i0));
%  for i = 1:m
%      for j = 1:n
%          if abs((im(i,j))-(i0(i,j)))>= 18
%             i_0(i,j) = 1;
%             i_1(i,j) = i0(i,j);           
%          else 
%             i_0(i,j) = 0;
%             i_1(i,j) = i0(i,j);  
%          end
%       end
% end
% figure
% imshow(i_0)
% for x = 3:N
%     image_name = img_path_list(x).name;
%     image = imread(strcat(file_path,image_name));
%     im = rgb2gray(image);
%     [m,n] = size(i0);
%     for i = 1:m
%         for j = 1:n
%         if abs((im(i,j))-(i_1(i,j)))>= 18
%             i_0(i,j) = 1;
%             i_1(i,j) = im(i,j);           
%         else 
%             i_0(i,j) = 0;
%             i_1(i,j) = i_1(i,j);  
%         end
%         end
%     end
%     i_2 = uint8(i_1);
%     figure
%     imshow(i_2)
% end

% Three-frame difference method and noise reduction. 
for j = 2:N-1
    i = j - 1;
    k = j + 1;
    image_name1 = img_path_list(i).name;
    image1 = imread(strcat(file_path,image_name1));
    image_1 = rgb2gray(image1);
    image_m1 = medfilt2(image_1);
    image_name2 = img_path_list(j).name;
    image2 = imread(strcat(file_path,image_name2));
    image_2 = rgb2gray(image2);
    image_m2 = medfilt2(image_2);
    image_name3 = img_path_list(k).name;
    image3 = imread(strcat(file_path,image_name3));
    image_3 = rgb2gray(image3);
    image_m3 = medfilt2(image_3);
    K1 = imabsdiff(image_1,image_2);
    BW1 = im2bw(K1,0.07); 
    K2 = imabsdiff(image_2,image_3);
    BW2 = im2bw(K2,0.07); 
    K = BW1 & BW2;
    figure
    imshow(K);
end
 