/* Text
 - Easy Text, default font, size
 - TBA
 */
//Global Variables
String songTitle;
//
void easyTextQuitButton() {
  text("X", imageX+imageWidth*1/2, imageY+imageHeight*3/5);
} //End Easy Text
//
void textSetup() {
  float fontSize = appHeight;
  PFont titleFont;
  String Georgia = "Georgia";
  titleFont = createFont (Georgia, fontSize);
  //
  float fontSizeGeorgia = 20;
  float GeorgiaAspectRatio = fontSizeGeorgia / DivHeightGeorgia;
  fontSize = DivHeightGeorgia*GeorgiaAspectRatio;
  //
} //End Text Setup
//
//End Subprogram Text
