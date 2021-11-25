class CloudsGen{

    PImage img;
    float posX, posY;

    CloudsGen(String nome, float x, float y){
        img = loadImage(nome);
        posX = posX;
        posY = posY;
    }

    void draw(){

        image(img, posX, posY);        

    }

}