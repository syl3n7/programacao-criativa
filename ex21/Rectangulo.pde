class Rectangle{

float posX, posY, larg, alt;
color c;

    Rectangle(float x, float y, float l, float a){
        posX = x;
        posY = y;
        larg = l;
        alt = a;
        c = color(220, 220, 30);
    }

    void desenha(){
        fill(c);
        rect(posX, posY, larg, alt);
    }
}