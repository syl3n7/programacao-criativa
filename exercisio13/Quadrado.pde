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
   for(int i=0;i<4;i++){ 
   fill(q[i].cd);
   q[i].mover();
   rect(posX, posY, size, size);
   }
}
void mover(){
   posX = mouseX;
   posY = mouseY;
  }
}
