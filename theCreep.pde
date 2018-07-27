

class theCreep {
  
  int headSize;
  int xT;
  int yT;
  int zT;
  int r;
  int g;
  int b;
  float theta;
  float thetaInc;
  
  //constructor
  theCreep(int headSize_, int xT_, int yT_, int zT_, int r_, int g_, int b_, float theta_, float thetaInc_) {
    
    headSize = headSize_;
    xT = xT_;
    yT = yT_;
    zT = zT_;
    r = r_;
    g = g_;
    b = b_;
    theta = theta_;
    thetaInc = thetaInc_;
    
  }
  
  void drawTheCreep() {
    
    int extraR = int(random(255));
    int extraG = int(random(255));
    int extraB = int(random(255));
    
    fill(r,g,b);
    noStroke();
    strokeWeight(1);
    
    //noFill();
    //stroke(0);
    
    //head
    pushMatrix();
    translate(xT,yT,zT);
    sphere(headSize);
    popMatrix();
    
    //left eye
    fill(extraR,extraG,extraB);
    noStroke();
    pushMatrix();
    translate(xT-(2*headSize/9),yT-(3*headSize/8),zT+(3*headSize/4));
    sphere(headSize/3);
    popMatrix();
    //pupil
    fill(0);
    noStroke();
    pushMatrix();
    translate(xT-(2*headSize/9),yT-(3*headSize/8),zT+(headSize));
    sphere(headSize/8);
    popMatrix();
    
    //right eye
    fill(0);
    noStroke();
    pushMatrix();
    translate(xT+(headSize/2),yT-(headSize/4),zT+(3*headSize/4));
    sphere(headSize/6);
    popMatrix();
    //pupil
    fill(extraR,extraG,extraB);
    noStroke();
    pushMatrix();
    translate(xT+(10*headSize/20),yT-(headSize/4),zT+(9*headSize/10));
    sphere(headSize/16);
    popMatrix();
    
    //mouth
    //texture(img);
    fill(0);
    noStroke();
    pushMatrix();
    translate(xT+(headSize/8),yT+(headSize/2),zT+(7*headSize/8));
    box(headSize/3);
    popMatrix();
    
    //hat
    strokeWeight(5);
    stroke(int(random(extraR)),int(random(extraG)),int(random(extraB)));
    pushMatrix();
    translate(xT+(5*headSize/8),yT-(17*headSize/12),zT);
    rotateX(PI/2);
    rotateY(PI/8);
    drawCreepHat((3*headSize/4),255,0,0);
    popMatrix();
    
    //neck, bunch of circles
    fill(r,g,b);
    stroke(0);
    
    pushMatrix();
    translate(xT+(headSize/8),yT+(headSize+headSize/8),zT);
    sphere(headSize/4);
    popMatrix();
    
    pushMatrix();
    translate(xT+(3*headSize/8),yT+(headSize+3*headSize/8),zT);
    sphere(headSize/8);
    popMatrix();
    
    pushMatrix();
    translate(xT+(3*headSize/8),yT+(headSize+11*headSize/16),zT);
    sphere(headSize/5);
    popMatrix();
    
  }
  
  void rotateTheCreep() {
    
    rotateX(theta);
    rotateY(theta);
    theta += thetaInc;
    
  }
  
}
