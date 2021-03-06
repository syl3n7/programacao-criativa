/* autogenerated by Processing revision 1277 on 2021-12-03 */
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

public class Ex28 extends PApplet {

Montanhas m;

 public void setup(){

    /* size commented out by preprocessor */;
    m = new Montanhas(15);

}

 public void draw(){

    background(255);
    m.drawme();

}
class Montanhas{

    //propriedades
    float n;
    Rectangle[] rects;
    float tempo, temporal;

    //construtor
    Montanhas(float nMontanhas){
        n = nMontanhas;
        rects = new Rectangle[(int)n];

        temporal = noise(tempo);
        temporal = map(temporal, 0, 1, 0, height);

        float alt = temporal;
        float larg = random(temporal/n);
        float x = 0;
        float y = height-alt;
        for(int i = 0; i < rects.length; i++){
            rects[i] = new Rectangle(x, y, alt, larg);
            x +=  larg;
            alt = random(height);
            y = height-alt;
        }
        tempo += 0.01f;

    }
    
     public void drawme(){
        for(int i = 0; i < rects.length; i++){
            rects[i].drawme();
        }
    }

}
class Rectangle{

    //propriedades
    float posX, posY, alt, larg;

    //constructor
    Rectangle(float x, float y, float a, float l){
        posX = x;
        posY = y;
        alt = a;
        larg = l;

    }

     public void drawme(){
        fill(0);
        rect(posX, posY, larg, alt);

    }

}


  public void settings() { size(500, 500); }

  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "Ex28" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
