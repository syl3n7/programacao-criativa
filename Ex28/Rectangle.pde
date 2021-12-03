class Rectangle{

    //propriedades
    float posX, posY, alt, larg;

    //constructor
    Rectangle(float x, float y, float a, float l){
        posX = x;
        posY = y;
        alt = a;
        larg = l;

    }

    void drawme(){
        
        fill(0);
        rect(posX, posY, larg, alt);

    }

}