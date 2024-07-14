//ludmilaruiz
//tp2 com1
//variables 

PImage primera;
PFont fuente;
int mov = 1000;

void setup (){ //imgenes y texto
size(640,480);
primera = loadImage("primera.jpeg");
fuente= loadFont( "Ed.vlw");
textFont( fuente, 45);
String texto = " Jacob y Wilhelm Grimm \n     present..";
println(mov);
}
void draw () { // animaciones y orden de imagenes
mov = frameCount/2;
println(mov);
background (0);
image( primera , 0 , 0);
text( " Jacob y Wilhelm Grimm \n    present..", 100, mov );
} 
