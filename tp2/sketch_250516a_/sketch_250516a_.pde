
PImage imagenUno;
PImage imagenDos;
PImage imagenTres;
PImage imagenCuatro;
PImage imagenCinco;
PImage imagenSeis;
PImage creeper;
PImage oveja;
PImage steve;
PImage steveCons;
PImage bloque;
PImage cerdo;
PImage abejas;

PFont minecraftFont;

int e;
int startFrame;
int tiempo;

int x = 650;
int y = 480;

int iUno;
int iDos;
int iTres;
int iCua;
int iCin;
int iSeis;

String textoUno = "Es un videojuego de construccion y aventura\nlanzado en 2011. Fue creado por Marcus Persson\ny desarrollado por Mojang Studios. Es conocido\npor su estilo de graficos en bloques y su mundo\nabierto.";
String textoDos = "En este juego los jugadores exploran un mundo\ngenerado aleatoriamente, recolectan recursos,\nconstruyen estructuras y sobreviven a criaturas.\nHay varios modos de juego: supervivencia,\ncreativo, aventura y espectador.";
String textoTres = "En el modo supervivencia el jugador debe\nrecolectar recursos, alimentarse y evitar\npeligros como zombis, esqueletos y otras\ncriaturas. Tambien se puede explorar cuevas,\nconstruir refugios y mejorar herramientas.";
String textoCuatro = "En el modo creativo tenes acceso ilimitado a\ntodos los bloques y objetos. No hay enemigos\nni peligro de morir. Es ideal para construir,\nexperimentar y dejar volar la imaginacion.";
String textoCinco = "La comunidad de Minecraft es enorme,\nteniendo jugadores de todo el mundo.\nEn este juego existen tambien miles de mods\n(modificaciones del juego), mapas\npersonalizados, servidores y contenido creado\npor los jugadores que amplian la experiencia.";
String textoSeis = "Personalmente Minecraft es un juego que me\nencanta desde chica, lo empece a jugar\na los 12 anos aunque ya desde antes miraba\nvideos de distintos creadores de contenido sobre\nel tema, una de las cosas que más me\ngusta es el poder crear aventuras distinta en\ncuantos mundos quieras, ya sea sola\no con amigos.";


void setup () {
  size (640, 480);

  imagenUno = loadImage("imagenUno.png");
  imagenDos = loadImage("imagenDos.png");
  imagenTres = loadImage("imagenTres.png");
  imagenCuatro = loadImage("imagenCuatro.png");
  imagenCinco = loadImage("imagenCinco.png");
  imagenSeis = loadImage("imagenSeis.png");
  creeper = loadImage("creeper.png");
  oveja = loadImage("oveja.png");
  steve = loadImage("steve.png");
  steveCons = loadImage("steveCons.png");
  bloque = loadImage("bloque.jpg");
  cerdo = loadImage("cerdo.png");
  abejas = loadImage("abejas.png");

  minecraftFont = loadFont("Minecraft-35.vlw");
  textFont(minecraftFont);

  e = 1;
  startFrame = frameCount;
}

void draw () {
  int tiempo = frameCount - startFrame;

  //---------------------------------
  if (e == 1) {
    image(imagenUno, 0, 0, width, height);

    fill(0);
    textSize(20);

    iUno = tiempo*2;
    if (x - iUno > 20) {
      text(textoUno, x - iUno, 200);
    } else {
      text(textoUno, 20, 200);
    }

    if (tiempo >= 60*9) {
      e = 2;
      startFrame = frameCount;
    }

    iUno = tiempo*1;
    image(oveja, iUno, 390, 100, 100);
  }

  //-------------------------------
  else if (e == 2) {
    image(imagenDos, 0, 0, width, height);

    iDos = tiempo*2;
    //iDos = (frameCount - 60*9)*2;
    text(textoDos, 18, x -iDos);

    iDos = tiempo*2;
    int posY = x - iDos;
    if (posY > 40) {
      text(textoDos, 18, posY);
    } else {
      text(textoDos, 18, 40);
    }

    if (tiempo >= 60*9) {
      e = 3;
      startFrame = frameCount;
    }

    iDos = tiempo*1;
    image(steve, -iDos, 390, 100, 100);
  }

  //-------------------------------
  else if (e == 3) {
    image(imagenTres, 0, 0, width, height);

    // iTres = (frameCount - 60*18)*2;

    iTres =tiempo*2;
    int posX = -x + iTres;
    if (posX < 20) {
      text(textoTres, posX, 330);
    } else {
      text(textoTres, 20, 330);
    }


    if (tiempo >= 60*9) {
      e = 4;
      startFrame = frameCount;
    }

    image(steveCons, 550, 350, 110, 110);
    if (tiempo >= 60*1) {
      image(bloque, 565, 363, 25, 25);
    }
    if (tiempo >= 60*3) {
      image(bloque, 540, 363, 25, 25);
    }
    if (tiempo >= 60*6) {
      image(bloque, 515, 363, 25, 25);
    }
  }

  //-------------------------------
  else if (e == 4) {
    image(imagenCuatro, 0, 0, width, height);

    //iCua = (frameCount - 60*27)*2;

    iCua = tiempo*2;
    int posY = y - iCua;
    text(textoCuatro, 20, y -iCua);

    if (posY > 35) {
      text(textoCuatro, 20, posY);
    } else {
      text(textoCuatro, 20, 35);

      if (tiempo >= 60*9)
      {
        e = 5;
        startFrame = frameCount;
      }
    }

    iCua = tiempo*1;
    image(abejas, -iCua, iCua, 100, 100);
  }
  //--------------------------------
  else if (e == 5) {
    image(imagenCinco, 0, 0, width, height);

    // iCin = (frameCount - 60*36)*2;

    iCin = tiempo*2;
    int posX = y - iCin;

    if (posX > 20) {
      text(textoCinco, posX, 40);
    } else {
      text(textoCinco, 20, 40);
    }

    if (tiempo >= 60*9) {
      e = 6;
      startFrame = frameCount;
    }

    iCin = tiempo*1;
    image(cerdo, iCin, 390, 100, 100);
  }
  //--------------------------------
  else if (e == 6 ) {
    image(imagenSeis, 0, 0, width, height);

    iSeis = tiempo*2;

    if (iSeis < 270) {
      text(textoSeis, 20, iSeis);
    } else {
      text(textoSeis, 20, 270);
    }

    //iSeis = (frameCount - 60*45)*2;
    //text(textoSeis, 20, iSeis);

    if (tiempo >= 60*3) {
      fill(10);
      rect(240+20, 50, 110, 120);
      image(creeper, 250+20, 60, 90, 90);
      fill(200);
      textSize(10);
      text("Start again -->", 272, 165);
    }
    fill(0);
    textSize(20);
  }
}

void mousePressed() {
  if (e == 6 && mouseX > 260 && mouseX < 370 && mouseY > 50 && mouseY < 170) {
    e = 1;
    iUno = iDos = iTres = iCua = iCin = iSeis = 0;
    startFrame = frameCount;
  }
}
