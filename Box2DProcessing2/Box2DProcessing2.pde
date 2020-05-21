import shiffman.box2d.*; 
import org.jbox2d.common.*;
import org.jbox2d.dynamics.joints.*;
import org.jbox2d.collision.shapes.*;
import org.jbox2d.collision.shapes.Shape;
import org.jbox2d.common.*;
import org.jbox2d.dynamics.*;
import org.jbox2d.dynamics.contacts.*;

Box2DProcessing box2d;
Box2DProcessing mundo;
ArrayList <Bola> bolas;
ArrayList <Bola2> bolas2;
ArrayList <Bola3> bolas3;
ArrayList <Bola4> bolas4;
ArrayList <Bola5> bolas5;
ArrayList <Bola6> bolas6;
ArrayList <Bola7> bolas7;
ArrayList <Bola8> bolas8;
ArrayList <Bola9> bolas9;
ArrayList <Bola10> bolas10;
ArrayList <Bola11> bolas11;
ArrayList <Bola12> bolas12;
ArrayList <Bola13> bolas13;
ArrayList <Bola14> bolas14;
ArrayList <Bola15> bolas15;
ArrayList <Bola16> bolas16;
Limite tope;
Limite tope2;
Limite tope3;
Limite tope4;
Box box;
Box box2;
Box box3;
Box box4;
Box box5;
Box box6;
PImage n10;
PImage n11;
PImage n12;
PImage n13;
PImage n14;
PImage n15;
PImage n16;
PImage n17;
PImage n18;
PImage n19;
PImage n20;
PImage n21;
PImage n22;
PImage n23;
PImage n24;
PImage n25;
PImage mesa;



void setup(){
  size(1000,600);
  mundo = new Box2DProcessing(this);
  mundo.createWorld();
   mundo.setGravity(0, 0);
  // box2d.world.setContactListener(new CustomListener());
   box = new Box(55,55,70,70);
   box2 = new Box(510,55,70,70);
   box3 = new Box(940,55,70,70);
   box4 = new Box(510,550,70,70);
   box5 = new Box(55,545,70,70);
   box6 = new Box(940,545,70,70);
  bolas = new ArrayList <Bola>();
  bolas2 = new ArrayList <Bola2>();
  bolas3 = new ArrayList <Bola3>();
  bolas4 = new ArrayList <Bola4>();
  bolas5 = new ArrayList <Bola5>();
  bolas6 = new ArrayList <Bola6>();
  bolas7 = new ArrayList <Bola7>();
  bolas8 = new ArrayList <Bola8>();
  bolas9 = new ArrayList <Bola9>();
  bolas10 = new ArrayList <Bola10>();
  bolas11 = new ArrayList <Bola11>();
  bolas12 = new ArrayList <Bola12>();
  bolas13 = new ArrayList <Bola13>();
  bolas14 = new ArrayList <Bola14>();
  bolas15 = new ArrayList <Bola15>();
  bolas16 = new ArrayList <Bola16>();
  tope = new Limite(0,30,1900,10);
  tope2 = new Limite(0,565,1900,10);
  tope3 = new Limite(50,500,10,1700);
  tope4 = new Limite(958,500,10,1700);
  
  mesa = loadImage("mesadebillar.jpg");
  n10 = loadImage("bola1.png");
  n11 = loadImage("bola2.png");
  n12 = loadImage("bola3.png");
  n13 = loadImage("bola4.png");
  n14 = loadImage("bola5.png");
  n15 = loadImage("bola6.png");
  n16 = loadImage("bola7.png");
  n17 = loadImage("bola8.png");
  n18 = loadImage("bola9.png");
  n19 = loadImage("bola10.png");
  n20 = loadImage("bola11.png");
  n21 = loadImage("bola12.png");
  n22 = loadImage("bola13.png");
  n23 = loadImage("bola14.png");
  n24 = loadImage("bola15.png");
  n25 = loadImage("bola16.png");
}

void draw(){
  background(mesa);
  mundo.step();
      fill(255);
      textAlign(CENTER,BOTTOM);
       textSize(20);
      text("Pulsa una tecla de la 'a' a la 'p' y luego da clic con el mouse", 500, 40);
  for(Bola c:bolas){
    c.display();
  }
   for(Bola2 c:bolas2){
    c.display();
  }
  for(Bola3 c:bolas3){
    c.display();
  }
  for(Bola4 c:bolas4){
    c.display();
  }
  for(Bola5 c:bolas5){
    c.display();
  }
  for(Bola6 c:bolas6){
    c.display();
  }
  for(Bola7 c:bolas7){
    c.display();
  }
  for(Bola8 c:bolas8){
    c.display();
  }
  for(Bola9 c:bolas9){
    c.display();
  }
  for(Bola10 c:bolas10){
    c.display();
  }
  for(Bola11 c:bolas11){
    c.display();
  }
  for(Bola12 c:bolas12){
    c.display();
  }
  for(Bola13 c:bolas13){
    c.display();
  }
  for(Bola14 c:bolas14){
    c.display();
  }
  for(Bola15 c:bolas15){
    c.display();
  }
  for(Bola16 c:bolas16){
    c.display();
  }
 
 for (int i = bolas.size()-1; i >= 0; i--) {
    Bola b = bolas.get(i);
    if (b.done()) {
      bolas.remove(i);
    }
  }
}
  
  
void mousePressed(){
 if(key=='a'){
  bolas.add(new Bola(mouseX, mouseY, 80,80));
 }
 else if(key=='b'){
   bolas2.add(new Bola2(mouseX, mouseY, 80,80));
 }
 else if(key=='c'){
   bolas3.add(new Bola3(mouseX, mouseY, 80,80));
 }
 else if(key=='d'){
   bolas4.add(new Bola4(mouseX, mouseY, 80,80));
 }
 else if(key=='e'){
   bolas5.add(new Bola5(mouseX, mouseY, 80,80));
 }
  else if(key=='f'){
   bolas6.add(new Bola6(mouseX, mouseY, 80,80));
 }
  else if(key=='g'){
   bolas7.add(new Bola7(mouseX, mouseY, 80,80));
 }
  else if(key=='h'){
   bolas8.add(new Bola8(mouseX, mouseY, 80,80));
 }
 else if(key=='i'){
   bolas9.add(new Bola9(mouseX, mouseY, 80,80));
 }
 else if(key=='j'){
   bolas10.add(new Bola10(mouseX, mouseY, 80,80));
 }
 else if(key=='k'){
   bolas11.add(new Bola11(mouseX, mouseY, 80,80));
 }
 else if(key=='l'){
   bolas12.add(new Bola12(mouseX, mouseY, 80,80));
 }
 else if(key=='m'){
   bolas13.add(new Bola13(mouseX, mouseY, 80,80));
 }
 else if(key=='n'){
   bolas14.add(new Bola14(mouseX, mouseY, 80,80));
 }
 else if(key=='o'){
   bolas15.add(new Bola15(mouseX, mouseY, 80,80));
 }
 else if(key=='p'){
   bolas16.add(new Bola16(mouseX, mouseY, 80,80));
 }
}
