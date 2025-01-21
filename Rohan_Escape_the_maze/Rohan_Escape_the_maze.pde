int playerX = 0;
int playerY = 0;
int goalX = 9;
int goalY = 9;
PImage img;
PImage img2;
boolean won = false;
void setup(){
 size(800,800);
 img = loadImage("dragon.jpg");
 img2 = loadImage("Lava.jpg");
}
void draw(){
  background(145,167,195);
  for(int n =0; n<10; n++ ){
    for(int i = 0;i <10; i++){
      stroke (0);
      fill(255);
      rect(n*80,i*80,80,80);
    }
  }
  image(img,playerX * 80, playerY * 80,80,80);
  image(img2,goalX*80,goalY*80,80,80);
  
  if(won){
    fill(0);
    textSize(32);
    text("you won",width, height);
    noLoop();
  }
}

void keyPressed(){
  if( keyCode == UP && playerY>0){
    playerY--;
  }else if(keyCode ==DOWN && playerY<9){
    playerY++;
  }else if(keyCode == LEFT && playerX >0){
  playerX--;
}else if(keyCode ==RIGHT && playerX<9){
  playerX++;
}
if(playerX == goalX && playerY == goalY){
  won = true;
}
}
