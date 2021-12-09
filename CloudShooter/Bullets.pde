class Bullets {

  //propriedades
  PImage bullet;
  float posX, posY, tam;

  //construtor
  Bullets(String name, float x, float y, float t) {
    bullet = loadImage(name);
    posX = x;
    posY = y;
    tam = t;
  }

  //desenhar as balas no ecra
  void drawme() {

    bullet.resize(int(tam), 25);
    //desenhar fora do canvas
    image(bullet, posX, posY);
  }
  //mover a bullet a partir da posicao do player
  void moveme() {
    
    if (posY < width-tam) {
      posX += tam;
    }
  }
}
