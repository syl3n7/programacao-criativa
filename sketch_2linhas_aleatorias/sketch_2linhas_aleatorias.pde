Mikiu l1, l2;

void setup() {

  noStroke();
  size(500, 500);
  l1 = new Mikiu(random(width), random(height), random(width), random(height));
  l2 = new Mikiu(random(width), random(height), random(width), random(height));
}


void draw () {
  
  background(255);

  l1.mover();
  l1.check();
  l1.dLine();
  l2.mover();
  l2.check();
  l2.dLine();
  
}
