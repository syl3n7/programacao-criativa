
class Quadrado {
  float posX, posY, tamanho;
  color cor1;

  Quadrado (float x, float y, float t, color c) {
    posX = x;
    posY = y;
    tamanho = t;
    cor1 = c;
  }

  void desenha () {
    noStroke ();
    fill (cor1);
    rect (posX, posY, tamanho, tamanho);
  }
}
