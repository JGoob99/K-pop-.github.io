/* DIVs: 2D Rectangles
*/
//
fullScreen(); //dispalyWidth //displayHeight
println(displayWidth, displayHeight);
int appWidth = displayWidth;
int appHeight = displayHeight;
//
float imageX =  appWidth * 14.2/19.3;
float imageY =  appHeight * 11.1/13.7;
float imageWidth = appWidth * 1.7/19.3;
float imageHeight =  appHeight * 2.6/13.7;

float playX1 = imageX + imageWidth * 1/4;
float playY1 = imageY + imageHeight * 1/4;
float playX2 = imageX + imageWidth * 1/4;
float playY2 = imageY + imageHeight * 3/4;
float playX3 = imageX + imageWidth * 3/4;
float playY3 = imageY + imageHeight * 1/2;

float muteX = appWidth * 12.5/19.3;
float muteY = appHeight * 11.1/13.7;
float muteWidth = appWidth * 1.7/19.3;
float muteHeight = appHeight * 2.6/13.7;

float forwardX = appWidth * 10.8/19.3;
float forwardY = appHeight * 11.1/13.7;
float forwardWidth = appWidth * 1.7/19.3;
float forwardHeight = appHeight * 2.6/13.7;

float reverseX = appWidth * 9/19.3;
float reverseY = appHeight * 11.1/13.7;
float reverseWidth = appWidth * 1.8/19.3;
float reverseHeight = appHeight * 2.6/13.7;

float pauseX = appWidth * 15.9/19.3;
float pauseY = appHeight * 11.1/13.7;
float pauseWidth = appWidth * 1.7/19.3;
float pauseHeight = appHeight * 2.6/13.7;

float fastforwardX = appWidth * 17.6/19.3;
float fastforwardY = appHeight * 11.1/13.7;
float fastforwardWidth = appWidth * 1.7/19.3;
float fastforwardHeight = appHeight * 2.6/13.7;

float colourwheelX = appWidth * 6.25/19.3;
float colourwheelY = appHeight * 11.1/13.7;
float colourwheelWidth = appWidth * 2.75/19.3;
float colourwheelHeight = appHeight * 2.1/13.7;

float descriptionX = appWidth * 0/19.3;
float descriptionY = appHeight * 11.1/13.7;
float descriptionWidth = appWidth * 6.25/19.3;
float descriptionHeight = appHeight * 2.1/13.7;

float languageX = appWidth * 2.35/19.3;
float languageY = appHeight * 13.2/13.7;
float languageWidth = appWidth * 6.65/19.3;
float languageHeight = appHeight * 0.5/13.7;

float settingsX = appWidth * 0/19.3;
float settingsY = appHeight * 13.2/13.7;
float settingsWidth = appWidth * 2.35/19.3;
float settingsHeight = appHeight * 0.5/13.7;

float questionX = appWidth * 18.3/19.3;
float questionY = appHeight * 10/13.7;
float questionWidth = appWidth * 1/19.3;
float questionHeight = appHeight * 1.1/13.7;

float musiclengthX = appWidth * 1.9/19.3;
float musiclengthY = appHeight * 10.15/13.7;
float musiclengthWidth = appWidth * 9.4/19.3;
float musiclengthHeight = appHeight * 0.95/13.7;

float lyricsX = appWidth * 1.9/19.3;
float lyricsY = appHeight * 8.4/13.7;
float lyricsWidth = appWidth * 9.4/19.3;
float lyricsHeight = appHeight * 1.75/13.7;

float pictureX = appWidth * 1.9/19.3;
float pictureY = appHeight * 0.55/13.7;
float pictureWidth = appWidth * 9.4/19.3;
float pictureHeight = appHeight * 7.85/13.7;

float heartX = appWidth * 10.2/19.3;
float heartY = appHeight * 7.3/13.7;
float heartWidth = appWidth * 1.1/19.3;
float heartHeight = appHeight * 1.1/13.7;

float homeX = appWidth * 0/19.3;
float homeY = appHeight * 0/13.7;
float homeWidth = appWidth * 1/19.3;
float homeHeight = appHeight * 1/13.7;

float trackX = appWidth * 11.7/19.3;
float trackY = appHeight * 4.1/13.7;
float trackWidth = appWidth * 6/19.3;
float trackHeight = appHeight * 6.4/13.7;

float artistX = appWidth * 11.7/19.3;
float artistY = appHeight * 1.1/13.7;
float artistWidth = appWidth * 5.5/19.3;
float artistHeight = appHeight * 2.3/13.7;

float volumeX = appWidth * 17.4/19.3;
float volumeY = appHeight * 1.1/13.7;
float volumeWidth = appWidth * 1.9/19.3;
float volumeHeight = appHeight * 2/13.7;

float exitX = appWidth * 18.2/19.3;
float exitY = appHeight * 0/13.7;
float exitWidth = appWidth * 1.1/19.3;
float exitHeight = appHeight * 1.1/13.7;

float searchX = appWidth * 13.5/19.3;
float searchY = appHeight * 0.25/13.7;
float searchWidth = appWidth * 3.9/19.3;
float searchHeight = appHeight * 0.7/13.7;
//
rect(imageX, imageY, imageWidth, imageHeight);
rect(muteX, muteY, muteWidth, muteHeight);
rect(forwardX,forwardY, forwardWidth, forwardHeight);
rect(reverseX, reverseY, reverseWidth, reverseHeight);
rect(pauseX, pauseY, pauseWidth, pauseHeight);
rect(fastforwardX, fastforwardY, fastforwardWidth, fastforwardHeight);
rect(colourwheelX, colourwheelY, colourwheelWidth, colourwheelHeight);
rect(descriptionX, descriptionY, descriptionWidth, descriptionHeight);
rect(languageX, languageY, languageWidth, languageHeight);
rect(settingsX, settingsY, settingsWidth, settingsHeight);
rect(questionX, questionY, questionWidth, questionHeight);
rect(musiclengthX, musiclengthY, musiclengthWidth, musiclengthHeight);
rect(lyricsX, lyricsY, lyricsWidth, lyricsHeight);
rect(pictureX, pictureY, pictureWidth, pictureHeight);
rect(heartX, heartY, heartWidth, heartHeight);
rect(homeX, homeY, homeWidth, homeHeight);
rect(trackX, trackY, trackWidth, trackHeight);
rect(artistX, artistY, artistWidth, artistHeight);
rect(volumeX, volumeY, volumeWidth, volumeHeight);
rect(exitX, exitY, exitWidth, exitHeight);
rect(searchX, searchY, searchWidth, searchHeight);
//
triangle(playX1, playY1, playX2, playY2, playX3, playY3);
