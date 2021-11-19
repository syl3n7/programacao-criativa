class City{

    //propriedades
    float nBuildings;
    Building[] b;

    //construtor
    City(int n){
        nBuildings = n;
        b = new Building[nBuildings];
        float x = 0;
        for(int i = 0; i < b.length; i++){
            float y = random(20, height*0.75);
            b[i] = new Building(x, y, width/nBuildings, height-y);
            x += width/nBuildings;
        }
    }

void drawCity(){

    //desenhar os edificios
        for(int i = 0; i<b.length; i++){
            b[i].drawBuilding();
        }
    }
}