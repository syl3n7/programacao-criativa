class Mikiu {

  //propriedades
  float posX, posY, posX2, posY2, size, speed, weight, random;
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

    int d = int(random(4));

    if (d == 0 && posX < width) posX += speed;
    else if (d == 1 && posX > 0) posX -= speed;
    else if (d == 2 && posY < height) posY += speed;
    else if (d == 3 && posY > 0) posY -= speed;

    d = int(random(4));
    if (d == 0 && posX2 < width) posX2 += speed;
    else if (d == 1 && posX2 > 0) posX2 -= speed;
    else if (d == 2 && posY2 < height) posY2 += speed;
    else if (d == 3 && posY2 > 0) posY2 -= speed;
  }

  void check() {
    int dc;
    dc = int(dist(l1.posX, l1.posY, l2.posX2, l2.posY2));
    
    if(dist(l1.posX, l1.posY, l2.posX2, l2.posY2)) < 10) {
    
    }else{
      
    }else if (dist(l1.posX, l1.posY, l2.posX2, l2.posY2) < 10){
    }
    else{
    }
    
    
  }
}
