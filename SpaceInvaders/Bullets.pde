class Bullets{

//propriedades 
float posX, posY, tam;

//construtor

    Bullets(float x, float y, float t){

        posX = x;
        posY = y;
        tam = 10;

    }

    void desenha(){
        fill(0);
        ellipse(posX, posY, tam, tam);
    }

    void move(){

        posY -= 10;

    }


}