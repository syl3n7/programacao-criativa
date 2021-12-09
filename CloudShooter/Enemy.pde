class Enemy {

  //propriedades
  float trand = 5;
  float tsmoothed;  
  PImage img;
  float posX, posY, vel, damage;
  int tam, health;
  //constructor
  Enemy(String nome, float x, float y, int t, float v, float d) {

    img = loadImage(nome);
    posX = 250;
    posY = 250;
    tam = t;
    vel = v;
    damage = d;
    health = 100;

  }

  void drawme() {

    img.resize(tam, tam); //redimensiona a imagem
    image(img, posX, posY);
  }

//fazer enimigo andar pelo canvas variando velocidade horizontal e posicao vertical aleatoria
  void move() {

  tsmoothed = noise(trand);
  tsmoothed = map(tsmoothed, 0, 1, tam, width-tam);
  posY = tsmoothed;

    if (posX < 0) {
      posX = width + tam;
    } else
      posX -= vel;

    trand += 0.05;
  }

/* placeholder para verificar se foi atingiho pela bala*/
  void healthcheck() {

    if (health <= 0) {
      
    }

  }
}
