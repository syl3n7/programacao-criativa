class Player {
  //Properties
  //float altura, largura;  ainda nao estou a usar mas vai servir para controlar algo relacionado com as balas
  PImage img; //sprite normal
  //PImage img2; //sprite while moving up
  //PImage img3; //sprite while moving down
  float posX, posY, tam;
  boolean moveUp, moveDown, moveLeft, moveRight; //booleanas para controlar o movimento do player

  //Constructor
  Player(String n, float x, float y, float t) {
    img = loadImage(n);
    //img2 = loadimage(n2);
    //img3 = loadimage(n3);
    posX = x;
    posY = y;
    tam = t;
  }

  //spawn da imagem mediante parametros indicados
  void drawme() {
    img.resize(650, 350);
    image(img, posX, posY);
  }

  //tenho que adicionar movimento com variaveis boleanas para ser smooth

  //damage radius
  void damage() {
  }

  void shoot () {
    b1.moveme();
  }

  //validar posicao e incremento da mesma caso tecla seja pressionada
  void movedown() {
    if (posY < height) {
      posY += tam;
    }
  }

  //validar posicao e incremento da mesma caso tecla seja pressionada
  void moveup() {
    if (posY > 0) {
      posY -= tam;
    }
  }

  //validar posicao e incremento da mesma caso tecla seja pressionada
  void moveleft() {
    if (posX > 0) {
      posX -= tam;
    }
  }

  //validar posicao e incremento da mesma caso tecla seja pressionada
  void moveright() {
    if (posX < width) {
      posX += tam;
    }
  }
}
