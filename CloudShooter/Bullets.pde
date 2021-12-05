class Bullets{

    //propriedades
float posX, posY, tam;

    //construtor
    Bullets(){

        posX = 0;
        posX = 0;
        tam = 10;

    }

//desenhar as balas no ecra
    void drawme() {
            
            fill(255,0,0);
            ellipse(posX,posY,tam,tam);
    
    }
//mover a ellipse
    void moveme(){
        posX = posX + 5;
    }

}