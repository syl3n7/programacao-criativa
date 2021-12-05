class Player{

    //Properties
    PImage img;
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
        image(img, posX, posY);
    }

//tenho que adicionar movimento com variaveis boleanas para ser smooth


//validar posicao e incremento da mesma caso tecla seja pressionada
    void movedown(){ 
        if (posY < height){
            posY += tam;
        }
    }

//validar posicao e incremento da mesma caso tecla seja pressionada
    void moveup(){
        if (posY > 0){
            posY -= tam;
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