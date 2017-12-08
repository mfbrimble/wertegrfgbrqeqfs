
PImage Snowimage;
PImage snowrun;
PImage night;

boolean isHandMovementDetectorWindowCreated = false;
int loadingScreenCounter=0;
Snow mySnow;
PImage backgroundImg, hole, apple;
int[] randomHolePosition = new int[50];

int[] randomApplePositionx = new int[50]; 
int[] randomApplePositiony = new int[50]; 

float xPos; // x position of Snow character
float yPos; // y position of Snow character

boolean gameOver = false; 
boolean gameWin = false; 
int startTime, currentTime;

boolean didUserChooseMovementDetectorType =false;
int userChoiseForMovementDetectorType = 0;

void setup() {  
  startTime = millis();
  currentTime = 0;
  smooth();
  noStroke();
  
  night = loadImage("night.png");
  night.resize(650,50);

  Snowimage = loadImage("Snowwhitte.png");
  Snowimage.resize(73, 158);

  snowrun = loadImage("snowrun.png");
  snowrun.resize(82, 158);

  mySnow = new Snow(50, 530);

  backgroundImg = loadImage("game-background.jpg");

  hole = loadImage("cauldron.png");

  apple = loadImage("app.png");
  apple.resize(127, 145);
  // creating random 50 holes
  randomHolePosition[0] = 250; 
  for (int i=1; i<50; i++) {    
    randomHolePosition[i] = randomHolePosition[i-1]+int(random(150, 800));
  }  
  randomHolePosition = sort (randomHolePosition);    

  // creating random 50 apples
  randomApplePositiony[0] = 25;
  randomApplePositionx[0] = 250;  
  for (int i=1; i<50; i++) {       
    randomApplePositionx[i] = randomApplePositionx[i-1]+int(random(150, 800));
    randomApplePositiony[i] = randomApplePositiony[i-1]+int(random(20, 60));
  }
  randomApplePositionx = sort (randomApplePositionx);
}

void settings() {
  size(1200, 800);
}

void initialization() {
  // creating random 50 holes
  randomHolePosition[0] = 250; 
  for (int i=1; i<50; i++) {    
    randomHolePosition[i] = randomHolePosition[i-1]+int(random(150, 800));
  }  
  randomHolePosition = sort (randomHolePosition);    

  // creating random 50 apples
  randomApplePositiony[0] = 25;
  randomApplePositionx[0] = 250;  
  for (int i=1; i<50; i++) {       
    randomApplePositionx[i] = randomApplePositionx[i-1]+int(random(150, 800));
    randomApplePositiony[i] = randomApplePositiony[i-1]+int(random(20, 60));
  }
  randomApplePositionx = sort (randomApplePositionx);
  currentTime = 0;
  startTime = millis();
}



void checkGameOver() {
  if (((0<=randomHolePosition[0] && randomHolePosition[0]<=110) &  yPos > 480) || ((0<=randomHolePosition[1] && randomHolePosition[1]<=110) &  yPos > 480) || ((0<=randomHolePosition[2] && randomHolePosition[2]<=110) &  yPos > 480) || ((0<=randomHolePosition[3] && randomHolePosition[3]<=110) &  yPos > 480) || ((0<=randomHolePosition[4] && randomHolePosition[4]<=110) &  yPos > 480) || ((0<=randomHolePosition[5] && randomHolePosition[5]<=110) &  yPos > 480) || ((0<=randomHolePosition[6] && randomHolePosition[6]<=110) &  yPos > 480) || ((0<=randomHolePosition[7] && randomHolePosition[7]<=110) &  yPos > 480) || ((0<=randomHolePosition[8] && randomHolePosition[8]<=110) &  yPos > 480) || ((0<=randomHolePosition[9] && randomHolePosition[9]<=110) &  yPos > 480) || ((0<=randomHolePosition[10] && randomHolePosition[10]<=110) &  yPos > 480) || ((0<=randomHolePosition[11] && randomHolePosition[11]<=110) &  yPos > 480) || ((0<=randomHolePosition[12] && randomHolePosition[12]<=110) &  yPos > 480) || ((0<=randomHolePosition[13] && randomHolePosition[13]<=110) &  yPos > 480) || ((0<=randomHolePosition[14] && randomHolePosition[14]<=110) &  yPos > 480) || ((0<=randomHolePosition[15] && randomHolePosition[15]<=110) &  yPos > 480) || ((0<=randomHolePosition[16] && randomHolePosition[16]<=110) &  yPos > 480) || ((0<=randomHolePosition[17] && randomHolePosition[17]<=110) &  yPos > 480) || ((0<=randomHolePosition[18] && randomHolePosition[18]<=110) &  yPos > 480) || ((0<=randomHolePosition[19] && randomHolePosition[19]<=110) &  yPos > 480) || ((0<=randomHolePosition[20] && randomHolePosition[20]<=110) &  yPos > 480) || ((0<=randomHolePosition[21] && randomHolePosition[21]<=110) &  yPos > 480) || ((0<=randomHolePosition[22] && randomHolePosition[22]<=110) &  yPos > 480) || ((0<=randomHolePosition[23] && randomHolePosition[23]<=110) &  yPos > 480) || ((0<=randomHolePosition[24] && randomHolePosition[24]<=110) &  yPos > 480) || ((0<=randomHolePosition[25] && randomHolePosition[25]<=110) &  yPos > 480) || ((0<=randomHolePosition[26] && randomHolePosition[26]<=110) &  yPos > 480) || ((0<=randomHolePosition[27] && randomHolePosition[27]<=110) &  yPos > 480) || ((0<=randomHolePosition[28] && randomHolePosition[28]<=110) &  yPos > 480) || ((0<=randomHolePosition[29] && randomHolePosition[29]<=110) &  yPos > 480) || ((0<=randomHolePosition[30] && randomHolePosition[30]<=110) &  yPos > 480) || ((0<=randomHolePosition[31] && randomHolePosition[31]<=110) &  yPos > 480) || ((0<=randomHolePosition[32] && randomHolePosition[32]<=110) &  yPos > 480) || ((0<=randomHolePosition[33] && randomHolePosition[33]<=110) &  yPos > 480) || ((0<=randomHolePosition[34] && randomHolePosition[34]<=110) &  yPos > 480) || ((0<=randomHolePosition[35] && randomHolePosition[35]<=110) &  yPos > 480) || ((0<=randomHolePosition[36] && randomHolePosition[36]<=110) &  yPos > 480) || ((0<=randomHolePosition[37] && randomHolePosition[37]<=110) &  yPos > 480) || ((0<=randomHolePosition[38] && randomHolePosition[38]<=110) &  yPos > 480) || ((0<=randomHolePosition[39] && randomHolePosition[39]<=110) &  yPos > 480) || ((0<=randomHolePosition[40] && randomHolePosition[40]<=110) &  yPos > 480) || ((0<=randomHolePosition[41] && randomHolePosition[41]<=110) &  yPos > 480) || ((0<=randomHolePosition[42] && randomHolePosition[42]<=110) &  yPos > 480) || ((0<=randomHolePosition[43] && randomHolePosition[43]<=110) &  yPos > 480) || ((0<=randomHolePosition[44] && randomHolePosition[44]<=110) &  yPos > 480) || ((0<=randomHolePosition[45] && randomHolePosition[45]<=110) &  yPos > 480) || ((0<=randomHolePosition[46] && randomHolePosition[46]<=110) &  yPos > 480) || ((0<=randomHolePosition[47] && randomHolePosition[47]<=110) &  yPos > 480) || ((0<=randomHolePosition[48] && randomHolePosition[48]<=110) &  yPos > 480) || ((0<=randomHolePosition[49] && randomHolePosition[49]<=110) &  yPos > 480)) {       
    textSize(60);
    fill(127, 0, 0);
    text("GAME OVER!", 400, 400);
    textSize(32);
    fill(0, 0, 127);
    text("please press 's' to start again", 350, 440); 
    gameOver = true;
  } else if (((0<=randomApplePositionx[0]) && (randomApplePositionx[0]<=90) && (randomApplePositiony[0] >= yPos-7) && (randomApplePositiony[0] <= yPos+7)) || ((0<=randomApplePositionx[1]) && (randomApplePositionx[1]<=90) && (randomApplePositiony[1] >= yPos-7) && (randomApplePositiony[1] <= yPos+7)) || ((0<=randomApplePositionx[2]) && (randomApplePositionx[2]<=90) && (randomApplePositiony[2] >= yPos-7) && (randomApplePositiony[2] <= yPos+7)) || ((0<=randomApplePositionx[3]) && (randomApplePositionx[3]<=90) && (randomApplePositiony[3] >= yPos-7) && (randomApplePositiony[3] <= yPos+7)) || ((0<=randomApplePositionx[4]) && (randomApplePositionx[4]<=90) && (randomApplePositiony[4] >= yPos-7) && (randomApplePositiony[4] <= yPos+7)) || ((0<=randomApplePositionx[5]) && (randomApplePositionx[5]<=90) && (randomApplePositiony[5] >= yPos-7) && (randomApplePositiony[5] <= yPos+7)) || ((0<=randomApplePositionx[6]) && (randomApplePositionx[6]<=90) && (randomApplePositiony[6] >= yPos-7) && (randomApplePositiony[6] <= yPos+7)) || ((0<=randomApplePositionx[7]) && (randomApplePositionx[7]<=90) && (randomApplePositiony[7] >= yPos-7) && (randomApplePositiony[7] <= yPos+7)) || ((0<=randomApplePositionx[8]) && (randomApplePositionx[8]<=90) && (randomApplePositiony[8] >= yPos-7) && (randomApplePositiony[8] <= yPos+7)) || ((0<=randomApplePositionx[9]) && (randomApplePositionx[9]<=90) && (randomApplePositiony[9] >= yPos-7) && (randomApplePositiony[9] <= yPos+7)) || ((0<=randomApplePositionx[10]) && (randomApplePositionx[10]<=90) && (randomApplePositiony[10] >= yPos-7) && (randomApplePositiony[10] <= yPos+7)) || ((0<=randomApplePositionx[11]) && (randomApplePositionx[11]<=90) && (randomApplePositiony[11] >= yPos-7) && (randomApplePositiony[11] <= yPos+7)) || ((0<=randomApplePositionx[12]) && (randomApplePositionx[12]<=90) && (randomApplePositiony[12] >= yPos-7) && (randomApplePositiony[12] <= yPos+7)) || ((0<=randomApplePositionx[13]) && (randomApplePositionx[13]<=90) && (randomApplePositiony[13] >= yPos-7) && (randomApplePositiony[13] <= yPos+7)) || ((0<=randomApplePositionx[14]) && (randomApplePositionx[14]<=90) && (randomApplePositiony[14] >= yPos-7) && (randomApplePositiony[14] <= yPos+7)) || ((0<=randomApplePositionx[15]) && (randomApplePositionx[15]<=90) && (randomApplePositiony[15] >= yPos-7) && (randomApplePositiony[15] <= yPos+7)) || ((0<=randomApplePositionx[16]) && (randomApplePositionx[16]<=90) && (randomApplePositiony[16] >= yPos-7) && (randomApplePositiony[16] <= yPos+7)) || ((0<=randomApplePositionx[17]) && (randomApplePositionx[17]<=90) && (randomApplePositiony[17] >= yPos-7) && (randomApplePositiony[17] <= yPos+7)) || ((0<=randomApplePositionx[18]) && (randomApplePositionx[18]<=90) && (randomApplePositiony[18] >= yPos-7) && (randomApplePositiony[18] <= yPos+7)) || ((0<=randomApplePositionx[19]) && (randomApplePositionx[19]<=90) && (randomApplePositiony[19] >= yPos-7) && (randomApplePositiony[19] <= yPos+7)) || ((0<=randomApplePositionx[20]) && (randomApplePositionx[20]<=90) && (randomApplePositiony[20] >= yPos-7) && (randomApplePositiony[20] <= yPos+7)) || ((0<=randomApplePositionx[21]) && (randomApplePositionx[21]<=90) && (randomApplePositiony[21] >= yPos-7) && (randomApplePositiony[21] <= yPos+7)) || ((0<=randomApplePositionx[22]) && (randomApplePositionx[22]<=90) && (randomApplePositiony[22] >= yPos-7) && (randomApplePositiony[22] <= yPos+7)) || ((0<=randomApplePositionx[23]) && (randomApplePositionx[23]<=90) && (randomApplePositiony[23] >= yPos-7) && (randomApplePositiony[23] <= yPos+7)) || ((0<=randomApplePositionx[24]) && (randomApplePositionx[24]<=90) && (randomApplePositiony[24] >= yPos-7) && (randomApplePositiony[24] <= yPos+7)) || ((0<=randomApplePositionx[25]) && (randomApplePositionx[25]<=90) && (randomApplePositiony[25] >= yPos-7) && (randomApplePositiony[25] <= yPos+7)) || ((0<=randomApplePositionx[26]) && (randomApplePositionx[26]<=90) && (randomApplePositiony[26] >= yPos-7) && (randomApplePositiony[26] <= yPos+7)) || ((0<=randomApplePositionx[27]) && (randomApplePositionx[27]<=90) && (randomApplePositiony[27] >= yPos-7) && (randomApplePositiony[27] <= yPos+7)) || ((0<=randomApplePositionx[28]) && (randomApplePositionx[28]<=90) && (randomApplePositiony[28] >= yPos-7) && (randomApplePositiony[28] <= yPos+7)) || ((0<=randomApplePositionx[29]) && (randomApplePositionx[29]<=90) && (randomApplePositiony[29] >= yPos-7) && (randomApplePositiony[29] <= yPos+7)) || ((0<=randomApplePositionx[30]) && (randomApplePositionx[30]<=90) && (randomApplePositiony[30] >= yPos-7) && (randomApplePositiony[30] <= yPos+7)) || ((0<=randomApplePositionx[31]) && (randomApplePositionx[31]<=90) && (randomApplePositiony[31] >= yPos-7) && (randomApplePositiony[31] <= yPos+7)) || ((0<=randomApplePositionx[32]) && (randomApplePositionx[32]<=90) && (randomApplePositiony[32] >= yPos-7) && (randomApplePositiony[32] <= yPos+7)) || ((0<=randomApplePositionx[33]) && (randomApplePositionx[33]<=90) && (randomApplePositiony[33] >= yPos-7) && (randomApplePositiony[33] <= yPos+7)) || ((0<=randomApplePositionx[34]) && (randomApplePositionx[34]<=90) && (randomApplePositiony[34] >= yPos-7) && (randomApplePositiony[34] <= yPos+7)) || ((0<=randomApplePositionx[35]) && (randomApplePositionx[35]<=90) && (randomApplePositiony[35] >= yPos-7) && (randomApplePositiony[35] <= yPos+7)) || ((0<=randomApplePositionx[36]) && (randomApplePositionx[36]<=90) && (randomApplePositiony[36] >= yPos-7) && (randomApplePositiony[36] <= yPos+7)) || ((0<=randomApplePositionx[37]) && (randomApplePositionx[37]<=90) && (randomApplePositiony[37] >= yPos-7) && (randomApplePositiony[37] <= yPos+7)) || ((0<=randomApplePositionx[38]) && (randomApplePositionx[38]<=90) && (randomApplePositiony[38] >= yPos-7) && (randomApplePositiony[38] <= yPos+7)) || ((0<=randomApplePositionx[39]) && (randomApplePositionx[39]<=90) && (randomApplePositiony[39] >= yPos-7) && (randomApplePositiony[39] <= yPos+7)) || ((0<=randomApplePositionx[40]) && (randomApplePositionx[40]<=90) && (randomApplePositiony[40] >= yPos-7) && (randomApplePositiony[40] <= yPos+7)) || ((0<=randomApplePositionx[41]) && (randomApplePositionx[41]<=90) && (randomApplePositiony[41] >= yPos-7) && (randomApplePositiony[41] <= yPos+7)) || ((0<=randomApplePositionx[42]) && (randomApplePositionx[42]<=90) && (randomApplePositiony[42] >= yPos-7) && (randomApplePositiony[42] <= yPos+7)) || ((0<=randomApplePositionx[43]) && (randomApplePositionx[43]<=90) && (randomApplePositiony[43] >= yPos-7) && (randomApplePositiony[43] <= yPos+7)) || ((0<=randomApplePositionx[44]) && (randomApplePositionx[44]<=90) && (randomApplePositiony[44] >= yPos-7) && (randomApplePositiony[44] <= yPos+7)) || ((0<=randomApplePositionx[45]) && (randomApplePositionx[45]<=90) && (randomApplePositiony[45] >= yPos-7) && (randomApplePositiony[45] <= yPos+7)) || ((0<=randomApplePositionx[46]) && (randomApplePositionx[46]<=90) && (randomApplePositiony[46] >= yPos-7) && (randomApplePositiony[46] <= yPos+7)) || ((0<=randomApplePositionx[47]) && (randomApplePositionx[47]<=90) && (randomApplePositiony[47] >= yPos-7) && (randomApplePositiony[47] <= yPos+7)) || ((0<=randomApplePositionx[48]) && (randomApplePositionx[48]<=90) && (randomApplePositiony[48] >= yPos-7) && (randomApplePositiony[48] <= yPos+7)) || ((0<=randomApplePositionx[49]) && (randomApplePositionx[49]<=90) && (randomApplePositiony[49] >= yPos-7) && (randomApplePositiony[49] <= yPos+7))) {
    textSize(60);
    fill(127, 0, 0);
    text("GAME OVER!", 400, 400);
    textSize(32);
    fill(0, 0, 127);
    text("please press 's' to start again", 350, 440); 
    gameOver = true;
  }
}
void checkGameWin() {
  if (currentTime/1000 >= 100) {
   
    fill(255);
    rect(0,0,width, height);
    
    currentTime = 0;
    
    textSize(60);
    fill(127, 0, 0);
    text("YOU WON!!", 400, 400);
    textSize(32);
    fill(0, 0, 127);
    text("please press 's' to start again", 350, 440); 
    gameWin = true;
    
  }
}


//KEYBOARD INPUT
void keyPressed() {
  if (key == CODED) {
    if (keyCode == UP) {
      mySnow.moveUp = true;
    }
  }
  if (gameOver == true && key == 's') {   
    gameOver = false;
    initialization();
  }
  if (didUserChooseMovementDetectorType==false && key == '1') {   
    userChoiseForMovementDetectorType=1;
  }
  if (gameWin == true && key == 's') {   
    gameOver = false;
    initialization();
  }
}

void keyReleased() {
  if (key == CODED) {
    if (keyCode == UP) {
      mySnow.moveUp = false;
      mySnow.moveDown = true;
    }
  }
}


//PLAYER CLASS
class Snow {
  float speed = 2;
  boolean moveLeft, moveRight, moveUp, moveDown = false;

  Snow(float x_in, float y_in) {
    xPos = x_in;
    yPos = y_in;
  }

  void display() {
    
    fill(255);
    noStroke();
    image(Snowimage, xPos, yPos);   
  }

  void move() {    
    if (moveUp) yPos -= speed*3;
    if (moveDown) yPos += speed*2;
    if (yPos >= 530) {
      moveDown = false;
    }
  }
}

import gab.opencv.*;
import processing.video.*;
import java.awt.*;

public class HandMovementDetector extends PApplet {

  Capture video;
  OpenCV opencv;

  boolean handDetectionPositive = false;  

  public void settings() {
    size(640, 480);
  }

  void setup() {     
    video = new Capture(this, 640/2, 480/2);
    opencv = new OpenCV(this, 640/2, 480/2);
    if (userChoiseForMovementDetectorType == 1) 
      opencv.loadCascade(OpenCV.CASCADE_FRONTALFACE);     
    currentTime = 0;
    startTime = millis();
    video.start();
  }

  void draw() {
    isHandMovementDetectorWindowCreated = true;    
    surface.setLocation(0, 50);
    scale(2);
    opencv.loadImage(video);

    image(video, 0, 0 );

    noFill();
    stroke(0, 255, 0);
    strokeWeight(3);
    Rectangle[] faces = opencv.detect();
    //println(faces.length);

    if (faces.length == 0) {
      handDetectionPositive=false;
    }

    for (int i = 0; i < faces.length; i++) {
      //println(faces[i].x + "," + faces[i].y);
      rect(faces[i].x, faces[i].y, faces[i].width, faces[i].height);

      if (faces[i].x>0 && (faces[i].x+faces[i].width)<=320 && faces[i].y+faces[i].height<=50) {               
        if (yPos >= -10) {
          mySnow.moveUp = true;        
          handDetectionPositive=true;
        }
      } else if (faces[i].x>0 && (faces[i].x+faces[i].width)<=320 && faces[i].y<=50) {        
        if (yPos >= -10) {
          mySnow.moveUp = true;        
          handDetectionPositive=true;
        }
      } else {       
        handDetectionPositive=false;
      }
    }

    if (handDetectionPositive == false) {
      if (yPos <= 530) {
        mySnow.moveUp = false;
        mySnow.moveDown = true;
      }
    }             
    line(0, 50, 320, 50);
  }

  void captureEvent(Capture c) {
    c.read();
  }
}