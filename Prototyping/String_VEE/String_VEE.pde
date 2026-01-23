fullScreen(); //Landscape
//size(500, 700); //Portrait
int appWidth = displayWidth; //width
int appHeight = displayHeight; //height
//println("Display VARS:", "appWidth:"+appWidth, "appHeight:"+appHeight);
//println("\n\t\t\t\t\t\t\tFullScreen, displayWidth:"+displayWidth, "displayHeight:"+displayHeight, "width:"+width, "height:"+height);
//
//Population
int numberOfDIVs = 3;
float[] VeeX = new float[numberOfDIVs];
float[] VeeY = new float[numberOfDIVs];
float[] DivVeeWidth = new float[numberOfDIVs];
float[] DivVeeHeight = new float[numberOfDIVs];
VeeX[0] = appWidth*1.9/19.3;
VeeY[0] = appHeight*0.55/13.7;
DivVeeWidth[0] = appWidth*9.4/19.3;
DivVeeHeight[0] = appHeight*7.85/13.7;
VeeX[1] = appWidth*1.9/19.3;
VeeY[1] = appHeight*10.15/13.7;
DivVeeWidth[1] = appWidth*9.4/19.3;
DivVeeHeight[1] = appHeight*0.95/13.7;
VeeX[2] = appWidth*1.9/19.3;
VeeY[2] = appHeight*8.4/13.7;
DivVeeWidth[2] = appWidth*9.4/19.3;
DivVeeHeight[2] = appHeight*1.75/13.7;
//
//Strings, Text, Literal
String[] text = new String[numberOfDIVs];
text[0] = "Noah Schnapp, Finn Wolfhard, Caleb Sinclair, Steve, Johnathan, Hopper, Joyce, Nancy, Dusty buns x Suzie poo";
text[1] = "Life is roblox";
text[2] = " Stranger Thing season 5 is out :D";
// Students enter all text from Case Study
/*Fonts from OS
 println("Start of Console"); //ERROR: in case CONSOLE Memory not enough
 String[] fontList = PFont.list(); //To list all fonts available on system
 printArray(fontList); //For listing all possible fonts to choose, then createFont
 */
float fontSize = appHeight; //Entire Program
PFont titleFont; //Font Var name
String Georgia = "Georgia";
titleFont = createFont (Georgia, fontSize);
//Tools / Create Font / Find Font / Do Not Press "OK", known conflict between loadfont() and createfont()
//
float fontSizeGeorgia = 20;
float DivHeightGeorgia = DivVeeHeight[0];
//Hardcoded fontsizeGeorgia
/* Aspect Ratio Manipulations (change to variables)
 - choose Aspect Ratio that must be multiplied: fontSize/titleHeight
 - Rewriting fontSize with formulae
 */
float GeorgiaAspectRatio = fontSizeGeorgia / DivHeightGeorgia;
fontSize = DivVeeHeight[0]*GeorgiaAspectRatio;
//
//Note: DIV to "see" variables
for ( int i=0; i<numberOfDIVs; i++ ) {
  rect( VeeX[i], VeeY[i], DivVeeWidth[i], DivVeeHeight[i] );
} //End FOR DIVs
//
//Drawing Text
color cyanInk = #00F2C8; //Hexidecimal
color whiteInk = #FFFFFF; //Grey Scale is 255
color resetInk = whiteInk;
fill(cyanInk); //Ink, Grey Scale 0-255
textAlign (CENTER, CENTER); //Align X&Y, see Processing.org/Reference
//Values: [LEFT | CENTER | RIGHT] & [TOP | CENTER | BOTTOM | BASELINE]
//ERROR Check fontSize, decreasing the text when wrapped or not shown
textFont(titleFont, fontSize); //see variable note
float constantDecrease = 0.99; //99% of original or 1% decrease
//FOR Loop Error, Copy * Paste three times
int iWhile=0;
  while ( textWidth( text[i] ) > DivVeeWidth[i] ) {
    iWhile++;
  //ERROR: infinite loop, requires exit() & println()
  fontSize *= constantDecrease; //Assignment Operator  //fontSize = fontSize*0.99;
  textFont(titleFont, fontSize); //see variable note
  } //End WHILE Error Check Text-wrap
   println("Iterations of WHILE:", iWhile, "\tPixel difference of divWidth & textWidth:", DivVeeWidth[i]-textWidth( text[i] ), "\tUsing", constantDecrease*100+"%" );
} //End FOR Loop, Font Size Check in DIVs
//WHILE Error Check
for ( int i=0; i<3; i++) {
  text( text[i], VeeX[i], VeeY[i], DivVeeWidth[i], DivVeeHeight[i] );
}
fill(resetInk);
