Retangulo r ;

void setup() {
  size(500, 500);
  frameRate(60);
  rectMode(CENTER);
  noStroke();
  r = new Retangulo();
}

void draw() {
  background(0);
  r.desenha();
  r.mover();
}
