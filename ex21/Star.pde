class Star{

    //propriedades
    float posX, posY, tam;

    //construtor
    Star(){
        posX = random(0, width-tam);
        posY = random(0, height-tam);

    }

    void drawStar(){
        fill(255);
        ellipse(posX, posY, tam, tam);
    }   
}