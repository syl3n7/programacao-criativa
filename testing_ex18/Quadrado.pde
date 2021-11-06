
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

  void desenha () {
    //noStroke ();
    if (flag) {
      fill (white);
    } else {
      fill(black);
    }
    rect (posX, posY, tamanho, tamanho);
  }
}
