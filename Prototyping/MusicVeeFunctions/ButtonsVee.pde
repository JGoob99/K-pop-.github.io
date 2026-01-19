/* Buttons
 - quitButton
 * DIVs
 - musicButtonShapes, 2-D Music Buttons
 - hoverOver_draw(), Hoverover for buttons, draw()
 */
//
void quitButton() {
  noLoop();
  exit();
  println("Final Line of mousePressed and finishes draw()");
}//End Quit Button
//
void DIVs() {
} //End DIVs
  rect(imageX, imageY, imageWidth, imageHeight);
  rect(exitX, exitY, exitWidth, exitHeight);
//
void musicButtonShapes() {
  triangle(playX1, playY1, playX2, playY2, playX3, playY3);
} //End Music Button Shapes
//
void quitButtonActive() {
  
  //
void hoverOver_draw() {
  if ( mouseX>imageX && mouseX<imageX+imageWidth && mouseY>imageY && mouseY<imageY+imageHeight ) {
    quitButtonActive();
  } else {
    quitButtonRegular();
  }//End Play Button Hover Over
  if ( mouseX>imageX && mouseX<imageX+imageWidth && mouseY>imageY &&mouseY<imageY+imageHeight ) {
    if ( playButton == false ) playButtonActive();
  //Button HoverOver
//End Buttons Supbrogram
