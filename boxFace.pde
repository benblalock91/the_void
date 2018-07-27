class boxFace {
  
  //needs boxSize, x-y-z positioning, and r-g-b color value, and theta rotation, and thetaInc incrimints
  int boxSize;
  int xT;
  int yT;
  int zT;
  int r;
  int g;
  int b;
  float theta;
  float thetaInc;
  
  //constructor
  boxFace(int boxSize_, int xT_, int yT_, int zT_, int r_, int g_, int b_, float theta_, float thetaInc_) {
    
    boxSize = boxSize_;
    xT = xT_;
    yT = yT_;
    zT = zT_;
    r = r_;
    g = g_;
    b = b_;
    theta = theta_;
    thetaInc = thetaInc_;
    
  }
  
  void drawBoxFace() {
    
    fill(r,g,b);
    strokeWeight(1);
    stroke(0);
    
    //Face
    pushMatrix();
    translate(xT,yT,zT);
    box(boxSize);
    popMatrix();
    
    fill(0);
    
    //eyes
    pushMatrix();
    translate(xT-(boxSize/4),yT-(boxSize/4),zT+(boxSize/2));
    box(boxSize/4);
    popMatrix();
    
    pushMatrix();
    translate(xT+(boxSize/4),yT-(boxSize/4),zT+(boxSize/2));
    box(boxSize/4);
    popMatrix();
    
  }
  
  void rotateBoxFace() {
    
    rotateX(theta);
    rotateY(theta);
    theta += thetaInc;
    
  }
  
}

