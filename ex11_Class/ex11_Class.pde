Ball b;


void setup() {
  size(500, 500);
  b = new Ball();
}

void draw() {
  background(255);
  b.desenha();
  b.mover();
}
