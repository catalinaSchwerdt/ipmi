PImage imagentp3;

color[][] coloresCeldas;
float[][] tamanosCeldas;

boolean usarColoresRandom = false;
boolean usarTamanosRandom = false;

void setup() {
  size(800, 400);
  imagentp3 = loadImage("imagentp3.jpeg");

  inicializarVariables();
}

void draw() {
  background(255);
  noStroke();

  //fondo cuadriculado
  for (int y = 0; y < height; y += 100) {
    for (int x = 0; x < width; x += 100) {
      if ((x / 100 + y / 100) % 2 == 0) {
        fill(0, 0, 139); //azul oscuro
      } else {
        fill(135, 206, 250); //azul clarito
      }
      rect(x, y, 100, 100);
    }
  }

  //circulos
  for (int y = 0; y < height; y += 100) {
    for (int x = 0; x < width; x += 100) {
      int fila = y / 100;
      int columna = x / 100;

      //colores aleatorios si se presiono 'A'
      if (usarColoresRandom) {
        coloresCeldas[fila][columna] = colorAleatorio(255);
      }

      //tamanos aleatorios si se presiono 'D'
      float tam;
      if (usarTamanosRandom) {
        tam = random(40, 100);
        tamanosCeldas[fila][columna] = tam;
      } else {
        tam = 100;
        tamanosCeldas[fila][columna] = tam;
      }

      //dibujo del circulo
      fill(coloresCeldas[fila][columna]);
      ellipse(x + 50, y + 50, tam, tam);
    }
  }

  image(imagentp3, 0, 0, 400, 400);

  usarColoresRandom = false;
  usarTamanosRandom = false;
}

//funcion que devuelve color random
color colorAleatorio(float brillo) {
  return color(random(255), random(255), brillo);
}


void inicializarVariables() { //reincia las cosas
  int filas = height / 100;
  int columnas = width / 100;

  coloresCeldas = new color[filas][columnas];
  tamanosCeldas = new float[filas][columnas];

  for (int y = 0; y < height; y += 100) {
    for (int x = 0; x < width; x += 100) {
      int fila = y / 100;
      int columna = x / 100;

      if ((x / 100 + y / 100) % 2 == 0) {
        coloresCeldas[fila][columna] = color(135, 206, 250); //azul clarito
      } else {
        coloresCeldas[fila][columna] = color(0, 0, 139); //azul oscuro
      }

      tamanosCeldas[fila][columna] = 100;
    }
  }
}

//Teclado
void keyPressed() {
  if (key == 'a' || key == 'A') { //tecla A
    usarColoresRandom = true;
  }
  if (key == 'd' || key == 'D') { //tecla D
    usarTamanosRandom = true;
  }
  if (key == ' ') { // espacio
    inicializarVariables();
  }
}
