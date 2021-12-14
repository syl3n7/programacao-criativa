class Menu{

//propriedades
float posX, posY;
boolean state;

//constructor    
    Menu(float x, float y) {

        posX = x;
        posY = y;
        state = true;

    }


    void start() {

        state = false;

    }

}