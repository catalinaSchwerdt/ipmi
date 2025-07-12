PImage imagentp3;

float tam;
color colorRelleno;
color colorRellenoClaro;

boolean usarColoresRandom = false;
boolean usarTamanosRandom = false;

void setup() {
  size(800, 400);
  imagentp3 = loadImage("imagentp3.jpeg");


  colorRelleno=color(0, 0, 139); //azul oscuro
  colorRellenoClaro=color(135, 206, 250); //azul clarito
}

void draw() {
  background(255);
  noStroke();


grillaCuadrados(100);
 

  //circulos
  for (int y = 0; y < height; y += 100) {
    for (int x = 0; x < width; x += 100) {



      //tamanos aleatorios si se presiono 'D'
      if (usarTamanosRandom) {
        tam = random(40, 100);
      } else {
        tam = 100;
      }

      //dibujo del circulo
      if ((x / 100 + y / 100) % 2 == 0) {
        fill(colorRellenoClaro);
      } else {
        fill(colorRelleno); //azul oscuro
      }


      ellipse(x + 50, y + 50, tam, tam);
    }
  }

  image(imagentp3, 0, 0, 400, 400);

  usarTamanosRandom = false;
}

//funcion que devuelve color random
color colorAleatorio(float brillo) {
  return color(random(255), random(255), brillo);
}

void grillaCuadrados(int tam){
    for (int y = 0; y < height; y += 100) {
    for (int x = 0; x < width; x += 100) {
      if ((x / 100 + y / 100) % 2 == 0) {
        fill(0, 0, 139); //azul oscuro
      } else {
        fill(135, 206, 250); //azul clarito
      }
      rect(x, y, tam, tam);
    }
  }
}


//Teclado
void keyPressed() {
  if (key == 'a' || key == 'A') { //tecla A
    usarColoresRandom = true;
    colorRelleno= colorAleatorio(255);
    colorRellenoClaro= colorAleatorio(255);
  }
  if (key == 'd' || key == 'D') { //tecla D
    usarTamanosRandom = true;
  }
  if (key == ' ') { // espacio
    usarColoresRandom = false;
    colorRelleno=color(0, 0, 139); //azul oscuro
    colorRellenoClaro=color(135, 206, 250); //azul clarito
  }
}


// Link al video explicativo: https://youtu.be/YdpUnXMu7wU?feature=shared&utm_source=MTQxZ
