class Invader{
    
    //propriedades
    float posX, posY, tam;
    boolean hidden = false;

    //construtor
    Invader(float x, float y, float t, boolean h){
        posX = x;
        posY = y;
        tam = t;
        hidden = h;
    }

    void spawn(){

        fill(0, 255, 0);
        rect(posX, posY, tam, tam);

    }

    void targetHit(){

        hidden = true;
        
    }

}