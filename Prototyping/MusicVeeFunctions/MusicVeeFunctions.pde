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
  divPopulation();
  DIVs(); //See Buttons
  musicButtonShapes();
  nightMode=false;
  colourPopulation();
  //
} //End setup
//
void draw() {
  //println ("My Mouse is", MouseX, MouseY);
  //println (playButton);
  hoverOver_draw(); //See Buttons
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
//End MAIN Program
