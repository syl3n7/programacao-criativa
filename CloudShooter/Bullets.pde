class Bullets{

    //propriedades
    PImage bullet;
    float posX, posY, tam;

    //construtor
    Bullets(String name, float x, float y, float t){
        bullet = loadImage(name);
        posX = x;
        posY = y;
        tam = t;
    }

//desenhar as balas no ecra
    void drawme() {

        bullet.resize(100,25);
        //desenhar fora do canvas
        image(bullet, posX, posY);
    }
//mover a ellipse
    void moveme(){
        //atualizar posicao para parecer spawn a partir da nave
        drawme(); //substituir altura e largura por variaveis
        if (posY < width-tam){
            posY += tam;
        }
    }
}