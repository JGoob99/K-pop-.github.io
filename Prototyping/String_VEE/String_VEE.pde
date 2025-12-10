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
println(fontSize, Georgia, titleFont);
float fontSizeGeorgia = 200;
//Hardcoded fontsizeGeorgia
println("Font Size:", fontSize );
/* Aspect Ratio Manipulations (change to variables)
 - choose Aspect Ratio that must be multiplied: fontSize/titleHeight
 - Rewriting fontSize with formulae
 */
float georgiaAspectRatio = fontSizeGeorgia / DivVeeHeight;
fontSize = DivVeeHeight*georgiaAspectRatio;
println("Georgia Aspect Ratio:", georgiaAspectRatio);
println(); //Skip a line
//
//Note: DIV to "see" variables
rect( VeeX, VeeY, DivVeeWidth, DivVeeHeight );
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
float constrantDecrease = 0.99; //99% of original or 1% decrease
while ( textWidth( title ) > DivVeeWidth ) {
  //ERROR: infinite loop, requires exit() & println()
  textFont(titleFont, fontSize); //see variable note
} //End WHILE Error Check Text-wrap

//WHILE Error Check
//textFont() has option to combine font declaration with textSize()
//textFont() is better for more than one PFont Variable
//
text( title, VeeX, VeeY, DivVeeWidth, DivVeeHeight );
fill(resetInk);
