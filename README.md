# Machine-Vision
## Archives of some assignments for the machine vision 
### ANALYSIS OF IMAGE FILTERING AND EDGE DETECTION METHODS:
This part mainly uses the MATLAB image processing toolbox to explore and compare the classical noise filtering and edge detection techniques.

Steps:

1. Considering a simple grayscale text image with sharp edges (licenceplateBW.jpg) as well as a more complex grayscale image in natural outdoor settings (mountainBW.jpg), examine the effect of Gaussian and Salt-and-Pepper noise on these images.
2. Using Matlab’s Image Processing Toolbox, perform a comparative analysis of the performance of 4 types of convolutive filters (flat averaging, directional averaging, Gaussian and median) in the process of noise filtering over these 2 images.
3. Apply and compare 4 techniques for edge detection (Sobel, Prewitt, Laplacian of Gaussian and Canny) when they are applied on the original images (without noise), on the images modified respectively with Gaussian noise, and Salt-and-Pepper noise, and finally on noisy images that have been filtered with the Gaussian and the median techniques.

### MOTION DETECTION IN IMAGE SEQUENCES:
This part mainly uses the MATLAB image processing toolbox to examine and compare motion detection techniques in image processing.

Steps:

1. Starting from a sequence of 41 grayscale images of size 768x576 representing the movement of vehicles, bikes and pedestrians at an intersection, implement two simple motion detection techniques that will put in evidence those pixels that correspond to moving objects.
2. Motion detection based on temporal differentiation.
3. Motion detection based on adaptive background differentiation.
