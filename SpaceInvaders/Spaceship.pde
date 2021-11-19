class Spaceship{

    //propriedades
    float posX, posY, tam;


    //construtor
    Spaceship(float x, float y, float t){
        posX = x;
        posY = y;
        tam = t;
    }

    void desenha(){

        rect(posX, posY, tam, tam);

    }

}