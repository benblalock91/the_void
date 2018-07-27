

import processing.video.*;

import ddf.minim.*;

int fps = 15;

int creatureType = 0;

float boxTheta = 0.0;
float boxThetaInc = -0.01;

float sphereTheta = 0.0;
float sphereThetaInc = 0.02;

float buttTheta = 0.0;
float buttThetaInc = -0.05;

float creepTheta = 0.0;
float creepThetaInc = 0.01;

int bckGrnd = 0;

int boxCounter = 0;
int sphereCounter = 0;
int buttCounter = 0;
int creepCounter = 0;

boolean makeStuff = false;

boxFace[] boxFaces = new boxFace[1000];
sphereHead[] sphereHeads = new sphereHead[1000];
triangleButt[] triangleButts = new triangleButt[1000];
theCreep[] theCreeps = new theCreep[1000];

//////////////////////////////////////////////////////////

void setup() {
  
  size(100, 100, P3D);
  background(bckGrnd);
  lights();
  frameRate(fps);
  minim = new Minim(this);
  //my background track
  //myAudio = new Movie(this,"background_loop.wav");
  //myAudio.loop();
  // SHOULD I DO THIS????? smooth();
  
}

//////////////////////////////////////////////////////////

void draw() {
  
  lights();
  
  //bckGrnd = int(random(255));
  
  background(bckGrnd,bckGrnd,bckGrnd);
  
  if(!makeStuff) { 
    creatureType = 0;
  }
    
  if(creatureType == 1) {
    if((int(random(2))) == 1) {
      boxFaces[boxCounter] = new boxFace(100,mouseX-(int(random(10))),mouseY-(int(random(10))),0, (int(random(195,255))),(int(random(200,255))),(int(random(65,115))),boxTheta,boxThetaInc);
    } else {
      boxFaces[boxCounter] = new boxFace(100,mouseX-(int(random(10))),mouseY-(int(random(10))),0,233,247,90,boxTheta,boxThetaInc);
    }
    boxCounter +=1;
    makeStuff = !makeStuff;
  } else if(creatureType == 2) {
    sphereHeads[sphereCounter] = new sphereHead(100,mouseX+(int(random(50,100))),mouseY-(int(random(50,100))),0,157,116,207,sphereTheta,sphereThetaInc);
    sphereCounter += 1;
    makeStuff = !makeStuff;
  } else if(creatureType == 3) {
    triangleButts[buttCounter] = new triangleButt(100,75,mouseX-(int(random(25))),mouseY-(int(random(25))),0,255,255,255,buttTheta,buttThetaInc);
    buttCounter += 1;
    makeStuff = !makeStuff;
  } else if(creatureType == 4) {
    theCreeps[creepCounter] = new theCreep(100,mouseX-(int(random(150,250))),mouseY+(int(random(150,250))),0,255,255,255,creepTheta,creepThetaInc);
    creepCounter += 1;
    makeStuff = !makeStuff;
  }
  
  println(creatureType);
  
  if(boxCounter != 0) {
    
    for(int i = 0; i < boxCounter; i++) {
      
      pushMatrix();
      boxFaces[i].rotateBoxFace();
      boxFaces[i].drawBoxFace();
      popMatrix();
      
    }
    
  }
  
  if(sphereCounter != 0) {
    
    for(int i = 0; i < sphereCounter; i++) {
      
      pushMatrix();
      sphereHeads[i].rotateSphereHead();
      sphereHeads[i].drawSphereHead();
      popMatrix();
      
    }
    
  }
  
  if(buttCounter != 0) {
    
    for(int i = 0; i < buttCounter; i++) {
      
      pushMatrix();
      triangleButts[i].rotateTriangleButt();
      triangleButts[i].drawTriangleButt();
      popMatrix();
      
    }
    
  }
  
  if(creepCounter != 0) {
    
    for(int i = 0; i < creepCounter; i++) {
      
      pushMatrix();
      theCreeps[i].rotateTheCreep();
      theCreeps[i].drawTheCreep();
      popMatrix();
      
    }
  }
  
  if(playBox && alreadyOpenedBox == false) {
    if(creatureType == 1) {
      audioBoxFace = minim.loadFile("robotJuniorWho.wav");
    } else if(creatureType == 2) {
      audioBoxFace = minim.loadFile("robotFredCreator.wav");
    } else if(creatureType == 3) {
      audioBoxFace = minim.loadFile("robotKathyGoingOn.wav");
    } else if(creatureType == 4) {
      audioBoxFace = minim.loadFile("robotTrinoidsWhatToDo.wav");
    }
    audioBoxFace.play();
    alreadyOpenedBox = true;
    alreadyClosedBox = false;
  } else if(!playBox && alreadyOpenedBox) {
     if(alreadyClosedBox == false) {
     audioBoxFace.close();
     alreadyOpenedBox = false;
     alreadyClosedBox = true;
    }
  }
  //audioSphereHead = minim.loadFile("robotJuniorWho.wav");
  //audioTriangleButt = minim.loadFile("robotKathyGoingOn.wav");
  //audioTheCreep = minim.loadFile("robotTrinoidsToDo.wav");
  
}

//////////////////////////////////////////////////////////

void mouseClicked() {
  
  if(mouseButton == LEFT) {
    
    makeStuff = !makeStuff;
    
    creatureType = int(random(1,5));
    
    playBox = !playBox;
    
    
  } else if(mouseButton == RIGHT) {
    
  }
  
}

//////////////////////////////////////////////////////////


void stop()
{
// the AudioPlayer you got from Minim.loadFile()
audioBoxFace.close();
minim.stop();

// this calls the stop method that
// you are overriding by defining your own
// it must be called so that your application
// can do all the cleanup it would normally do
super.stop();
}
