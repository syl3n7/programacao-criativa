/* autogenerated by Processing revision 1277 on 2021-11-26 */
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

public class Ex24 extends PApplet {

PImage img;

     public void setup() {
        /* size commented out by preprocessor */;
        img = loadImage("moon.jpg");
        img.resize(width, height);
        
    }

     public void draw() {
        
        img.loadPixels();

        for (int y = 0; y<img.height; y++) {
            int index = mouseX+mouseY*img.width;
            img.pixels[mouseX+y*img.width] = color(img.pixels[index]);
        }

        img.updatePixels();
        image(img, 0, 0);
    }


  public void settings() { fullScreen(P2D); }

  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "Ex24" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
