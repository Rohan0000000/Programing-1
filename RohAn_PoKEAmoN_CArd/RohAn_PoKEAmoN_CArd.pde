//Rohan 
//Pokemon card 
String name;
PImage img;
PFont font;
PImage img2;
PImage img3;
PFont font2;
String facts; 
void setup(){
  size(800,1000);
  background (355);
  img = loadImage("FirebodyDragon.jpg");
  img2  =loadImage("fire-logo.jpg");
  img3 = loadImage("dragon-logo.jpg");
  name = "superpowerfire";
  font = createFont("Roboto.ttf", 60);
  font2 = createFont("Oswald.ttf",22);
  facts = "Charizard can breathe flames so intense that they can melt boulders";
}
void draw(){
  fill(250,432,567);
  rect(100,100,550,850);
  image(img,100,200,550,440);
  image(img2,560,110,75,75);
  image(img3,100,100,75,75);
  fill(20,210,8);
  textFont(font);
  text(name,200,150);
  textFont(font2);
  text(facts,100,750);
}
