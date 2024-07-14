//ludmila ruiz com1 tp3recf
PImage fondo;
int cant = 10; 
int tam; 
boolean cambiarBlancos = false; 
color[][] coloresBlancos; 

void setup() {
  size(800, 400);
  fondo = loadImage("7.png");
  tam = 400 / cant; 
  coloresBlancos = new color[cant][cant];
  inicializarColoresBlancos();
  dibujarPatron();
}

void draw() {
  dibujarPatron();
}

void dibujarPatron() {
  background(255);
  image(fondo, 0, 0, 400, 400); 

  for (int x = 0; x < cant; x++) {
    for (int y = 0; y < cant; y++) {
      if ((x + y) % 2 == 0) {
        fill(0);
        rect(400 + x * tam, y * tam, tam, tam);
        fill(coloresBlancos[x][y]);
        float centroX = 400 + x * tam + tam / 2.0; 
        float centroY = y * tam + tam / 2.0; 
        ellipse(centroX, centroY, tam * 0.6, tam * 0.6);
      } else {
        fill(255);
        rect(400 + x * tam, y * tam, tam, tam);
        fill(0);
        ellipse(400 + x * tam + tam / 2.0, y * tam + tam / 2.0, tam * 0.6, tam * 0.6);
      }
    }
  }
}

void inicializarColoresBlancos() {
  for (int x = 0; x < cant; x++) {
    for (int y = 0; y < cant; y++) {
      if ((x + y) % 2 == 0) {
        coloresBlancos[x][y] = color(255); 
      } else {
        coloresBlancos[x][y] = color(0); 
      }
    }
  }
}

void keyPressed() {
  if (key == 'r' || key == 'R') {
    cambiarBlancos = !cambiarBlancos; 
    if (cambiarBlancos) {
      cambiarColoresBlancos();
    } else {
      cambiarColoresNegros();
    }
    dibujarPatron(); 
  }
}



void cambiarColoresBlancos() {
  for (int x = 0; x < cant; x++) {
    for (int y = 0; y < cant; y++) {
      if ((x + y) % 2 == 0) {
        coloresBlancos[x][y] = color(random(255), random(255), random(255)); 
      }
    }
  }
}

void cambiarColoresNegros() {
  for (int x = 0; x < cant; x++) {
    for (int y = 0; y < cant; y++) {
      if ((x + y) % 2 != 0) {
        coloresBlancos[x][y] = color(random(255), random(255), random(255)); 
      }
    }
  }
}
