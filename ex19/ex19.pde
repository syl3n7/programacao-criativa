Quadrado[] quad;
float linhas = 8;
float colunas = 8;
float x = 0;
float y = 0;
int n = int(linhas * colunas); // n = número de vezes que quero que o retângulo seja desenhado
float sizeq; // size
color corR = color(255, 0, 0);
void setup() {
  noStroke ();
  frameRate(60);
  size(800, 800);
  sizeq = width / colunas;
  quad = new Quadrado[n];

  boolean f = true;
  
  for (int i = 0; i < n; i++) {
    quad[i] = new Quadrado(x, y, sizeq, f, color(255, 255, 255));
    
    if(f) f = false;
    else f = true;
    
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
  background(0, 0, 0);
  for (int i = 0; i < quad.length; i++) {
    quad[i].desenha();
    if(mouseX > quad[i].posX && mouseX < quad[i].posX + quad[i].tamanho && mouseY > quad[i].posY && mouseY < quad[i].posY + quad[i].tamanho) {
      quad[i].cor = color(0, 0, 255);
    } else {
      quad[i].cor = color(255, 0, 0);
    }
  } 
}