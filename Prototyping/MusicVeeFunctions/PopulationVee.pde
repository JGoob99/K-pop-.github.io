/* Population
- divPopulation
- colourPopulation(), colourPopulation
 */
//Global Variables
float StringDivX, StringDivY, StringDivWidth, StringDivHeight;
color resetBlackInk, resetWhiteInk, purpleInk;
void divPopulation() {
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
  stringDivX = appWidth*70/279;
  stringDivY = appHeight*22/216;
  stringDivWidth = appWidth*140/279;
  stringDivHeight = appHeight*22/216;
} //End DIV Population
//
void colourPopulation() {
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
  //Ink
  resetBlackInk = black;
  resetWhiteInk = white;
  purpleInk = #8B00FF;
} //End Colour Population
// End Subprogram Population
