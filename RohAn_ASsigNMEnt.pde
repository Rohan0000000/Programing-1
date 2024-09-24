// RoHaN
// AsSiGnMeNt 1
float x,y;

void setup(){
  size (400,400);
  background (200);
  x = width/2;
  y = height/2;
}
void draw(){
  ellipse(x,y,100,100);
}

void mousePressed(){
  x = mouseX;
  y = mouseY;
}
