Quadrado[] quad;
float linhas = 8;
float colunas = 8;
float x = 0;
float y = 0;
int n = int(linhas * colunas); // n = número de vezes que quero que o retângulo seja desenhado
float sizeq; // size
void setup() {
  frameRate(10);
  size(500, 500);
  sizeq = width / colunas;
  quad = new Quadrado[n];

  boolean f = true;
  for (int i = 0; i < n; i++) {

    quad[i] = new Quadrado(x, y, sizeq, f);
    if(f) f = false;
    else f = true;

    println(i + " " + y + " " + x);
    if (x < width - sizeq) {
      x += sizeq;
    } else {
      y += sizeq;
      x = 0;
      if (linhas % 2 == 0 && colunas%2 == 0)
        if (f)f = false;
        else f = true;
    }
  }
}


void draw() {
  background(200, 0, 0);
  for (int i = 0; i < quad.length; i++) {
    quad[i].desenha();
  }
}
