// Hearing Music and Sound Effects
//
//Library - Minim
//Reminder: activate the Library
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
//
//Global Variables
Minim minim; //initates entire class
int numberOfSongs = 1; //Best Practice
int numberOfSoundEffects = 1; //Best Practice
AudioPlayer[] playList = new AudioPlayer[ numberOfSongs ];
AudioPlayer[] soundEffects = new AudioPlayer[ numberOfSoundEffects];
int currentSong = numberOfSongs - numberOfSongs; //ZERO, Math Property
//
void setup() {
  println(displayWidth, displayHeight);
  size(700, 500); //width //height
  //fullScreen(); //displayWidth //displayHeight
  int appWidth = width;
  int appHeight = height;
  //
  //Music Loading - STRUCTURED Review
  minim = new Minim(this);
  String upArrow = "../../";
  String musicFolder = "Music/"; //Developer Specific
  String soundEffectsFolder = "Sound Effects/";
  String songName1 = "Music_Normal_Cycles";
  String soundEffect1 = "yippee-tbh";
  String fileExtension_mp3 = ".mp3";
  //
  String musicDirectory = upArrow + musicFolder; //Concatenation
  String soundEffectsDirectory = upArrow + musicFolder + soundEffectsFolder; //Concatenation
  String file = musicDirectory + songName1 + fileExtension_mp3;
  playList[ currentSong ] = minim.loadFile( file ); //ERROR: Verify Spelling & Library installed, Sketch / Import Library
  file = soundEffectsDirectory + soundEffect1 + fileExtension_mp3; //Rewritting FILE
  soundEffects[currentSong] = minim.loadFile( file ); //ERROR: Verify Spelling & Library installed, Sketch / Import Library
  //
  if ( playList[currentSong]==null || soundEffects[currentSong]==null) { //ERROR, play list is NULL
    //See FILE or minim.loadFile
    println("The Play List or Sound Effects did not load properly");
    printArray(playList);
    printArray(soundEffects);
    /*
  println("Music Pathway", musicDirectory);
     println("Full Music File Pathway", file);
     */
  }
  //
  //Testing Sound
  //playList[currentSong].play();
  soundEffects[currentSong].play();
  //
} //End setup
//
void draw() {
} //End draw
//
void mousePressed() {
} //End Mouse Pressed
//
void keyPressed() {
} //End Key Pressed
//
//End MAIN Program
