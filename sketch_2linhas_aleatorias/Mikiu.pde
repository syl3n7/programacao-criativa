class Mikiu {

  //propriedades
  float posX, posY, posX2, posY2, speed, weight, random,d;
  float minD = 150;
  color c = color(180, 50, 40);

  //construtor
  Mikiu(float x, float y, float x2, float y2) {

    posX = x;
    posY = y;
    posX2 = x2;
    posY2 = y2;
    weight = 9;
    speed = random(20);
    random = random(4);
  }

  void dLine() {
    stroke(c);
    strokeWeight(weight);
    line(posX, posY, posX2, posY2);
  }

  void mover() {
    
    int d0 = int(random(4));

    if (d0 == 0 && posX < width) posX += speed;
    else if (d == 1 && posX > 0) posX -= speed;
    else if (d == 2 && posY < height) posY += speed;
    else if (d == 3 && posY > 0) posY -= speed;

    d = int(random(4));
    if (d0 == 0 && posX2 < width) posX2 += speed;
    else if (d0 == 1 && posX2 > 0) posX2 -= speed;
    else if (d0 == 2 && posY2 < height) posY2 += speed;
    else if (d0 == 3 && posY2 > 0) posY2 -= speed;
  }

  void check() {
    
    d = dist(l1.posX, l1.posY, l2.posX, l2.posY);
    if(d < minD) {
      l1.posX = l2.posX;
      l1.posY = l2.posY;
    }
    d = dist(l1.posX2, l1.posY2, l2.posX2, l2.posY2);
    if(d < minD){
      l1.posX2 = l2.posX2;
      l1.posX2 = l2.posX2;
    }
    d = dist(l1.posX2, l1.posY2, l2.posX, l2.posY);
    if(d < minD){
      l1.posX2 = l2.posX;
      l1.posY2 = l2.posY;
    }
    d = dist(l1.posX, l1.posY, l2.posX2, l2.posY2);
    if(d < minD){
      l1.posX = l2.posX2;
      l1.posY = l2.posY2;
    }
    
  }
}
