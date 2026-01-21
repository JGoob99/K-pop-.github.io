/* Music Subprogram
 */
//
//Global Variables
Minim minim; //initates entire class
int numberOfSongs = 3; //Best Practice
int numberOfSoundEffects = 1; //Best Practice
AudioPlayer[] playList = new AudioPlayer[ numberOfSongs ];
AudioPlayer[] soundEffects = new AudioPlayer[ numberOfSoundEffects];
int currentSong = numberOfSongs - numberOfSongs; //ZERO, Math Property
//
void musicSetup() {
  //Music Loading - STRUCTURED Review
  minim = new Minim(this);
  String upArrow = "../../";
  String musicFolder = "Music/"; //Developer Specific
  String soundEffectsFolder = "Sound Effects/";
  //
  String[] songName = new String[numberOfSongs];
  songName[0] = "Music_Normal_Cycles";
  songName[1] = "Music_Normal_Eureka";
  songName[2] = "Music_Normal_Beat_Your_Competition";


  String soundEffect1 = "yippee-tbh";
  String fileExtension_mp3 = ".mp3";
  //
  String musicDirectory = upArrow + musicFolder; //Concatenation
  String soundEffectsDirectory = upArrow + musicFolder + soundEffectsFolder; //Concatenation
  String file;
  //
  for ( int i=0; i<numberOfSongs; i++ ) {
    file = musicDirectory + songName[i] + fileExtension_mp3;
    playList[ currentSong ] = minim.loadFile( file ); //ERROR: Verify Spelling & Library installed, Sketch / Import Library
    currentSong++;
  } //End File Loading
  currentSong=0;
  file = soundEffectsDirectory + soundEffect1 + fileExtension_mp3; //Rewritting FILE
  soundEffects[currentSong] = minim.loadFile( file ); //ERROR: Verify Spelling & Library installed, Sketch / Import Library
  //
  for ( int i=0; i<numberOfSongs; i++ ) {
    if ( playList[i]==null || soundEffects[currentSong]==null) { //ERROR, play list is NULL
      //See FILE or minim.loadFile
      println("The Play List or Sound Effects did not load properly");
      printArray(playList);
      printArray(soundEffects);
      /*
  println("Music Pathway", musicDirectory);
       println("Full Music File Pathway", file);
       */
    }
  }
  //
} // End Music Setup
//End Main PRogram
