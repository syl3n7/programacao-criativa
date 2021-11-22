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
        rect(x, y, tam, tam);
    }

    void move(){

        for(int i = 0; posY <= height; i+=5){
            posY += i;
        }
        
    }


}