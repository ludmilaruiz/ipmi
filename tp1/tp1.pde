//ludmila ruiz 
//tp1 comision1
PImage fondo;
void setup(){
  size(800,400);
  fondo = loadImage ("ludmi.jpg");
}
void draw(){
  background(255);
  image(fondo,0,0,400,400);
  noStroke();
  fill(255,248,59);
  ellipse(666,70,130,130);//cabeza
  
  ellipse(620,220,250,200);//cuerpo
  
  fill(255);
  circle(685,60,20);//ojo
  
  fill(0);
  circle(685,60,8);//pupila
  
  fill(255,175,4);
  triangle(729,71,727,93,768,89);//pico
  
  fill(255,211,7);
  triangle(540,148,600,214,442,264);//ala
  
  fill(255,151,4);
  rect(540,295,20,80,9);//pata
  rect(634,270,20,80,9);//pata
  
  strokeWeight(10);
  stroke(255,156,0);
  line(560,373,582,388);//dedos
  line(549,372,548,398);
  line(540,374,510,374);
  line(637,346,609,349);
  line(643,350,642,379);
  line(653,348,669,361);
  
  println(mouseX);
  println(mouseY);
}
