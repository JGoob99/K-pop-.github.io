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
//println("\n\t\t\t\t\t\t\tFullScreen, displayWidth:"+displayWidth, "displayHeight:"+displayHeight, "width:"+width, "height:"+height);
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
//
//Possible ERROR: NullPointerException
PImage errorImage = loadImage( "errorimage.png" );
PImage image1 = loadImage( imagePathway1 ); //i.e. pathway mispelled
if ( image1 == null ) {
   println("NullPointerException on Image ... Spelling Mistake with Pathway Concatenation");
   image1 = errorImage;
   exit();
   //
}
//
int imageWidth1 = 800; //Hardcoded
int imageHeight1 = 886; //Hardcoded
//Aspect Ratio
float image1AspectRatio_GreaterOne = ( imageWidth1 <= imageHeight1 ) ? float(imageWidth1)/float(imageHeight1) : float(imageHeight1/imageWidth1) ; //Ternary Operator
//Hardcoded Greater-Than-One Aspect Ratio
println("Aspect Ratio >1", image1AspectRatio_GreaterOne, "Testing for Decimals, formuale", imageHeight1/imageWidth1);
//Algorithm Decisions (choice)
float imageWidthAdjusted1 = DivVeeWidth;
float imageHeightAdjusted1 = ( imageWidth1 <= DivVeeWidth ) ? imageWidthAdjusted1 * image1AspectRatio_GreaterOne : imageWidthAdjusted1 / image1AspectRatio_GreaterOne ; //Ternary Operator
if ( imageHeightAdjusted1 > DivVeeHeight ) {
  println("Image doesn't fit, program ended ... Fatal Flaw, must be solved ... Image doesn't show.");
  //exit();
  int indexWhile = 0; //Local Variable to IF-Statement
  //** WHILE Loops can run infinitely with an error if not controlled
  while ( imageHeightAdjusted1>DivVeeHeight ) {
    println("Iteration of Percent WHILE Loop", indexWhile++); //prints value, then adds one, order is important in AP
    if ( indexWhile < 10000 ) {
      //Checking Image Size
    } else {
      //ERROR: Infinite Loop
      println("ERROR: infinite loop, Image Percent WHILE, value:", indexWhile);
      exit(); //doesnt work, must force WHILE Stop
      imageHeightAdjusted1=DivVeeHeight; //makes WHILE False, stops WHILE
    } //End Check Infinite loop
    //Image Adjustment Percent v Pixel
  imageWidthAdjusted1 *= 0.70; // -= 1
  imageHeightAdjusted1 = imageWidthAdjusted1/image1AspectRatio_GreaterOne;
  println("Inspection of percent decrease:", imageWidthAdjusted1, imageHeightAdjusted1, DivVeeHeight); 
} //End WHILE
while ( imageHeightAdjusted1=DivVeeHeight ) {
  println("Iteration of Pixel WHILE Loop", indexWhile++); //prints value, then adds one, order is important in AP
  if ( indexWhile < 10000 ) {
    //Checking Image Size
  } else {
    //ERROR: Infinite Loop
    println("ERROR: infinite loop, Image Pixel WHILE, value:", indexWhile);
    //exit(); //doesn't work, must force WHILE Stop
    imageHeightAdjusted1=DivVeeHeight;
  }
  imageHeightAdjusted++;
  println("Inspection of percent decrease:", imageWidthAdjusted1, imageHeghtAdjusted1, DivVeeHeight);
//DIV
rect( VeeX, VeeY, DivVeeWidth, DivVeeHeight );
//
//image( image1, VeeX, VeeY, DivVeeWidth, DivVeeHeight );
image( image1, VeeX, VeeY, imageWidthAdjusted1, imageHeightAdjusted1 );
