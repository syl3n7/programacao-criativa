class Quadrado {
  float posX, posY, tamanho;
  color black = color(0, 0, 0);
  color white = color(255, 255, 255);
  boolean flag;
  float dist;

  Quadrado (float x, float y, float t, boolean f) {
    posX = x;
    posY = y;
    tamanho = t;
    flag = f;
  }

  void desenha(){ 
    rect (posX, posY, tamanho, tamanho);
  }

  void mudaCor(){
      dist = dist(posX, posY, mouseX, mouseY);
      corR = color (0, 0, 100, int(map(dist, 0, width, 0, 255)));
      fill(corR);
  }
}