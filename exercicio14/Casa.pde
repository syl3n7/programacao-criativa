class Casa{
  
float posX, posY, tam, tam1;

  Casa(float x, float y, float t){
  
    posX = random(x, x+t);
    posY = random(y, y+t);
    tam = 40;
    
  }
  
  void desenha(){
    
      fill(255);
      rect(posX, posY, tam, tam);
      triangle(posX, posY, posX+tam/2, posY-tam/2, posX+tam, posY);
    
  }
  
}
