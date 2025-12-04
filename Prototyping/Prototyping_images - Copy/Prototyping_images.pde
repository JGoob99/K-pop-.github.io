/* Aspect Ratio: Bike Only Demonstration
- Old Man
- introduction: set index manually
*/
//
//Display
fullScreen(); //Landscape
//size(500, 700); //Portrait
int appWidth = displayWidth; //width
int appHeight = displayHeight; //height
//println("Display VARS:", "appWidth:"+appWidth, "appHeight:"+appHeight);
//println("\n\t\t\t\t\t\t\tFullScreen, displayWidth:\t"+displayWidth, "displayHeight:"+displayHeight, "width:"+width, "height:"+height);
//
//Population
float VeeX = appWidth*1.9/19.3;
float VeeY = appHeight*0.55/13.7;
float DivVeeWidth = appWidth*9.4/19.3;
float DivVeeHeight = appHeight*7.85/13.7;
//
//Image Aspect Ratio Vars & Algorithm
//Directory or Pathway, Concatenation
String upArrow = "../../";
String folder = "Images/";
String Sunflower_sky_backdrop = "Sunflower_sky_backdrop";
String fileExtensionJPG = ".jpg";
String imagePathway1 = upArrow + folder + Sunflower_sky_backdrop + fileExtensionJPG;
//println("Sunflower_sky_backdrop Pathway:", imagePathway1);
//Image Loading & Aspect Ratio
PImage image1 = loadImage( imagePathway1 ); //i.e. pathway mispelled
int imageWidth1 = 800; //Hardcoded
int imageHeight1 = 886; //Hardcoded
//Aspect Ratio
float image1AspectRatio_GreaterOne = ( imageWidth1 <= imageHeight1 ) ? float(imageWidth1)/float(imageHeight1) : float(imageHeight1/imageWidth1) ; //Ternary Operator
//Hardcoded Greater-Than-One Aspect Ratio
//Algorithm Decisions (choice)
float imageWidthAdjusted1 = DivVeeWidth;
float imageHeightAdjusted1 = ( imageWidth1 <= DivVeeWidth ) ? imageWidthAdjusted1 * image1AspectRatio_GreaterOne : imageWidthAdjusted1 / image1AspectRatio_GreaterOne ; //Ternary Operator
//DIV
rect( VeeX, VeeY, DivVeeWidth, DivVeeHeight );
//
//image( image1, VeeX, VeeY, DivVeeWidth, DivVeeHeight );
image( image1, VeeX, VeeY, imageWidthAdjusted1, imageHeightAdjusted1 );
