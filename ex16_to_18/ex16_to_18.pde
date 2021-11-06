Quadrado q;

void setup() {
  //fullScreen();
  size(500, 500);
  background(0);
  ellipseMode(CORNER);
  q = new Quadrado(64);
}

void draw() {
  
  q.desenha();
}
