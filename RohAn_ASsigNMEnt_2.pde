// RoHaN
// AsSiGnMeNt 1
float x,y;

void setup(){
  size (400,400);
  background (0);
  x = width/2;
  y = height/2;
}
void draw(){
  fill(255,255,0);
  ellipse (x,y,100,100);
  fill(0);
  triangle(x,y,220,150,200,200);
}

void mousePressed(){
  x = mouseX;
  y = mouseY;
}
