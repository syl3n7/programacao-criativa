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

public class Ex29 extends PApplet {

Ser[] s;
int n = 50;

 public void setup(){

    ellipseMode(CENTER);

    /* size commented out by preprocessor */;

    s = new Ser[n];

    for(int i = 0; i < s.length; i++){
        s[i] = new Ser();
    }

}

 public void draw(){

    for(int i = 0; i < s.length; i++){
        s[i].drawme();
    }
    
}
class Ellipsed{

    //propriedades
    float x, y, t;

    //construtor
    Ellipsed(float x, float y, float t){

        posX = x;
        posY = y;
        tam = t;

    }

     public void drawme(){

        ellipse(posX, posY, tam, tam);

    }

}
class Ser{

    //propriedades
    float posX, posY, tam, vel, t;

    //construtor
    Ser(float x, float y, float t, float v){

        posX =x;
        posY =y;
        tam = t;
        vel = v;


    }

     public void drawme(){

        for (int i = 0; i < e.lenght; ++i) {
            e[i].drawme();
            s.posX += vel;
            s.posY += vel;
        }

    }

}


  public void settings() { size(600, 600, P2D); }

  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "Ex29" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}