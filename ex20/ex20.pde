Quadrado[] quad;
float linhas = 80;
float colunas = 80;
float x = 400;
float y = 400;
int n = int(linhas * colunas); // n = número de vezes que quero que o retângulo seja desenhado
float sizeq; // size
color corR = color(255, 0, 0, 0);
void setup() {
  noStroke ();
  colorMode(HSB, 360, 100, 100);
  frameRate(60);
  rectMode(CENTER);
  size(800, 800);
  sizeq = width / colunas;
  quad = new Quadrado[n];
  quad[1] = new Quadrado(x, y, sizeq);
}

void draw() {
    quad[1].mudaBackground();
    quad[1].desenha();   
    quad[1].mudaTamanho();
    quad[1].mudaForeground();
}