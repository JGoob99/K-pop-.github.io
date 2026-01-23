/* Text
 - Easy Text, default font, size
 - TBA
 */
//Global Variables
String songTitle;
float fontSize;
PFont titleFont;
//
void easyTextQuitButton() {
  text("X", imageX+imageWidth*1/2, imageY+imageHeight*3/5);
} //End Easy Text
//
void textSetup() {
  fontSize = appHeight;
  String Georgia = "Georgia";
  titleFont = createFont (Georgia, fontSize);
  //
  float fontSizeGeorgia = 20;
  float GeorgiaAspectRatio = fontSizeGeorgia / DivHeightGeorgia;
  fontSize = fontSizeGeorgia*GeorgiaAspectRatio;
  //
} //End Text Setup
//
void textdraw() {
  fill(cyanInk); //Ink, Grey Scale 0-255
textAlign (CENTER, CENTER); //Align X&Y, see Processing.org/Reference
//Values: [LEFT | CENTER | RIGHT] & [TOP | CENTER | BOTTOM | BASELINE]
textFont(titleFont, fontSize); //see variable note
//ERRORs
float constantDecrease = 0.99; //99% of original or 1% decrease
//FOR Loop Error, Copy * Paste three times
int iWhile=0;
  while ( textWidth( playListMetaData[currentSong].title() ) > DivVeeWidth[i] ) {
    iWhile++;
  //ERROR: infinite loop, requires exit() & println()
  fontSize *= constantDecrease; //Assignment Operator  //fontSize = fontSize*0.99;
  textFont(titleFont, fontSize); //see variable note
  } //End WHILE Error Check Text-wrap
   //println("Iterations of WHILE:", iWhile, "\tPixel difference of divWidth & textWidth:", DivVeeWidth[i]-textWidth( playListMetaData[currentSong].title() ), "\tUsing", constantDecrease*100+"%" );
  text( playListMetaData[currentSong].title(), VeeX[i], VeeY[i], DivVeeWidth[i], DivVeeHeight[i] );
fill(resetInk);
} //End Text Draw
//
//End Subprogram Text
