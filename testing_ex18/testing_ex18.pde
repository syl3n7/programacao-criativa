Quadrado [] quad;
int linhas = 5;
int colunas = 5;
int x = 0;
int y = 0;
int r = 0;
int n = linhas * colunas; // n = número de vezes que quero que o retângulo seja desenhado
int sizeq; // size
void setup () {
  frameRate(2);
  size (500, 500);
  sizeq = width/colunas;
  quad = new Quadrado [n];

for (int i = 0; i < n; i++) {
      
      quad[i] = new Quadrado(x, y, sizeq);
      println(i +" "+y+" "+x+" "+r);
      if (x < width-sizeq) {
        x += sizeq;
      }else {
        y += sizeq;
        x = 0;
      }
    }     
}

void draw () {
background(0);
  for (int i=0; i<quad.length; i++) {
    quad[i].desenha(r);
    r++;
  }
}