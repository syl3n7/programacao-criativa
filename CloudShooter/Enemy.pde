class Enemy{

    //propriedades
    PImage img;
    float posX, posY, tam, vel, damage;

    //constructor
    Enemy(String nome, float x, float y, float t, float v, float d){

        img = loadImage(nome);
        posX = x;
        posY = y;
        tam = t;
        vel = v;
        damage = d;

    }

    void drawme(){

        

    }

}