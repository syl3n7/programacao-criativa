
class Quadrado {
  float posX, posY, tamanho;
  color black = color(0, 0, 0);
  color white = color(255, 255, 255);
  boolean flag;

  Quadrado (float x, float y, float t, boolean f) {
    posX = x;
    posY = y;
    tamanho = t;
    flag = f;
  }

  void desenha(){ 
    //if (flag) {
      //fill (corR);
    //} else {
      //fill(corR);
    //}
    rect (posX, posY, tamanho, tamanho);
  }

  void mudaCor(){
      corR = color(map(mouseY, 0, height, 0, 255), 255, 255, map(mouseX, 0, width, 0, 255));
      fill(corR);
  }
}