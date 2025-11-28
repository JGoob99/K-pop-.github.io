/* Aspect Ratio: Bike Only Demonstration
- Old Man
*/
//
//Display
fullScreen(); //Landscape
//size(500, 700); //Portrait
int appWidth = displayWidth; //width
int appHeight = displayHeight; //height
//println("Display VARS:", "appWidth:"+appWidth, "appHeight:"+appHeight, "\n\t\t\t\t\t\t\tFullScreen,displayWidth:"+displayWidth, "displayHeight:"+displayHeight, "width:"+width, "height:"+height);
//
//Population
float imageDivX = appWidth*1.9/19.3;
float imageDivY = appHeight*0.55/13.7;
float imageDivWidth = appWidth*9.4/19.3;
float imageDivHeight = appHeight*7.85/13.7;
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
//
//Possible ERROR: NullPointerException
PImage errorImage = loadImage( "errorimage.png" );
PImage image1 = loadImage( imagePathway1 ); //i.e. pathway mispelled
if ( image1 == null ) {
   println("NullPointerException on Image ... Spelling Mistake with Pathway Concatenation");
   image1 = errorImage;
   //exit();
   //
}
//
int imageWidth1 = 800; //Hardcoded
int imageHeight1 = 886; //Hardcoded
//Aspect Ratio
float image1AspectRatio_GreaterOne = ( imageWidth1 <= imageHeight1 ) ? float(imageHeight1)/float(imageWidth1) : float(imageWidth1/imageHeight1) ; //Ternary Operator
//Hardcoded Greater-Than-One Aspect Ratio
println("Aspect Ratio >1", image1AspectRatio_GreaterOne, "Testing for Decimals, formuale", imageHeight1/imageWidth1);
//Algorithm Decisions (choice)
float imageWidthAdjusted1 = imageDivWidth;
float imageHeightAdjusted1 = ( imageWidth1 <= imageDivWidth ) ? imageWidthAdjusted1 * image1AspectRatio_GreaterOne : imageWidthAdjusted1 / image1AspectRatio_GreaterOne ; //Ternary Operator
if ( imageHeightAdjusted1 > imageDivHeight ) {
  println("Image doesn't fit, program ended ... Fatal Flaw, must be solved ... Image doesn't show.");
  //exit();
  while ( imageHeightAdjusted1>imageDivHeight ) {
  imageWidthAdjusted1 *= 0.99;
  imageHeightAdjusted1 = imageWidthAdjusted1/image1AspectRatio_GreaterOne;
  //
}
//DIV
rect( imageDivX, imageDivY, imageDivWidth, imageDivHeight );
//
//image( image1, imageDivX, imageDivY, imageDivWidth, imageDivHeight );
image( image1, imageDivX, imageDivY, imageWidthAdjusted1, imageHeightAdjusted1 );
