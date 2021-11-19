class Building {

    //propriedades
    float posX, posY, wid, hei;
    Windows windows;


    //construtor
    Building(float x, float y, float w, float h){
        posX = x;
        posY = y;
        wid = w;
        hei = h;´
        windows = new Windows(int(random(1,5)), int(random(1, 5)), posX+5, posY+5, wid-10, hei*0.75);
    }

    void drawBuilding(){
        fill(255);
        rect(posX, posY, wid, hei);
    }

}