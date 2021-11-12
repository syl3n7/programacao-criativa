class Sky{

    //propriedades
    Star[] s;
    //construtor

    Sky(){
        for(int i = 0; i<20; i++){
            s[i] = new Star();
        }
    }

    void drawStar(){

        for(int i = 0; i<20; i++){
            s[i].draw();
        }

    }

}