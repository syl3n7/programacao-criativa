class Player{

    //Properties
    PImage img;
    float posX, posY, tam;;

    //Constructor
    Player(String n, float x, float y, float t){
        img = loadImage(n);
        posX = x;
        posY = y;
        tam = t;
    }

    void drawme(){
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

    void moveleft(){
        if (posX > 0){
            posX -= tam;
        }
    }

    void moveright(){
        if (posX < width){
            posX += tam;
        }
    }

}