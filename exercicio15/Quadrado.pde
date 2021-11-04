
class Quadrado {
  float posX, posY, tamanho;
  color black = color(0, 0, 0);
  color white = color(255, 255, 255);

  Quadrado (float x, float y, float t) {
    posX = x;
    posY = y;
    tamanho = t;
  }

  void desenha (int a) {
    noStroke ();
    if(a%2==0){
      fill (white);
    }else{
      fill(black);
    }
    rect (posX, posY, tamanho, tamanho);
  }
}
