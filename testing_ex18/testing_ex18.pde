int tam = 80;
int nq = width/tam;
color blue = color(40, 150, 190);
color purple = color(150, 40, 190);
void setup() {
  size(800, 800);
}
void draw() {

      for (int x = 0; x < width; x+=tam) {
        for (int y = 0; y < height; y+=tam) {
          if (x%2==0) {
            fill(blue);
          } else {
            fill(purple);
          }
          rect(x, y, tam, tam);
        }
      }

}

