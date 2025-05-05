int maxflowercount = 100;
int flowercount = 0;
float[] x = new float[ maxflowercount];
float[] y = new float[ maxflowercount];
float[] angle = new float[ maxflowercount];
float[] swayspeed = new float[ maxflowercount];
String[] flowertype = new String[ maxflowercount];
void setup(){
  size(1000,1000);
}
void draw(){
  background(15,1455,34);
  sky();
  for(int i =0; i < flowercount; i++){
  angle[i] += swayspeed[i];
  
  pushMatrix();
  translate(x[i], y[i]);
  rotate(sin(angle[i]* 0.1));
  flowertype(flowertype[i]);
  ();
  }
}
void sky(){
  rect(0,0,1000,800);
  fill(3,250,244);
}
void flowertype(String type ){
  stroke(0,100,0);
  strokeWeight(4);
  line(0,0,0,30);
  noStroke();
  if( type.equals("sunflower")){
    fill(245,225,5);
    triangle(-10,0,0,-20,10,0); 
    ellipse(0,-10,20,15);
     } else if(type.equals("rose")){
      fill(245,5,5);
      triangle(-10,0,0,-20,10,0);
      ellipse(0,-10,20,15);
  }
}
void mousePressed(){
  if(flowercount < maxflowercount){
    x[flowercount] = mouseX;
    y[flowercount] = mouseY;
    angle[flowercount] = random(TWO_PI);
    swayspeed[flowercount] = random(0.01,0.011);
    flowertype[flowercount] = random(1) < 0.5? "sunflower":"rose";
  flowercount++;
  }
}
