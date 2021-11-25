class CloudsGen{

    PImage img;
    float posX, posY;

    CloudsGen(String nome, float x, float y){
        img = loadImage(nome);
        posX = x;
        posY = y;
    }

    void draw(){
        image(img, posX, posY);  
    }

    void move(){
        if(posX > -img.width){
            posX -= random(5, 75);
        }
        else{
            posX = width;
            posY = random(height);
        }
        
    }

}