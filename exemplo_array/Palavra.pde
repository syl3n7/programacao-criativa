class Palavra{

  float posX, posY;
  String pal;
  
  Palavra(String p){
  
    posX = 0;
    posY = 0;
    pal = p;
    
  }
  
  void desenha() {
   
    textSize(32);
    text(pal, posX, posY);
    
  }

}
