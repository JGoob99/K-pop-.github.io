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
  quitDIV();
  playDIV();
  titleDIV();
} //End DIVs
//
void quitDIV() {
  rect(exitX, exitY, exitWidth, exitHeight);
} // End Quit Button DIV
//
void playDIV() {
  rect(imageX, imageY, imageWidth, imageHeight);
} // End Play Button DIV
//
void playButtonSymbol() {
  triangle(playX1, playY1, playX2, playY2, playX3, playY3);
}
//
void musicButtonShapes() {
  triangle(playX1, playY1, playX2, playY2, playX3, playY3);
} //End Music Button Shapes
//
void quitButtonActive() {
  fill(quitBackgroundActivated);
  rect(imageX, imageY, imageWidth, imageHeight);
  fill(resetBackground);
  fill(quitButtonInk);
  easyTextQuitButton();
  fill(resetInk);
}
//
void quitButtonRegular() {
  fill(quitBackground);
  //
  rect(exitX, exitY, exitWidth, exitHeight);
  fill(resetBackground);
  fill(quitButtonInk);
  easyTextQuitButton();
  fill(resetInk);
}
//
void playButtonActive() {
  fill(playColourBackgroundActivated);
  //
  rect(imageX, imageY, imageWidth, imageHeight);
  fill(playColourSymbolActivated);
  //
  triangle(playX1, playY1, playX2, playY2, playX3, playY3);
  fill(resetBackground);
}
//
void playButtonReady() {
  fill(playColourBackground);
  rect(imageX, imageY, imageWidth, imageHeight);
  fill(playColourSymbol);
  //
  triangle(playX1, playY1, playX2, playY2, playX3, playY3);
  fill(resetBackground);
}
//
void hoverOver_draw() {
  if ( mouseX>imageX && mouseX<imageX+imageWidth && mouseY>imageY && mouseY<imageY+imageHeight ) {
    quitButtonActive();
  } else {
    quitButtonRegular();
  }//End Quit Button Hover Over
  if ( mouseX>imageX && mouseX<imageX+imageWidth && mouseY>imageY &&mouseY<imageY+imageHeight ) {
    if ( playButton == false ) playButtonActive();
  } else {
    //
    playButtonReady();
    if ( playButton == true ) playButtonActive();
  }
  //
}
//Button HoverOver
//End Buttons Supbrogram
