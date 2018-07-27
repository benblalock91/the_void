
//I think I changed some stuff in here from drawPyramid, but I'm not sure.
//I figured I'd be safe about it.

void drawCreepHat(int t, int r, int g, int b) {
  
  fill(r,g,b);
  
  beginShape(TRIANGLES);
  vertex(-t,-t,-t);
  vertex(t,-t,-t);
  vertex(0,0,t);
  
  
  vertex(t,-t,-t);
  vertex(t,t,-t);
  vertex(0,0,t);
  
  
  vertex(t,t,-t);
  vertex(-t,t,-t);
  vertex(0,0,t);
  
  
  vertex(-t,t,-t);
  vertex(-t,-t,-t);
  vertex(0,0,t);
  
  endShape();
  
  beginShape(QUADS);
  vertex(-t,-t,-t);
  vertex(t,-t,-t);
  vertex(t,t,-t);
  vertex(-t,t,-t);
  endShape();
  
}
