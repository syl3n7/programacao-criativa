class Quadrado {
  float posX, posY, tamanho;
  color cor1;
  color cor2;

  Quadrado (float x, float y, float t) {
    posX = x;
    posY = y;
    tamanho = t;
  }

  void desenha(){ 
    rect (posX, posY, tamanho, tamanho);
  }

  void mudaTamanho(){
      tamanho = mouseX;
  }
  void mudaBackground(){
    cor1 = color(map(mouseY, 0, height, 0, 360), 100, 100);
    background (cor1);
  }
  void mudaForeground(){
    cor2 = color(map(mouseY, 0, height, 360, 0), 100, 100);
    fill(cor2);
  }

}