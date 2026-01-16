void colourPopulation() {
  nightModeVariables();
  buildingColours();
  
}//End Colour Population
//
void nightModeVariables() {
  if (nightMode==false); {
    nightMode=true;
  } else {
    nightMode=false;
  }
}//End Night Mode Variables
//
void buildingColours() {
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
