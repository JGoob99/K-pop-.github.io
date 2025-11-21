/* Aspect Ratio: Bike Only Demonstration
- Old Man
*/
//
//Display
//fullScreen(); //Landscape
size(500, 700); //Portrait
int appWidth = displayWidth; //width
int appHeight = displayHeight; //height
println("Display VARS:", "appWidth:"+appWidth, "appHeight:"+appHeight, "\n\t\t\t\t\t\t\tFullScreen,displayWidth:"+displayWidth, "displayHeight:"+displayHeight, "width:"+width, "height:"+height);
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
String folder = "Images";
String sunflower = "sunflower";
String fileExtensionJPG = ".jpg";
String imagePathway1 = upArrow + folder + sunflower + fileExtensionJPG;
//println("Sunflower Pathway:", imagePathway1);
//Image Loading & Aspect Ratio
PImage image1 = loadImage( imagePathway1 );
int imageWidth1 = 800; //Hardcoded
int imageHeight1 = 886; //Hardcoded
//Aspect Ratio
//float image1AspectRatio_GreaterOne = () ? : ;
//
//DIV
rect( imageDivX, imageDivY, imageDivWidth, imageDivHeight );
//
image( image1, imageDivX, imageDivY, imageWidthAdjusted, imageHeightAdjusted );
