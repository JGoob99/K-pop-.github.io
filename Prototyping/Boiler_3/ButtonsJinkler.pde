/* List of Buttons and Code Colours
 - Quit
 - Play, Boolean Only
 */
void quitButtonActive() {
  fill(quitBackgroundActivated);
  rect(imageX, imageY, imageWidth, imageHeight);
  fill(resetBackground);
  fill(quitButtonInk);
  //Note: rect() starts top-right corner, text() starts bottom-right corner
  text("X", imageX+imageWidth*1/2, imageY+imageHeight*3/5); //adjust fractions or decimals until working
  fill(resetInk);
} //End Quit Button Active
//
void quitButtonRegular() {
  fill(quitBackground);
  rect(imageX, imageY, imageWidth, imageHeight);
  fill(resetBackground);
  fill(quitButtonInk);
  //Note: rect() starts top-right corner, text() starts bottom-right corner
  text("X", imageX+imageWidth*1/2, imageY+imageHeight*3/5); //adjust fractions or decimals until working
  fill(resetInk);
} //End Quit Button Active
//
void playButtonActive() {
  fill(playColourBackgroundActivated);
  rect(exitX, exitY, exitWidth, exitHeight);
  fill(playColourSymbolActivated);
  triangle(playX1, playY1, playX2, playY2, playX3, playY3);
  fill(resetBackground);
} // End Play Button Active
//
void playButtonReady() {
  fill(playColourBackground);
  rect(playDivX, playDivY, playDivWidth, playDivHeight);
  fill(playColourSymbol);
  triangle(playX1, playY1, playX2, playY2, playX3, playY3);
  fill(resetBackground);
} // End Play Button Ready
//
// End Button Subprogram
