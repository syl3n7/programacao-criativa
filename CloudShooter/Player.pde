class Player{

    //Properties
    PImage img;
    float posX, posY, tam;;

    //Constructor
    Player(String n, float x, float y, float t){
        img = loadImage(n);
        x = x;
        y = y;
        t = tam;
    }

    void draw(){
        image(img, posX, posY);
    }

    void movedown(){ 
        if (posY < height){
            posY += tam;
        }
    }

    void moveup(){
        if (posY > 0){
            posY -= tam;
        }
    }
}