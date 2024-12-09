int dog = 0;
int shark = 0;
int lion = 0;
PFont noto;
void setup(){
  size(413,210);
  noto = createFont( "Noto Sans" ,50);
}
void draw(){
  background(255);
  textSize(15);
  text("Votes"+dog,49,138);
  text("Votes"+ shark,189,138);
  text("Votes"+ lion,299,138);
  textSize(15);
  textFont(noto);
  text("🦈", 175,100);
  text("🐕",50,100);
  text("🦁",300,100);
  String winner ="";
  if(dog > shark && dog > lion){
    winner = "dog";
    fill(34,255,340);
  }else if(shark > dog && shark > lion){
  winner = "shark";
  fill(0,125,125);
  }else if(lion > dog && lion > shark){
  winner = "lion";
  fill(200,0,0);
  }else{
    fill(0);
  }
  
  textSize(15);
  text("Winner: " + winner, 50, 100);
}

void keyPressed(){
  if(key == 'r'){
    dog++;
  } else if( key == 'h'){
      shark++;
  }else  if ( key == 'c'){
    lion++;
   }
}
