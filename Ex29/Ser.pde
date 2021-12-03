class Ser{

    //propriedades
    float posX, posY, tam, vel, t;

    //construtor
    Ser(float x, float y, float t, float v){

        posX =x;
        posY =y;
        tam = t;
        vel = v;


    }

    void drawme(){

        for (int i = 0; i < e.lenght; ++i) {
            e[i].drawme();
            s.posX += vel;
            s.posY += vel;
        }

    }

}