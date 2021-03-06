/* autogenerated by Processing revision 1277 on 2021-11-04 */
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

public class exercisio13 extends PApplet {

Quadrado[] q = new Quadrado[4];

 public void setup(){
  /* size commented out by preprocessor */;
  for(int i=0;i<4;i++){
  q[i] = new Quadrado(PApplet.parseInt(random(40,460)), PApplet.parseInt(random(40,460)));
  }
}

 public void draw(){
  for(int a=0;a<4;a++){
  if(mouseX >= q[a].posX && mouseY >= q[a].posY){
    for(int i=0;i<4;i++){
    fill(q[i].cd);
    }
  }
  }
}


 public void mouseReleased(){
  if(mouseX >= a && mouseY >= b){
    for(int i=0;i<4;i++){
    fill(q[i].cd);
    }
  }
}
class Quadrado {
 
  int posX, posY;
  int ca = color(0,255,0);
  int cd = color(255,0,0);
  int size = 20;
  
  Quadrado(float x, float y){
    posX = 250;
    posY = 250;
    size = 20;
    cd = color(255,0,0);
    ca = color(0,255,0);
  }
 public void desenha(){
   for(int i=0;i<4;i++){ 
   fill(q[i].cd);
   q[i].mover();
   rect(posX, posY, size, size);
   }
}
 public void mover(){
   posX = mouseX;
   posY = mouseY;
  }
}


  public void settings() { size(500, 500); }

  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "exercisio13" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
