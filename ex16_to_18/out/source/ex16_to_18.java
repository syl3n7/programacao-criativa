/* autogenerated by Processing revision 1277 on 2021-11-06 */
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

public class ex16_to_18 extends PApplet {

Quadrado q;

 public void setup() {
  //fullScreen();
  /* size commented out by preprocessor */;
  q = new Quadrado(64);
}

 public void draw() {
  background(0);
  q.desenha();
}
class Cubo {

  float x, y, tam;
  int blue = color(40, 150, 190);
  int purple = color(150, 40, 190);

  Cubo(float x1, float y1, float t) {
    x = x1;
    y = y1;
    tam = t;
  }

   public void desenha () {
    if (x%2==0) {
      fill(blue);
    } else {
      fill(purple);
    }
    rect(x, y, tam, tam);
  }
}
int H = 0;
int W = 0;

class Quadrado {

  Cubo[] cubos;

  Quadrado (int n) {
    cubos = new Cubo[n];

    for (int x = 0; x < width; x++) {
      for (int y = 0; y < height; y++) {
         W=W*x;
         H=H*y;
      }
    }

    for (int i = 0; i < n; i++) {
      cubos[i] = new Cubo(W, H, random(100));
    }
  }

   public void desenha() {
    for (int i = 0; i < cubos.length; i++) {
      cubos[i].desenha();
    }
  }
}


  public void settings() { size(500, 500); }

  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "ex16_to_18" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
