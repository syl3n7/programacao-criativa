/* autogenerated by Processing revision 1276 on 2021-11-04 */
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

public class ex11_rect_size extends PApplet {

Retangulo r ;

 public void setup() {
  /* size commented out by preprocessor */;
  frameRate(60);
  rectMode(CENTER);
  noStroke();
  r = new Retangulo();
}

 public void draw() {
  background(0);
  r.desenha();
  r.mover();
}
class Retangulo {

  //propriedades
  float posX, posY, size;
  int cor;
  boolean check ;
  int controlo = 0;

  //construtor
  Retangulo() {

    size = 0;
    posX = 250;
    posY = 250;
    cor = color(160,60,50);
  }

   public void desenha() {

    fill(cor);
    rect(posX, posY, size, size);

  }

   public void mover() {

    if (check == true) {

    } else if (check == false) {
      size += 5;
    }
    
    if (size >= 500) {
      check = true;
      controlo++;
      size = 0;
    } else {
      check = false;
    }
    
    if(controlo % 2 == 0)
    {
      cor = color(160,60,50);
    } else cor = color(100,50,70);
  }
}


  public void settings() { size(500, 500); }

  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "ex11_rect_size" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}