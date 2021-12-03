class Quadrado{

//propriedades
    float posX, posY, tam;

//construtor

    Quadrado(){

        posX = 0;
        posY = height/2;
        tam = 40;

    }

    void drawme(float y){

    posY = y;
    fill(0);
    rect(posX, posY, tam, tam);
            if (posX < width - tam){
                posX += tam;
            }
            if (posX >=  width){
                posX = 0;
            }

        }
}
