
PImage tazaPolar;

void setup(){
  size(800, 400);
  background(200);
  
  tazaPolar = loadImage("tazapolar.png.jpg");
  

}

void draw(){
 background(200);
 
  image(tazaPolar, 0, 0);
  
 
 
  strokeWeight(2);
  line(400, 0, 400, 400);
  
  
  strokeWeight(0);
  
  
  
  fill(#D8CFC9); //color gris fondo
  rect(400, 1, 600, 600); 
  
  
  fill(#836451); //color de la mesa
  rect(402, 222, 600, 600);
  
  
  //espaciado
  
  
  
  fill(255);
  rect(622, 165, 120, 100, 100); //borde blanco aza
 
  fill(#D8CFC9);
  rect(622, 175, 100, 80, 100); //parte de adentro gris fondo
 
 
  fill(#836451);
  arc(673, 222, 100, 70, 0, HALF_PI); // cachito marron aza
 
 
 //espaciado
 
 
  
 fill(#5F3821);
 strokeWeight(0);
 rect(472, 220, 200, 100, 70); //sombra taza
 ellipse(672, 272, 110, 10); //sombra mango
  
  fill(255);
  rect(500, 100, 50, 50, 70); // oreja izquierda
  rect(600, 100, 50, 50, 70); // oreja derecha
  rect(475, 120, 200, 180, 70); //cuadrado base
 
 fill(0);
 ellipse(533, 172, 10, 15); //ojo izquierdo
 ellipse(612, 172, 10, 15); //ojo derecho
 ellipse(570, 200, 24, 15); //nariz
 
 strokeWeight(1); //linea nariz
 beginShape();    //linea nariz
 vertex(559, 188);//linea nariz
 bezierVertex(564, 185, 568, 186, 576, 187); //linea nariz
 bezierVertex(564, 185, 568, 186, 576, 187); //linea nariz
 endShape(CLOSE); //linea nariz
 
 fill(#900F13);
 strokeWeight(1);
 ellipse(570, 248, 30, 20); //boca

fill(#E030C0);
beginShape(); //linea lengua
vertex(557, 253); //linea lengua
bezierVertex(564, 251, 574, 249, 583, 253); //linea lengua
bezierVertex(581, 258, 570, 259, 564, 257); //linea lengua
endShape(CLOSE); //linea lengua

fill(255);
beginShape();
vertex(558, 241); //diente izquierdo
bezierVertex(560, 240, 562, 239, 564,239); //diente iquierdo
bezierVertex(564, 242, 561, 244, 557, 244); //diente izquierdo
endShape();

beginShape();
vertex(566, 238); //diente del medio 
bezierVertex(568, 238, 570, 238, 575, 239); //dinte del medio
bezierVertex(571, 245, 565, 242, 565, 241); //diente del medio
endShape();

beginShape();
vertex(570, 238);
bezierVertex(574, 239, 579, 240, 580, 241);
bezierVertex(574, 247, 574, 235, 575, 241);
endShape();




  
  
 println( mouseX + " / " + mouseY );
  
}

void mouseMoved(){
  line( mouseX, 0, mouseX, 400 );
  line( 0, mouseY, 800, mouseY );  
  
}
