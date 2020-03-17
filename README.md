<h1> Demonstration of effect of superimposition of images using pixel opacity and AlphaData property</h1>

One pattern can be overlayed or superimposed on another to create interesting image visualisation patterns.
While this has several interesting applications, consider the following one:

You're on the phone line on a Tuesday night ordering pizza. The lady taking your orders is giving you a whole range of options that you're not too familiar with. 
But if you could instead visit their website and see your toppings on your pizza in real time....

Maybe you'll be better able to answer the long standing question - Does pineapple belong on pizza? :P

<h1> Algorithm </h1>
When working with two images, choose one image to be the forground image and one to be the background image. 

1. Load the foreground image and scale to appropriate size. Note that compatibility between matrix sizes of foreground and background images are important for this technique to work. 
If you're getting errors at this phase, consider rechecking image dimensions, formats and other closely related issues that might seem plausible to consider.
In our case here, pizza is the background image and toppings are foreground. 

2. Load the background image and set output size (typically a 2D image).

3. Build an alphalayer on the foreground image. Find a scale dynamically with some limit by setting foreground_min and foreground_max.
The alphadata property sets the transparency factor for an image. The alphaData is an MxN matrix of the same size as the image with each element in range [0 1] to indicate pixel opacity.
For more information: https://in.mathworks.com/company/newsletters/articles/image-overlay-using-transparency.html

4. Now that the underlying processes are in place, the superposition of images can take place via blending. 
output = background_blending + foreground_blending
Note: The techniques work with greyscale and RGB images. 

 
