class Enemy {

  //propriedades
  PImage img;
  float posX, posY, tam, vel, damage;

  //constructor
  Enemy(String nome, float x, float y, float t, float v, float d) {

    img = loadImage(nome);
    posX = 250;
    posY = 250;
    tam = t;
    vel = v;
    damage = d;
  }

  void drawme() {

    img.resize(tam, tam); //redimensiona a imagem
    image(img, posX, posY);
  }

//enimigo anda pelo canvas a passear e vai variando velocidade e posicao consoante a dificuldade
  void move() {

    if (posX < 0) {
      posY = random(0, height);
      posX = width + tam;
    } else
      posX -= vel;
  }

/* placeholder para verificar se foi atingiho pela bala
  void hit(float x, float y) {

    if (dist(x, y, posX, posY) < tam) {
      posX = random(0, width);
      posY = random(0, height);
      vel += 0.5;
      damage += 0.5;
    }
  }*/
}
