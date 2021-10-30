Quadrado [] quad;
int n = 60; // n = número de vezes que quero que o retângulo seja desenhado

void setup () {
  size (800, 800);
  quad = new Quadrado [n];
  for (int i=0; i<n; i++) {
    quad[i] = new Quadrado (random(100, width), random (100, height), random (10-100), color (random(0, 255), random(0, 255), random(0, 255), random (0, 255)));
  }
}

void draw () {
background(0);
  for (int i=0; i<quad.length; i++) {
    quad[i].desenha();
  }
}
