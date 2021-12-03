class Montanhas{

    //propriedades
    float n;
    Rectangle[] rects;
    float tempo;

    //construtor
    Montanhas(float nMontanhas){
        n = nMontanhas;
        rects = new Rectangle[(int)n];

        temporal = noise(tempo);
        temporal = map(temporal, 0, 1, 0, height);

        float alt = temporal;
        float larg = random(temporal/n);
        float x = 0;
        float y = height-alt;
        for(int i = 0; i < rects.length; i++){
            rects[i] = new Rectangle(x, y, alt, larg);
            x +=  larg;
            alt = noise(tempo);
            alt = map(tempo, )
            y = height-alt;
        }
        tempo += 0.05;
    }
    
    void drawme(){
        for(int i = 0; i < rects.length; i++){
            rects[i].drawme();
        }
    }

}