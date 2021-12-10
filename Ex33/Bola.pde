class Bola{

    float posX, posY, tam, angle;

    Bola(float x, float y, float a) {

        tam = 20;
        angle = a;

    }

    void drawme() {

        float cx = width / 2;
        float cy = height / 2;
        float r = 300;

        b.posX = cx + r * cos(ang);
        b.posY = cx + r * sin(ang);

        fill(0);
        ellipse(b.posX, b.posY, b.tam, b.tam);

        angle += 0.01;

    }

}