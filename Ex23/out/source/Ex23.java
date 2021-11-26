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

public class Ex23 extends PApplet {

PImage img;
 public void setup() {
    /* size commented out by preprocessor */;
    img = loadImage("moon.jpg");
    img.resize(width, height);
    loadPixels();
}

 public void draw() {

    for (int i = 0; i < width; i++) {
        for (int j = 0; j < height; j++) {
            int index = i + j * width;
            float r = red(img.pixels[index]);
            float g = green(img.pixels[index]);
            float b = blue(img.pixels[index]);
            if(r < 128 && b < 128 && g < 128){
                pixels[index] = color(r, g, b);
            }
        }
    }
    updatePixels();
}


  public void settings() { fullScreen(P2D); }

  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "Ex23" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
