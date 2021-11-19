class Sky{

    //propriedades
    color cor;
    int nStars;
    Star[] s;
    s = new Star[i];
    
    

    //construtor
    Sky(){
        cor = color(40, 60, 113);
        nStars = 129;
        s = new Star[nStars];
        for(int i = 0; i < stars.length; i++){
            s[i] = new Star(random(width), random(height), random(5));
        }      

    }

    void drawSky(){
        
        fill(cor);
        rect(0, 0, width, height);

        for(int i = 0; i<20; i++){
            s[i].drawStar();
        }

    }

}