/* String
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
//Strings, Text, Literal
String title = "Yippee";
// Student enter all test from Case Study
//
//Note: DIV to "see" variables
rect( VeeX, VeeY, DivVeeWidth, DivVeeWidth );
//
text( title, VeeX, VeeY, DivVeeWidth, DivVeeWidth );
