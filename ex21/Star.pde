class Star{

    //propriedades
    float posX, posY, tam;

    //construtor
    Star(float x, float y, float t){
        posX = x;
        posY = y;
        tam = t;
    }

    void drawStar(){
        fill(255);
        ellipse(posX, posY, tam, tam);
    }   
}