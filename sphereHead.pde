class sphereHead {
  
  //needs sphereSize, x-y-z positioning, and r-g-b color value, and theta rotation, and thetaInc incrimints
  int sphereSize;
  int xT;
  int yT;
  int zT;
  int r;
  int g;
  int b;
  float theta;
  float thetaInc;
  
  //constructor
  sphereHead(int sphereSize_, int xT_, int yT_, int zT_, int r_, int g_, int b_, float theta_, float thetaInc_) {
    
    sphereSize = sphereSize_;
    xT = xT_;
    yT = yT_;
    zT = zT_;
    r = r_;
    g = g_;
    b = b_;
    theta = theta_;
    thetaInc = thetaInc_;
    
  }
  
  void drawSphereHead() {
    
    fill(r,g,b);
    strokeWeight(1);
    stroke(245,196,232);
    
    //Face
    pushMatrix();
    translate(xT,yT,zT);
    sphere(sphereSize);
    popMatrix();
    
    //Eyes and stuff
    if(int(random(2)) == 2) {
      fill(int(random(110,140)),int(random(235,255)),int(random(200,225)));
    } else {
      fill(122,250,214);
    }
    noStroke();
    
    pushMatrix();
    translate(xT-(3*sphereSize/4),yT-(sphereSize/2),zT+(sphereSize/10));
    sphere(sphereSize/3);
    popMatrix();
    
    pushMatrix();
    translate(xT+(3*sphereSize/8),yT-(3*sphereSize/4),zT-(sphereSize/20));
    sphere(sphereSize/3+sphereSize/20);
    popMatrix();
    
    pushMatrix();
    translate(xT+(sphereSize/4),yT-(sphereSize/4),zT+(7*sphereSize/8));
    sphere(sphereSize/10);
    popMatrix();
    
    pushMatrix();
    translate(xT-(sphereSize/4),yT-(sphereSize/4),zT+(7*sphereSize/8));
    sphere(sphereSize/10);
    popMatrix();
    
  }
  
  void rotateSphereHead() {
    
    rotateX(theta);
    rotateY(theta);
    theta += thetaInc;
    
  }
  
}
