class triangleButt {
  
  //neeeds bodySize, buttSize, x-y-z positioning, r-g-b color value, and theta rotation, and thetaInc incrimints
  int bodySize;
  int buttSize;
  int xT;
  int yT;
  int zT;
  int r;
  int g;
  int b;
  float theta;
  float thetaInc;
  
  //constructor
  triangleButt(int bodySize_, int buttSize_, int xT_, int yT_, int zT_, int r_, int g_, int b_, float theta_, float thetaInc_) {
    
    bodySize = bodySize_;
    buttSize = buttSize_;
    xT = xT_;
    yT = yT_;
    zT = zT_;
    r = r_;
    g = g_;
    b = b_;
    theta = theta_;
    thetaInc = thetaInc_;
    
  }
  
  void drawTriangleButt() {
    
    fill(r,g,b);
    stroke(0);
    strokeWeight(1);
    
    rotateY(-3*PI/8);
    
    pushMatrix();
    translate(0,0,-xT);
    translate(xT,yT,zT);
    box(bodySize);
    popMatrix();
    
    pushMatrix();
    translate(0,0,-xT);
    translate(xT,yT,zT-bodySize);
    drawPyramid(buttSize,50,50,50);
    popMatrix();
    
    fill(0);
    
    pushMatrix();
    translate(0,0,-xT);
    translate(xT,yT-(3*bodySize/16),zT+(bodySize/2));
    sphere(bodySize/4);
    popMatrix();
    
    pushMatrix();
    translate(0,0,-xT);
    translate(xT+(bodySize/2),yT+(bodySize/4),zT+(bodySize/2));
    sphere(bodySize/8);
    popMatrix();
    
    pushMatrix();
    translate(0,0,-xT);
    translate(xT+(bodySize/2),yT-(bodySize/4),zT);
    sphere(3*bodySize/16);
    popMatrix();
    
  }
  
  void rotateTriangleButt() {
    
    rotateX(theta);
    rotateY(theta);
    theta += thetaInc;
    
  }
    
}
