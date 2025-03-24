PImage pacman;
int pacmanx  = 230;
int pacmany = height-=-139;
PImage pacman2;
int pacman2x = 580;
int pacman2y = height-=-0;
PImage blackpacman;
int blackpacmanx = 230;
int blackpacmany = height-=-420;
PImage blackpacman2;
int blackpacman2x = 150;
int blackpacman2y = height-=-420;
PImage ghost;
int ghostx =230;
int ghosty=height/8;
PImage ghost2;
int ghost2x = 580 ;
int ghost2y = height/8 ;
PImage blackghost;
int blackghostx = 70;
int blackghosty = height-=20;
PImage blackghost2;
int blackghost2x = 220;
int blackghost2y = height -=400 ;
PImage king;
PImage blackking;
PImage board2;
int yellow =0;
int black = 0;
boolean yellowwin = false;
boolean blackwin = false;
void setup(){
size(1000,1000);
background(400);
 pacman = loadImage("pacman.jpg");
  pacman2 = loadImage("pacman2.png");
 blackpacman = loadImage("blackpacman.jpg");
 blackpacman2 = loadImage("blackpacman2.png");
 ghost = loadImage("ghost.jpg");
 ghost2 = loadImage("ghost2.jpg");
 blackghost = loadImage("blackghost.jpg");
 blackghost2 = loadImage("blackghost2.png");
 king = loadImage("king.jpeg");
 blackking = loadImage("blackking.jpg");
 board2 = loadImage("board2.jpg");
}
void draw(){
  image (board2,0,0,990,990);
 image(pacman,pacmanx,pacmany,90,90);
 image(pacman2,pacman2x,pacman2y,90,90);
 image(blackpacman,blackpacmanx,blackpacmany,90,90);
 image(blackpacman2,blackpacman2x,blackpacman2y,130,90);
 image(ghost,ghostx,ghosty,90,90);
 image(ghost2,ghost2x,ghost2y,90,90);
 image(blackghost,blackghostx,blackghosty,90,90);
 image(blackghost2,blackghost2x,blackghost2y,90,90);
 image(king,400,140,90,90);
 image(blackking,400,740,90,90); 
 fill(yellow,255,255,255);
 fill(black,255,255,255);
 textSize(106); 
 text(yellow,300,50);
 text(black,300,950);
}
void keyPressed(){
  if(key == 'h'){
    pacmanx-=4;
  }if(key == 'g'){
    pacmanx+=4;
  }if(key == 'x'){
    pacmany-=4;
  }if(key == 'c'){
    pacmany+=4;
  }if(key =='1'){
    pacman2x-=4;
  }if(key == '2'){
    pacman2x+=4;
  }if(key == '3'){
    pacman2y-=4;
  }if(key == '4'){
    pacman2y+=4;
  }if(key == '5'){
    blackpacmanx-=4;
  }if(key == '6'){
    blackpacmanx+=4;
  }if(key == '7'){
    blackpacmany-=4;
  }if(key == '8'){
    blackpacmany+=4;
  }if(key == '9'){
    blackpacman2x+=4;
  }if(key =='0'){
    blackpacman2x-=4;
}if(key == 'q'){
  blackpacman2y-=4;
}if(key == 'w'){
  blackpacman2y+=4;
}if(key == 'e'){
  ghostx-=4;
}if(key == 'r'){
  ghostx+=4;
}if(key == 't'){
ghosty-=4;
}if(key == 'y'){
ghosty+=4;
}if(key =='u'){
  ghost2x-=4;
}if(key == 'i'){
  ghost2x+=4;
}if(key == 'o'){
  ghost2y-=4;
}if(key == 'p'){
  ghost2y+=4;
}if(key == 'a'){
  blackghostx-=4;
}if(key == 's'){
 blackghostx+=4;
}if(key == 'd'){
  blackghosty-=4;
}if(key == 'f'){
  blackghosty+=4;
}if(key == 'j'){
  blackghost2x-=4;
}if(key == 'k'){
  blackghost2x+=4;
}if(key == 'l'){
  blackghost2y-=4;
}if(key == 'z'){
   blackghost2y+=4;
}

if((blackghostx == pacmanx) && (blackghosty == pacmany)){
   black+=10;
}if((blackghostx == pacman2x) && (blackghosty == pacman2y)){
   black+=10;
}if((blackghost2x == pacmanx) && (blackghost2y == pacmany)){
   black+=10;
}if((blackghost2x == pacman2x) && (blackghost2y == pacman2y)){
  black+=10;
}if((ghostx == blackpacmanx) && (ghosty == blackpacmany)){
  yellow+=10;
}if((ghostx == blackpacman2x) && (ghosty == blackpacman2y)){
  yellow+=10;
}if((ghost2x == blackpacmanx) && (ghost2y == blackpacmany)){
  yellow+=10;
}if((ghost2x == blackpacman2x) && (ghost2y == blackpacmany)){
  yellow+=10;
}if((pacmanx == 400) && (pacmany == 140)){
  yellow+=100;
}if((pacman2x == 400) && (pacman2y == 140)){
  yellow+=100;
}if((blackpacmanx == 400) && (blackpacmany == 740)){
   black+=100;
}if((blackpacman2x == 400) && (blackpacman2y == 740)){
  black+=100;
}if(yellow >= 300){
  println(yellowwin);
}if(black >= 300){
  println(blackwin);
  noLoop();
  }
}
