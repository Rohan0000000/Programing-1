class Ball{
  float x,y,speed;
  Ball( float startX, float startY, float startSpeed){
    x = startX;
    y = startY;
    speed = startSpeed;
  }
  void display(){
    ellipse( x,y, 100,100);
  }
void move(){
  y+= speed;
}
}
Ball b;
void setup(){
  size(10000,10000);
  b = new Ball(300,300,100);
}

void draw(){
  background(250);
  b.display();
  b.move();
}
