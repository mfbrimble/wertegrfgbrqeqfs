void draw() {  
  surface.setLocation(660,50);
  if(didUserChooseMovementDetectorType==false){
    background(#81A5FF);
    textSize(50);
    fill(#F7FAFF);
    text("Press 1 to play!",width/2,height/2);     
   
  }
  if (currentTime > 20000) {
     backgroundImg = loadImage("sky.jpg");

  }
  
  if ((userChoiseForMovementDetectorType == 1 || userChoiseForMovementDetectorType == 2) && didUserChooseMovementDetectorType == false) { 
    String[] args = {"TwoFrameTest"};
    HandMovementDetector sa = new HandMovementDetector();
    PApplet.runSketch(args, sa);
    didUserChooseMovementDetectorType=true;    
  }
  if(isHandMovementDetectorWindowCreated == false && didUserChooseMovementDetectorType ==true) {
    background(255, 204, 0);
    textSize(32);
    fill(0,0,127);
    text("Please wait, the game is loading...", 375, 50); 
  }
  if (gameOver == false && isHandMovementDetectorWindowCreated == true && didUserChooseMovementDetectorType == true) {
    background(backgroundImg);
    
    // configurating the positions of holes and drawing the holes with updated positions
    if (randomHolePosition[0] >= -75) {
      randomHolePosition[0] = randomHolePosition[0]-1;
      image(hole, randomHolePosition[0], 530,101, 92);
    }
    if (randomHolePosition[1] >= -75) {
      randomHolePosition[1] = randomHolePosition[1]-1;
      image(hole, randomHolePosition[1], 530,101, 92);
    } 
    if (randomHolePosition[2] >= -75) {
      randomHolePosition[2] = randomHolePosition[2]-1;
      image(hole, randomHolePosition[2], 530,101, 92);
    }
    if (randomHolePosition[3] >= -75) {
      randomHolePosition[3] = randomHolePosition[3]-1;
      image(hole, randomHolePosition[3], 530,101, 92);
    }
    if (randomHolePosition[4] >= -75) {
      randomHolePosition[4] = randomHolePosition[4]-1;
      image(hole, randomHolePosition[4], 530,101, 92);
    }
    if (randomHolePosition[5] >= -75) {
      randomHolePosition[5] = randomHolePosition[5]-1;
      image(hole, randomHolePosition[5], 530,101, 92);
    }
    if (randomHolePosition[6] >= -75) {
      randomHolePosition[6] = randomHolePosition[6]-1;
      image(hole, randomHolePosition[6], 530,101, 92);
    }
    if (randomHolePosition[7] >= -75) {
      randomHolePosition[7] = randomHolePosition[7]-1;
      image(hole, randomHolePosition[7], 530,101, 92);
    }
    if (randomHolePosition[8] >= -75) {
      randomHolePosition[8] = randomHolePosition[8]-1;
      image(hole, randomHolePosition[8], 530,101, 92);
    }
    if (randomHolePosition[9] >= -75) {
      randomHolePosition[9] = randomHolePosition[9]-1;
      image(hole, randomHolePosition[9], 530,101, 92);
    }
    if (randomHolePosition[10] >= -75) {
      randomHolePosition[10] = randomHolePosition[10]-1;
      image(hole, randomHolePosition[10], 530,101, 92);
    } 
    if (randomHolePosition[11] >= -75) {
      randomHolePosition[11] = randomHolePosition[11]-1;
      image(hole, randomHolePosition[11], 530,101, 92);
    }
    if (randomHolePosition[12] >= -75) {
      randomHolePosition[12] = randomHolePosition[12]-1;
      image(hole, randomHolePosition[12], 530,101, 92);
    }
    if (randomHolePosition[13] >= -75) {
      randomHolePosition[13] = randomHolePosition[13]-1;
      image(hole, randomHolePosition[13], 530,101, 92);
    }
    if (randomHolePosition[14] >= -75) {
      randomHolePosition[14] = randomHolePosition[14]-1;
      image(hole, randomHolePosition[14], 530,101, 92);
    }
    if (randomHolePosition[15] >= -75) {
      randomHolePosition[15] = randomHolePosition[15]-1;
      image(hole, randomHolePosition[15], 530,101, 92);
    }
    if (randomHolePosition[16] >= -75) {
      randomHolePosition[16] = randomHolePosition[16]-1;
      image(hole, randomHolePosition[16], 530,101, 92);
    }  
    if (randomHolePosition[17] >= -75) {
      randomHolePosition[17] = randomHolePosition[17]-1;
      image(hole, randomHolePosition[17], 530,101, 92);
    }
    if (randomHolePosition[18] >= -75) {
      randomHolePosition[18] = randomHolePosition[18]-1;
      image(hole, randomHolePosition[18], 530,101, 92);
    }
    if (randomHolePosition[19] >= -75) {
      randomHolePosition[19] = randomHolePosition[19]-1;
      image(hole, randomHolePosition[19], 530,101, 92);
    }
    if (randomHolePosition[20] >= -75) {
      randomHolePosition[20] = randomHolePosition[20]-1;
      image(hole, randomHolePosition[20], 530,101, 92);
    }
    if (randomHolePosition[21] >= -75) {
      randomHolePosition[21] = randomHolePosition[21]-1;
      image(hole, randomHolePosition[21], 530,101, 92);
    }
    if (randomHolePosition[22] >= -75) {
      randomHolePosition[22] = randomHolePosition[22]-1;
      image(hole, randomHolePosition[22], 530,101, 92);
    }  
    if (randomHolePosition[23] >= -75) {
      randomHolePosition[23] = randomHolePosition[23]-1;
      image(hole, randomHolePosition[23], 530,101, 92);
    }
    if (randomHolePosition[24] >= -75) {
      randomHolePosition[24] = randomHolePosition[24]-1;
      image(hole, randomHolePosition[24], 530,101, 92);
    }
    if (randomHolePosition[25] >= -75) {
      randomHolePosition[25] = randomHolePosition[25]-1;
      image(hole, randomHolePosition[25], 530,101, 92);
    }
    if (randomHolePosition[26] >= -75) {
      randomHolePosition[26] = randomHolePosition[26]-1;
      image(hole, randomHolePosition[26], 530,101, 92);
    }
    if (randomHolePosition[27] >= -75) {
      randomHolePosition[27] = randomHolePosition[27]-1;
      image(hole, randomHolePosition[27], 530,101, 92);
    }
    if (randomHolePosition[28] >= -75) {
      randomHolePosition[28] = randomHolePosition[28]-1;
      image(hole, randomHolePosition[28], 530,101, 92);
    }
    if (randomHolePosition[29] >= -75) {
      randomHolePosition[29] = randomHolePosition[29]-1;
      image(hole, randomHolePosition[29], 530,101, 92);
    }
    if (randomHolePosition[30] >= -75) {
      randomHolePosition[30] = randomHolePosition[30]-1;
      image(hole, randomHolePosition[30], 530,101, 92);
    }
    if (randomHolePosition[31] >= -75) {
      randomHolePosition[31] = randomHolePosition[31]-1;
      image(hole, randomHolePosition[31], 530,101, 92);
    }
    if (randomHolePosition[32] >= -75) {
      randomHolePosition[32] = randomHolePosition[32]-1;
      image(hole, randomHolePosition[32], 530,101, 92);
    }
    if (randomHolePosition[33] >= -75) {
      randomHolePosition[33] = randomHolePosition[33]-1;
      image(hole, randomHolePosition[33], 530,101, 92);
    }
    if (randomHolePosition[34] >= -75) {
      randomHolePosition[34] = randomHolePosition[34]-1;
      image(hole, randomHolePosition[34], 530,101, 92);
    }  
    if (randomHolePosition[35] >= -75) {
      randomHolePosition[35] = randomHolePosition[35]-1;
      image(hole, randomHolePosition[35], 530,101, 92);
    }
    if (randomHolePosition[36] >= -75) {
      randomHolePosition[36] = randomHolePosition[36]-1;
      image(hole, randomHolePosition[36], 530,101, 92);
    }
    if (randomHolePosition[37] >= -75) {
      randomHolePosition[37] = randomHolePosition[37]-1;
      image(hole, randomHolePosition[37], 530,101, 92);
    }
    if (randomHolePosition[38] >= -75) {
      randomHolePosition[38] = randomHolePosition[38]-1;
      image(hole, randomHolePosition[38], 530,101, 92);
    }
    if (randomHolePosition[39] >= -75) {
      randomHolePosition[39] = randomHolePosition[39]-1;
      image(hole, randomHolePosition[39], 530,101, 92);
    }
    if (randomHolePosition[40] >= -75) {
      randomHolePosition[40] = randomHolePosition[40]-1;
      image(hole, randomHolePosition[40], 530,101, 92);
    }  
    if (randomHolePosition[41] >= -75) {
      randomHolePosition[41] = randomHolePosition[41]-1;
      image(hole, randomHolePosition[41], 530,101, 92);
    }
    if (randomHolePosition[42] >= -75) {
      randomHolePosition[42] = randomHolePosition[42]-1;
      image(hole, randomHolePosition[42], 530,101, 92);
    }
    if (randomHolePosition[43] >= -75) {
      randomHolePosition[43] = randomHolePosition[43]-1;
      image(hole, randomHolePosition[43], 530,101, 92);
    }
    if (randomHolePosition[44] >= -75) {
      randomHolePosition[44] = randomHolePosition[44]-1;
      image(hole, randomHolePosition[44], 530,101, 92);
    }
    if (randomHolePosition[45] >= -75) {
      randomHolePosition[45] = randomHolePosition[45]-1;
      image(hole, randomHolePosition[45], 530,101, 92);
    }
    if (randomHolePosition[46] >= -75) {
      randomHolePosition[46] = randomHolePosition[46]-1;
      image(hole, randomHolePosition[46], 530,101, 92);
    }  
    if (randomHolePosition[47] >= -75) {
      randomHolePosition[47] = randomHolePosition[47]-1;
      image(hole, randomHolePosition[47], 530,101, 92);
    }  
    if (randomHolePosition[48] >= -75) {
      randomHolePosition[48] = randomHolePosition[48]-1;
      image(hole, randomHolePosition[48], 530,101, 92);
    }
    if (randomHolePosition[48] >= -75) {
      randomHolePosition[49] = randomHolePosition[49]-1;
      image(hole, randomHolePosition[49], 530,101, 92);
    }
        if(randomApplePositionx[0] >= -75) {
      randomApplePositionx[0] = randomApplePositionx[0]-1;  
      image(apple, randomApplePositionx[0], randomApplePositiony[0],101, 92);
    }  
    if(randomApplePositionx[1] >= -75) {
      randomApplePositionx[1] = randomApplePositionx[1]-1;  
      image(apple, randomApplePositionx[1], randomApplePositiony[1],101, 92);
    }
    if(randomApplePositionx[2] >= -75) {
      randomApplePositionx[2] = randomApplePositionx[2]-1;  
      image(apple, randomApplePositionx[2], randomApplePositiony[2],101, 92);
    }
    if(randomApplePositionx[3] >= -75) {
      randomApplePositionx[3] = randomApplePositionx[3]-1;  
      image(apple, randomApplePositionx[3], randomApplePositiony[3],101, 92);
    }
    if(randomApplePositionx[4] >= -75) {
      randomApplePositionx[4] = randomApplePositionx[4]-1;  
      image(apple, randomApplePositionx[4], randomApplePositiony[4],101, 92);
    }
    if(randomApplePositionx[5] >= -75) {
      randomApplePositionx[5] = randomApplePositionx[5]-1;  
      image(apple, randomApplePositionx[5], randomApplePositiony[5],101, 92);
    }
    if(randomApplePositionx[6] >= -75) {
      randomApplePositionx[6] = randomApplePositionx[6]-1;  
      image(apple, randomApplePositionx[6], randomApplePositiony[6],101, 92);
    }
    if(randomApplePositionx[7] >= -75) {
      randomApplePositionx[7] = randomApplePositionx[7]-1;  
      image(apple, randomApplePositionx[7], randomApplePositiony[7],101, 92);
    } 
    if(randomApplePositionx[8] >= -75) {
      randomApplePositionx[8] = randomApplePositionx[8]-1;  
      image(apple, randomApplePositionx[8], randomApplePositiony[8],101, 92);
    }
    if(randomApplePositionx[9] >= -75) {
      randomApplePositionx[9] = randomApplePositionx[9]-1;  
      image(apple, randomApplePositionx[9], randomApplePositiony[9],101, 92);
    }
    if(randomApplePositionx[10] >= -75) {
      randomApplePositionx[10] = randomApplePositionx[10]-1;  
      image(apple, randomApplePositionx[10], randomApplePositiony[10],101, 92);
    }
    if(randomApplePositionx[11] >= -75) {
      randomApplePositionx[11] = randomApplePositionx[11]-1;  
      image(apple, randomApplePositionx[11], randomApplePositiony[11],101, 92);
    }
    if(randomApplePositionx[12] >= -75) {
      randomApplePositionx[12] = randomApplePositionx[12]-1;  
      image(apple, randomApplePositionx[12], randomApplePositiony[12],101, 92);
    }
    if(randomApplePositionx[13] >= -75) {
      randomApplePositionx[13] = randomApplePositionx[13]-1;  
      image(apple, randomApplePositionx[13], randomApplePositiony[13],101, 92);
    } 
    if(randomApplePositionx[14] >= -75) {
      randomApplePositionx[14] = randomApplePositionx[14]-1;  
      image(apple, randomApplePositionx[14], randomApplePositiony[14],101, 92);
    }
    if(randomApplePositionx[15] >= -75) {
      randomApplePositionx[15] = randomApplePositionx[15]-1;  
      image(apple, randomApplePositionx[15], randomApplePositiony[15],101, 92);
    }
    if(randomApplePositionx[16] >= -75) {
      randomApplePositionx[16] = randomApplePositionx[16]-1;  
      image(apple, randomApplePositionx[16], randomApplePositiony[16],101, 92);
    }
    if(randomApplePositionx[17] >= -75) {
      randomApplePositionx[17] = randomApplePositionx[17]-1;  
      image(apple, randomApplePositionx[17], randomApplePositiony[17],101, 92);
    }
    if(randomApplePositionx[18] >= -75) {
      randomApplePositionx[18] = randomApplePositionx[18]-1;  
      image(apple, randomApplePositionx[18], randomApplePositiony[18],101, 92);
    }
    if(randomApplePositionx[19] >= -75) {
      randomApplePositionx[19] = randomApplePositionx[19]-1;  
      image(apple, randomApplePositionx[19], randomApplePositiony[19],101, 92);
    }  
    if(randomApplePositionx[20] >= -75) {
      randomApplePositionx[20] = randomApplePositionx[20]-1;  
      image(apple, randomApplePositionx[20], randomApplePositiony[20],101, 92);
    }
    if(randomApplePositionx[21] >= -75) {
      randomApplePositionx[21] = randomApplePositionx[21]-1;  
      image(apple, randomApplePositionx[21], randomApplePositiony[21],101, 92);
    }
    if(randomApplePositionx[22] >= -75) {
      randomApplePositionx[22] = randomApplePositionx[22]-1;  
      image(apple, randomApplePositionx[22], randomApplePositiony[22],101, 92);
    }
    if(randomApplePositionx[23] >= -75) {
      randomApplePositionx[23] = randomApplePositionx[23]-1;  
      image(apple, randomApplePositionx[23], randomApplePositiony[23],101, 92);
    }
    if(randomApplePositionx[24] >= -75) {
      randomApplePositionx[24] = randomApplePositionx[24]-1;  
      image(apple, randomApplePositionx[24], randomApplePositiony[24],101, 92);
    }
    if(randomApplePositionx[25] >= -75) {
      randomApplePositionx[25] = randomApplePositionx[25]-1;  
      image(apple, randomApplePositionx[25], randomApplePositiony[25],101, 92);
    }  
    if(randomApplePositionx[26] >= -75) {
      randomApplePositionx[26] = randomApplePositionx[26]-1;  
      image(apple, randomApplePositionx[26], randomApplePositiony[26],101, 92);
    }  
    if(randomApplePositionx[27] >= -75) {
      randomApplePositionx[27] = randomApplePositionx[27]-1;  
      image(apple, randomApplePositionx[27], randomApplePositiony[27],101, 92);
    }
    if(randomApplePositionx[28] >= -75) {
      randomApplePositionx[28] = randomApplePositionx[28]-1;  
      image(apple, randomApplePositionx[28], randomApplePositiony[28],101, 92);
    }
    if(randomApplePositionx[29] >= -75) {
      randomApplePositionx[29] = randomApplePositionx[29]-1;  
      image(apple, randomApplePositionx[29], randomApplePositiony[29],101, 92);
    }
    if(randomApplePositionx[30] >= -75) {
      randomApplePositionx[30] = randomApplePositionx[30]-1;  
      image(apple, randomApplePositionx[30], randomApplePositiony[30],101, 92);
    }
    if(randomApplePositionx[31] >= -75) {
      randomApplePositionx[31] = randomApplePositionx[31]-1;  
      image(apple, randomApplePositionx[31], randomApplePositiony[31],101, 92);
    }  
    if(randomApplePositionx[32] >= -75) {
      randomApplePositionx[32] = randomApplePositionx[32]-1;  
      image(apple, randomApplePositionx[32], randomApplePositiony[32],101, 92);
    }
    if(randomApplePositionx[33] >= -75) {
      randomApplePositionx[33] = randomApplePositionx[33]-1;  
      image(apple, randomApplePositionx[33], randomApplePositiony[33],101, 92);
    }
    if(randomApplePositionx[34] >= -75) {
      randomApplePositionx[34] = randomApplePositionx[34]-1;  
      image(apple, randomApplePositionx[34], randomApplePositiony[34],101, 92);
    }
    if(randomApplePositionx[35] >= -75) {
      randomApplePositionx[35] = randomApplePositionx[35]-1;   
      image(apple, randomApplePositionx[35], randomApplePositiony[35],101, 92);
    }
    if(randomApplePositionx[36] >= -75) {
      randomApplePositionx[36] = randomApplePositionx[36]-1;   
      image(apple, randomApplePositionx[36], randomApplePositiony[36],101, 92);
    }
    if(randomApplePositionx[37] >= -75) {
      randomApplePositionx[37] = randomApplePositionx[37]-1;   
      image(apple, randomApplePositionx[37], randomApplePositiony[37],101, 92);
    } 
    if(randomApplePositionx[38] >= -75) {
      randomApplePositionx[38] = randomApplePositionx[38]-1;   
      image(apple, randomApplePositionx[38], randomApplePositiony[38],101, 92);
    }
    if(randomApplePositionx[39] >= -75) {
      randomApplePositionx[39] = randomApplePositionx[39]-1;   
      image(apple, randomApplePositionx[39], randomApplePositiony[39],101, 92);
    }
    if(randomApplePositionx[40] >= -75) {
      randomApplePositionx[40] = randomApplePositionx[40]-1;   
      image(apple, randomApplePositionx[40], randomApplePositiony[40],101, 92);
    }
    if(randomApplePositionx[41] >= -75) {
      randomApplePositionx[41] = randomApplePositionx[41]-1;   
      image(apple, randomApplePositionx[41], randomApplePositiony[41],101, 92);
    }
    if(randomApplePositionx[42] >= -75) {
      randomApplePositionx[42] = randomApplePositionx[42]-1;   
      image(apple, randomApplePositionx[42], randomApplePositiony[42],101, 92);
    }
    if(randomApplePositionx[43] >= -75) {
      randomApplePositionx[43] = randomApplePositionx[43]-1;   
      image(apple, randomApplePositionx[43], randomApplePositiony[43],101, 92);
    }  
    if(randomApplePositionx[44] >= -75) {
      randomApplePositionx[44] = randomApplePositionx[44]-1;   
      image(apple, randomApplePositionx[44], randomApplePositiony[44],101, 92);
    }
    if(randomApplePositionx[45] >= -75) {
      randomApplePositionx[45] = randomApplePositionx[45]-1;   
      image(apple, randomApplePositionx[45], randomApplePositiony[45],101, 92);
    }
    if(randomApplePositionx[46] >= -75) {
      randomApplePositionx[46] = randomApplePositionx[46]-1;   
      image(apple, randomApplePositionx[46], randomApplePositiony[46],101, 92);
    }
    if(randomApplePositionx[47] >= -75) {
      randomApplePositionx[47] = randomApplePositionx[47]-1;   
      image(apple, randomApplePositionx[47], randomApplePositiony[47],101, 92);
    }
    if(randomApplePositionx[48] >= -75) {
      randomApplePositionx[48] = randomApplePositionx[48]-1;   
      image(apple, randomApplePositionx[48], randomApplePositiony[48],101, 92);
    }
    if(randomApplePositionx[49] >= -75) {
      randomApplePositionx[49] = randomApplePositionx[49]-1;   
      image(apple, randomApplePositionx[49], randomApplePositiony[49],101, 92);
    }           
      
    mySnow.move();
    mySnow.display(); 
    checkGameOver();  
    checkGameWin();
    currentTime = millis() - startTime;    
    textSize(32);
    fill(0,0,127);
    text("Time: "+round(currentTime/1000), 20, 50);     
  }
  
}