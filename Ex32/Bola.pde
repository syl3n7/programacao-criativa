class Bola {

    float posX, posY, tam, ang;

    Bola(){

        tam = 30;
        ang = 0.0;

    }

    void drawme(){
        
        float cx = width / 2;
        float cy = height / 2;
        float r = 300;

        b.posX = cx + r * cos(ang);
        b.posY = cx + r * sin(ang);

        fill(0);
        ellipse(b.posX, b.posY, b.tam, b.tam);

        ang += 0.01;
        
    }

}