class Quadrado {
 
  int posX, posY;
  color ca = color(0,255,0);
  color cd = color(255,0,0);
  int size = 20;
  
  Quadrado(float x, float y){
  
    posX = 250;
    posY = 250;
    size = 20;
    cd = color(255,0,0);
    ca = color(0,255,0);
  }
  
  void desenha(){
 
    rect(posX, posY, size, size);
  
  }
 
}
