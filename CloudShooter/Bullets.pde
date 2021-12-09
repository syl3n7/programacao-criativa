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
  boolean enemycheck(){
    if (dist(b1.posX+b1.tam/2, b1.posY+b1.tam/2, e1.posX+e1.tam/2, e1.posY+e1.tam/2) < tam) {
      return true;
    }
    return false;
  }
}
