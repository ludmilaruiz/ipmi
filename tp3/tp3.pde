PImage fondo;
int cant = 10; 
int tam; 
boolean modificarColores = false;
boolean reiniciar = false;

void setup() {
  size(800, 400);
  fondo = loadImage("7.png");
  tam = 400 / cant; 
  frameRate(1);
}

void draw() {
  background(255);
  image(fondo, 0, 0, 400, 400); 

  for (int x = 0; x < cant; x++) {
    for (int y = 0; y < cant; y++) {
      if ((x + y) % 2 == 0) {
        fill(0);
        rect(400 + x * tam, y * tam, tam, tam);
      } else {
        fill(255);
        float centroX = 400 + x * tam + tam / 2.0; 
        float centroY = y * tam + tam / 2.0; 
        fill (0);
        ellipse(centroX, centroY, tam * 0.6, tam * 0.6);
       
    
      }
    }
  }
}
