class Player{

    //Properties
    float altura, largura;
    PImage img;
    PImage img2;
    PImage img3;
    float posX, posY, tam;;
    boolean moveUp, moveDown, moveLeft, moveRight;
    
    //Constructor
    Player(String n, float x, float y, float t){
        img = loadImage(n);
        posX = x;
        posY = y;
        tam = t;
    }
    
//spawn da imagem mediante parametros indicados
    void drawme(){
        img.resize(650,350);
        image(img, posX, posY);
    }

//tenho que adicionar movimento com variaveis boleanas para ser smooth

//damage radius
void damage(){

}

void shoot (){
    b1.moveme();
}

//validar posicao e incremento da mesma caso tecla seja pressionada
    void movedown(){ 
    
            if (posY < height){
                posY += tam;
            }
    }

//validar posicao e incremento da mesma caso tecla seja pressionada
    void moveup(){
        while(!moveDown){
            if (posY > 0){
                posY -= tam;
            }
        }
    }

//validar posicao e incremento da mesma caso tecla seja pressionada
    void moveleft(){
        if (posX > 0){
            posX -= tam;
        }
    }

//validar posicao e incremento da mesma caso tecla seja pressionada
    void moveright(){
        if (posX < width){
            posX += tam;
        }
    }
}