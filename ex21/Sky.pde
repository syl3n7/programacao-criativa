class Sky{

    //propriedades
    color cor = color(40, 60, 113);
    Star[] s;
    //construtor

    Sky(){
        for(int i = 0; i<20; i++){
            s[i] = new Star();
        }
    }

    void drawStar(){
        background(cor);
        for(int i = 0; i<20; i++){
            s[i].drawStar();
        }

    }

}