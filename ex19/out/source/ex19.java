/* autogenerated by Processing revision 1277 on 2021-11-11 */
import processing.core.*;
import processing.data.*;
import processing.event.*;
import processing.opengl.*;

import java.util.HashMap;
import java.util.ArrayList;
import java.io.File;
import java.io.BufferedReader;
import java.io.PrintWriter;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.IOException;

public class ex19 extends PApplet {

Quadrado[] quad;
float linhas = 80;
float colunas = 80;
float x = 0;
float y = 0;
int n = PApplet.parseInt(linhas * colunas); // n = número de vezes que quero que o retângulo seja desenhado
float sizeq; // size
int corR = color(255, 0, 0, 0);
 public void setup() {
  noStroke ();
  frameRate(60);

  /* size commented out by preprocessor */;
  sizeq = width / colunas;
  quad = new Quadrado[n];
  boolean f = true;
  for (int i = 0; i < n; i++) {
    quad[i] = new Quadrado(x, y, sizeq, f);
    
    if (x < width - sizeq) {
      x += sizeq;
    } else {
      y += sizeq;
      x = 0;
    }
  }
}

 public void draw() {
  background(0, 0, 0);
  for (int i = 0; i < quad.length; i++) {
    quad[i].desenha();   
    quad[i].mudaCor();    
  } 
}
class Quadrado {
  float posX, posY, tamanho;
  int black = color(0, 0, 0);
  int white = color(255, 255, 255);
  boolean flag;
  float dist;

  Quadrado (float x, float y, float t, boolean f) {
    posX = x;
    posY = y;
    tamanho = t;
    flag = f;
  }

   public void desenha(){ 
    rect (posX, posY, tamanho, tamanho);
  }

   public void mudaCor(){
      dist = dist(posX, posY, mouseX, mouseY);
      corR = color (0, 0, 100, PApplet.parseInt(map(dist, 0, width, 0, 255)));
      fill(corR);
  }
}


  public void settings() { size(800, 800); }

  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "ex19" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
