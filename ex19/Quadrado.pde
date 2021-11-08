
class Quadrado {
  float posX, posY, tamanho;
  color black = color(0, 0, 0);
  color white = color(255, 255, 255);
  boolean flag;
  color cor;

  Quadrado (float x, float y, float t, boolean f, color c) {
    posX = x;
    posY = y;
    tamanho = t;
    flag = f;
    corR = c;
  }

  void desenha(){ 
    if (flag) {
      fill (corR);
    } else {
      fill(corR);
    }
    rect (posX, posY, tamanho, tamanho);
  }

  void mudaCor(){
    if (mouseX > posX && mouseX < posX + tamanho && mouseY > posY && mouseY < posY + tamanho) {
      corR = color(map(mouseX, 0, width, 0, 255), map(mouseY, 0, width, 0, 255), 150);
    }
  }
}