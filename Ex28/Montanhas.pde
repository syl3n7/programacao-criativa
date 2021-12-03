class Montanhas{

    //propriedades
    float n;
    Rectangle[] rects;

    //construtor
    Montanhas(float nMontanhas){
        n = nMontanhas;
        rects = new Rectangle[(int)n];

        float alt = random(height);
        float larg = random(width/n);
        float x = 0;
        float y = height-alt;
        for(int i = 0; i < rects.length; i++){
            rects[i] = new Rectangle(x, y, alt, larg);
            x +=  larg;
            alt = random(height);
        }

    }
    
    void drawme(){
        
    }

}