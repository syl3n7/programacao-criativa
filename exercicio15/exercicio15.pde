Quadrado [] quad;
int linhas = 5;
int colunas = 5;
int x = 0;
int y = 0;
int n = linhas * colunas; // n = número de vezes que quero que o retângulo seja desenhado
int sizeq = width/colunas; // size
void setup () {
  size (500, 500);
  quad = new Quadrado [n];

  for (int i=0; i<n; i++) {
    quad[i] = new Quadrado(x, y, sizeq);
    println(y);
    println(x);
    if (x < width) {
    x += sizeq;
    }else {
      y += sizeq;
      x = 0;
    }
    x+= sizeq;
    
    }
  
  
}

void draw () {
background(0);
  for (int i=0; i<quad.length; i++) {
    quad[i].desenha(x);
  }
}
