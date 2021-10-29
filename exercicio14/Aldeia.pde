class Aldeia {

  float posX, posY, tam;
  Casa[] casas;
  
  Aldeia() {
    posX = random(width/2);
    posY = random(height/2);
    tam = 400;
    casas = new Casa[4];
    for (int i=0;i<4;i++){
    casas[i] = new Casa(posX, posY, tam);
    }
  }

  void desenha() {

    fill(0, 150, 0);
    noStroke();
    rect(posX, posY, tam, tam);
    for(int i=0;i<4;i++){
    casas[i].desenha();
    }
  }
} 
