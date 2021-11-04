Quadrado [] quad;
int linhas = 5;
int colunas = 5;
int n = linhas * colunas; // n = número de vezes que quero que o retângulo seja desenhado
int sizeq = width/colunas; // size
void setup () {
  size (800, 800);
  quad = new Quadrado [n];
  float x = 0;
  float y = 0;
  for (int i=0; i<n; i++) {
    quad[i] = new Quadrado(x, y, sizeq, color (random(0, 255), random(0, 255), random(0, 255), random (0, 255)));
    if (x < width){
    x += sizeq;
    }else if(x>=width){
      x = 0;
      
    }
  }
}

void draw () {
background(0);
  for (int i=0; i<quad.length; i++) {
    quad[i].desenha();
  }
}
