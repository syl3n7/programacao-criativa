class Enemy {

  //propriedades
  PImage img;
  float posX, posY, tam, vel, damage;

  //constructor
  Enemy(String nome, float x, float y, float t, float v, float d) {

    img = loadImage(nome);
    posX = 250;
    posY = 250;
    tam = 20;
    vel = v;
    damage = d;
  }

  void drawme() {

    img.resize(300, 300);
    image(img, posX, posY);
  }


  void move() {

    if (posX < 0) {
      posY = random(0, height);
      posX = width + tam;
    } else
      posX -= vel;
  }

}
