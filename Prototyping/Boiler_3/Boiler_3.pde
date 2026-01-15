/* Creating Buttons
 - Understanding how the mixing of boilerplate happens
 - Introducing Booleans to communicate between procedures, 1 bite of information
 
 - Specific Debugging Topics
 - MouseX & Y keyVariables
 
 - What to copy and paste
 - Quit & Play DIV
 
 */
//
//Library - Minim
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
  size(700, 500);
  //fullScreen();
  appWidth = width;
  appHeight = height;
  //
  //Population
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
  buildingColours();
  color black = 0; // Gray Scale, much smaller color, 256 bits
  color white = 255; // Gray Scale
  //CANVAS: default background and ink
  resetBackgroundDay = white;
  resetInkDay = black;
  resetBackgroundNight = 256/4;
  resetInkNight = int(256*0.75);
  //Button Colours
  color darkblack = #000000;
  color cyan = #00FFFD;
  color green = #00FF46;
  color red = #FF0000;
  color pink = #FF00F3;
  //
  if ( nightMode == true ) {
    resetBackground = resetBackgroundNight;
    resetInk = resetInkNight;
    playColourBackground = red;
    playColourSymbol = cyan;
    playColourBackgroundActivated = darkblack;
    playColourSymbolActivated = green;
    quitBackground = green;
    quitBackgroundActivated = pink;
    quitButtonInk = red;
  } else
  {
    //End setup
    //
    resetBackground = resetBackgroundDay;
    resetInk = darkblack;
    playColourBackground = pink;
    playColourSymbol = red;
    playColourBackgroundActivated = red;
    playColourSymbolActivated = cyan;
    quitBackground = white;
    quitBackgroundActivated = green;
    quitButtonInk = darkblack;
  }
  //
}//
//
void draw() {
  //println ("My Mouse is", mouseX, mouseY);
  if ( mouseX>imageX && mouseX<imageX+imageWidth && mouseY>imageY && mouseY<imageY+imageHeight ) {
    //println("Wahoo! I'm playing you");
    playButton = true;
    fill(playColourBackground);
    rect(exitX, exitY, exitWidth, exitHeight);
    fill(playColourSymbol);
    triangle(playX1, playY1, playX2, playY2, playX3, playY3);
    fill(resetBackground);
  } else {
    //print(" ");
    playButton = false;
    fill(playColourBackground);
    rect(exitX, exitY, exitWidth, exitHeight);
    fill(playColourSymbol);
    triangle(playX1, playY1, playX2, playY2, playX3, playY3);
    fill(resetBackground);
  }//End Play Button Hover Over
  if ( mouseX>imageX && mouseX<imageX+imageWidth && mouseY>imageY &&mouseY<imageY+imageHeight ) {
    fill(quitBackgroundActivated);
    rect(imageX, imageY, imageWidth, imageHeight);
    fill(resetBackground);
    fill(quitButtonInk);
    //
    text("X", imageX+imageWidth*1/2, imageY+imageHeight*3/5);
    fill(resetInk);
  } else {
    fill(quitBackground);
    rect(imageX, imageY, imageWidth, imageHeight);
    fill(resetBackground);
    fill(quitButtonInk);
  }//End Quit Button Hover Over
  //
} //End draw
//
void mousePressed() {
  if ( mouseX>imageX && mouseX<imageX+imageWidth && mouseY>imageY &&mouseY<imageY+imageHeight ) {
    noLoop();
    exit();
    println("Final Line of mousePressed and finishes draw()");
  }
  //Music Play Functions
  if ( playButton == true ) {
    println("Play My Song");
    playButton=false;
  } else {
    println(" ");
  }
} //End Mouse Pressed
//
void keyPressed() {
  //
  if (key =="Q" || key=="q") {
    quitButton();
} //End Key Pressed
//
//End MAIN Program
