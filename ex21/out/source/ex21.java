/* autogenerated by Processing revision 1277 on 2021-11-19 */
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

public class ex21 extends PApplet {

Sky s;
City c;

 public void setup(){
    /* size commented out by preprocessor */;
    noStroke();
    s = new Sky();
    c = new City();
}

 public void draw(){
    s.drawSky();
    c.drawCity();
}
class Building {

    //propriedades
    float posX, posY, wid, hei;
    Windows windows;


    //construtor
    Building(float x, float y, float w, float h){
        posX = x;
        posY = y;
        wid = w;
        hei = h;´
        windows = new Windows(PApplet.parseInt(random(1,5)), PApplet.parseInt(random(1, 5)), posX+5, posY+5, wid-10, hei*0.75f);
    }

     public void drawBuilding(){
        fill(255);
        rect(posX, posY, wid, hei);
    }

}
class City{

    //propriedades
    float nBuildings;
    Building[] b;

    //construtor
    City(int n){
        nBuildings = n;
        b = new Building[PApplet.parseInt(nBuildings)];
        float x = 0;
        for(int i = 0; i < b.length; i++){
            float y = random(20, height*0.75f);
            b[i] = new Building(x, y, width/nBuildings, height-y);
            x += width/nBuildings;
        }
    }

 public void drawCity(){

    //desenhar os edificios
        for(int i = 0; i<b.length; i++){
            b[i].drawBuilding();
        }
    }
}
class Rectangle{

float posX, posY, larg, alt;
int c;

    Rectangle(float x, float y, float l, float a){
        posX = x;
        posY = y;
        larg = l;
        alt = a;
        c = color(220, 220, 30);
    }

     public void desenha(){
        fill(c);
        rect(posX, posY, larg, alt);
    }
}
class Sky{

    //propriedades
    int cor;
    int nStars;
    Star[] s;
    s = new Star[i];
    
    

    //construtor
    Sky(){
        cor = color(40, 60, 113);
        nStars = 129;
        s = new Star[nStars];
        for(int i = 0; i < stars.length; i++){
            s[i] = new Star(random(width), random(height), random(5));
        }      

    }

     public void drawSky(){
        
        fill(cor);
        rect(0, 0, width, height);

        for(int i = 0; i<20; i++){
            s[i].drawStar();
        }

    }

}
class Star{

    //propriedades
    float posX, posY, tam;

    //construtor
    Star(float x, float y, float t){
        posX = x;
        posY = y;
        tam = t;
    }

     public void drawStar(){
        fill(255);
        ellipse(posX, posY, tam, tam);
    }   
}
class Windows{

//propriedades
int linhas, colunas;
float posX, posY, larg, alt;
Rectangle[] janelas;

//construtor
Windows(int l, int c, float x, float la, float al){
    linhas = l;
    colunas = c;
    posX = x;
    posY = y;
    larg = la;
    alt = al;
    janelas = new Rectangle[linhas*colunas];
    float janelaX = posX;
    float janelaY = posY;
    float largurajanela = larg/PApplet.parseFloat(colunas);
    float alturajanela = alt/PApplet.parseFloat(linhas);
    for(int i = 0; i < linhas*colunas; i++){
        janelas[i] = new Rectangle(janelaX, janelaY, largurajanela, alturajanela);
        if(janelaX<posX+larg-largurajanela){
            janelaX += largurajanela;
        else {
                janelaX = posX;
                janelaY += alturajanela;
        }
    }
}

     public void desenha(){
        for(int i = 0; i < janelas.length; i++){
            janelas[i].desenha();
        }
    }
}


  public void settings() { size(800, 800); }

  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "ex21" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
