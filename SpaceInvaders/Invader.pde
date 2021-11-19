class Invader{
    
    //propriedades
    float posX, posY, tam;

    //construtor
    Invader(float x, float y, float t){
        posX = x;
        posY = y;
        tam = t;

    }

    void desenha(){

        fill(0, 255, 0);
        rect(posX, posY, tam, tam);

    }

}