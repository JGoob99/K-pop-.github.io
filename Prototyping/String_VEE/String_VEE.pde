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
// Students enter all test from Case Study

/*Fonts from OS
 println("Start of Console"); //ERROR: in case CONSOLE Memory not enough
 String[] fontList = PFont.list(); //To list all fonts available on system
 printArray(fontList); //For listing all possible fonts to choose, then createFont
 */
float fontSize = 55; //Entire Program
PFont titleFont; //Font Var name
String Georgia = "Georgia";
titleFont = createFont (Georgia, fontSize);
//Tools / Create Font / Find Font / Do Not Press "OK", known conflict between loadfont() and createfont()
//
println(fontSize, Georgia, titleFont);
//
//Note: DIV to "see" variables
rect( VeeX, VeeY, DivVeeWidth, DivVeeHeight );
//
color cyanInk = #00F2C8; //Hexidecimal
fill(cyanInk); //Ink, Grey Scale 0-255
textFont(titleFont, fontSize); //see variable note
//textFont() has option to combine font declaration with textSize()
text( title, VeeX, VeeY, DivVeeWidth, DivVeeWidth );
