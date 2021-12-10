class Bola{

    float posX, posY, tam, angle;

    Bola(float a) {

        tam = 20;
        angle = a;

    }

    void drawme() {

        float cx = width / 2;
        float cy = height / 2;
        float r = 300;

            posX = cx + r * cos(angle);
            posY = cx + r * sin(angle);
            fill(255);
            ellipse(posX, posY, tam, tam);

    }

}