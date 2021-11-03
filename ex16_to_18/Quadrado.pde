int H = 0;
int W = 0;

class Quadrado {

  Cubo[] cubos;

  Quadrado (int n) {
    cubos = new Cubo[n];

    for (int x = 0; x < width; x++) {
      for (int y = 0; y < height; y++) {
         W=W*x;
         H=H*y;
      }
    }

    for (int i = 0; i < n; i++) {
      cubos[i] = new Cubo(W, H, random(100));
    }
  }

  void desenha() {
    for (int i = 0; i < cubos.length; i++) {
      cubos[i].desenha();
    }
  }
}
