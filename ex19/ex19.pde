Quadrado[] quad;
float linhas = 80;
float colunas = 80;
float x = 0;
float y = 0;
int n = int(linhas * colunas); // n = número de vezes que quero que o retângulo seja desenhado
float sizeq; // size
color corR = color(255, 0, 0, 0);
void setup() {
  noStroke ();
  frameRate(60);

  size(800, 800);
  sizeq = width / colunas;
  quad = new Quadrado[n];
  boolean f = true;
  for (int i = 0; i < n; i++) {
    quad[i] = new Quadrado(x, y, sizeq, f);
    
    if (x < width - sizeq) {
      x += sizeq;
    } else {
      y += sizeq;
      x = 0;
    }
  }
}

void draw() {
  background(0, 0, 0);
  for (int i = 0; i < quad.length; i++) {
    quad[i].desenha();   
    quad[i].mudaCor();    
  } 
}