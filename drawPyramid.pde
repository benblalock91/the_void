
void drawPyramid(int t, int fillR, int fillG, int fillB) {
  
  fill(fillR,fillG,fillB);
  
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
