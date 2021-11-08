/* autogenerated by Processing revision 1276 on 2021-11-08 */
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
float linhas = 8;
float colunas = 8;
float x = 0;
float y = 0;
int n = PApplet.parseInt(linhas * colunas); // n = número de vezes que quero que o retângulo seja desenhado
float sizeq; // size
int corR = color(255, 0, 0);
 public void setup() {
  noStroke ();
  frameRate(60);
  /* size commented out by preprocessor */;
  sizeq = width / colunas;
  quad = new Quadrado[n];

  boolean f = true;
  
  for (int i = 0; i < n; i++) {
    quad[i] = new Quadrado(x, y, sizeq, f, color(255, 255, 255));
    
    if(f) f = false;
    else f = true;
    
    if (x < width - sizeq) {
      x += sizeq;
    } else {
      y += sizeq;
      x = 0;
      if (linhas % 2 == 0 && colunas%2 == 0)
        if (f)f = false;
        else f = true;
    }
  }
}

 public void draw() {
  background(0, 0, 0);
  for (int i = 0; i < quad.length; i++) {
    quad[i].desenha();
    if(mouseX > quad[i].posX && mouseX < quad[i].posX + quad[i].tamanho && mouseY > quad[i].posY && mouseY < quad[i].posY + quad[i].tamanho) {
      quad[i].cor = color(0, 0, 255);
    } else {
      quad[i].cor = color(255, 0, 0);
    }
  } 
}

class Quadrado {
  float posX, posY, tamanho;
  int black = color(0, 0, 0);
  int white = color(255, 255, 255);
  boolean flag;
  int cor;

  Quadrado (float x, float y, float t, boolean f, int c) {
    posX = x;
    posY = y;
    tamanho = t;
    flag = f;
    corR = c;
  }

   public void desenha(){ 
    if (flag) {
      fill (corR);
    } else {
      fill(black);
    }
    rect (posX, posY, tamanho, tamanho);
  }

   public void mudaCor(){
    if (mouseX > posX && mouseX < posX + tamanho && mouseY > posY && mouseY < posY + tamanho) {
      corR = color(map(mouseX, 0, width, 0, 255), map(mouseY, 0, width, 0, 255), 150);
    }
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
