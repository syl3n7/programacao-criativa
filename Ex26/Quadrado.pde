class Quadrado{

//propriedades
    float posX, posY, tam;

//construtor

    Quadrado(){

        posX = 0;
        posY = height/2;
        tam = 40;

    }

    void drawme(float x){

    posX = x;
    fill(0);
    rect(posX, posY, t, t);
            if (posX < width - tam){
                posX += tam;
            }

        }

    }

}