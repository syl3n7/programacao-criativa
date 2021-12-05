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
            
            fill(255,0,0);
            image(bullet, 650, 350/2);
    
    }
//mover a ellipse
    void moveme(){
        posX = posX + 5;
    }

}