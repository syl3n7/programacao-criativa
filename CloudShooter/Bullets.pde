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

//metodos

//desenhar as balas no ecra
    void drawme() {

        bullet.resize(100,25);
        //desenhar fora do canvas
        image(bullet, -650, -650);
        p1.altura = p1.img.height/2;
        p1.largura = p1.img.width/2;
        
    }
//mover a ellipse
    void moveme(){
        //atualizar posicao para parecer spawn a partir da nave
        image(bullet, p1.largura, p1.altura); //substituir altura e largura por variaveis
    }
}