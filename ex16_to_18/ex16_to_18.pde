Quadrado q;

void setup() {
  //fullScreen();
  size(500, 500);
  q = new Quadrado(64);
}

void draw() {
  background(0);
  q.desenha();
}
