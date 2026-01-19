/* Creating Buttons - HoverOver in draw()
 - Add Minim from Sketch / Import Library / Minim
 */
//
//Library - Minim
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
//
//Global Variables
int appWidth, appHeight;
float imageX, imageY, imageWidth, imageHeight;
float exitX, exitY, exitWidth, exitHeight;
float playX1, playY1, playX2, playY2, playX3, playY3;
//
Boolean playButton=false, quitButton=false;
//
color resetBackground, resetInk, resetBackgroundDay, resetInkDay, resetBackgroundNight, resetInkNight;
color quitButtonInk;
color playColourBackground, playColourSymbol, playColourBackgroundActivated, playColourSymbolActivated;
color quitBackground, quitBackgroundActivated;
Boolean nightMode=false;
//
void setup() {
  //Display
  //size(700, 500);
  fullScreen();
  appWidth = displayWidth;
  appHeight = displayHeight;
  //
  //DIV Population
  imageX =  appWidth * 14.2/19.3;
  imageY =  appHeight * 11.1/13.7;
  imageWidth = appWidth * 1.7/19.3;
  imageHeight =  appHeight * 2.6/13.7;
  playX1 = imageX + imageWidth * 1/4;
  playY1 = imageY + imageHeight * 1/4;
  playX2 = imageX + imageWidth * 1/4;
  playY2 = imageY + imageHeight * 3/4;
  playX3 = imageX + imageWidth * 3/4;
  playY3 = imageY + imageHeight * 1/2;
  exitX = appWidth * 18.2/19.3;
  exitY = appHeight * 0/13.7;
  exitWidth = appWidth * 1.1/19.3;
  exitHeight = appHeight * 1.1/13.7;
  //
  //DIVs
  rect(imageX, imageY, imageWidth, imageHeight);
  rect(exitX, exitY, exitWidth, exitHeight);
  triangle(playX1, playY1, playX2, playY2, playX3, playY3);
  //
  //Colour Population
  nightMode=false;
} //End setup
//
void draw() {
} //End draw
//
void mousePressed() {
  if ( mouseX>imageX && mouseX<imageX+imageWidth && mouseY>imageY &&mouseY<imageY+imageHeight ) {
    quitButton();
  }
} //End Mouse Pressed
//
void keyPressed() {
  if (key=='Q' || key=='q') {
    quitButton();
  }
  if (key=='D' || key=='d') {
    colourPopulation();
  } //Night Mode
} //End Key Pressed
//
void quitButton() {
  noLoop();
  exit();
  println("Final Line of mousePressed and finishes draw()");
}//End Quit Button
//
//End MAIN Program
