class Ellipsed{

    //propriedades
    float x, y, t;

    //construtor
    Ellipsed(float x, float y, float t){

        posX = x;
        posY = y;
        tam = t;

    }

    void drawme(){

        ellipse(posX, posY, tam, tam);

    }

}