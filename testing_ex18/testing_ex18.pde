float tam = pixelWidth*pixelHeight;
float nq = 20;
color cor1 = color(40, 150, 190);
color cor2 = color(150, 40, 190);
void setup() {
  size(800, 800);
  frameRate(5);
}
void draw() {
  loadPixels();
  for (float a = 0; a < nq; a++) {
    for (float b = 0; b < nq; b++) {
      if ((a+b)%2==0) {
        for (float x = 0; x < width; x+=tam) {
          fill(cor1);
          for (float y = 0; y < height; y+=tam) {
            fill(cor2);
            rect(x, y, tam, tam);
          }
        }
      } else
        for (float x = 0; x < width; x+=tam) {
          for (float y = 0; y < height; y+=tam) {
            fill(color(80, 40, 80));
            rect(x, y, tam, tam);
          }
        }
    }
  }
  updatePixels();
}
