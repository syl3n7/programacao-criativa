class Bullets{

//propriedades 
float posX, posY, tam;

//construtor

    Bullets(float x, float y, float t){

        posX = x;
        posY = y;
        tam = 10;

    }

    void desenha(float x, float y){
        fill(25, 50, 200);
        ellipse(x, y, tam, tam);
    }

    void move(){

        posY += 5;

    }


}