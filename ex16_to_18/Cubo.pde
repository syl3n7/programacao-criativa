class Cubo {

  float x, y, tam;
  color blue = color(40, 150, 190);
  color purple = color(150, 40, 190);

  Cubo(float x1, float y1, float t) {
    x = x1;
    y = y1;
    tam = t;
  }

  void desenha () {
    if (x%2==0) {
      fill(blue);
    } else {
      fill(purple);
    }
    rect(x, y, tam, tam);
  }
}
