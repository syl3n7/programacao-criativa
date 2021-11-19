class City{

    //propriedades
    Building[] b;

    //construtor
    City(){
        for(int i = 0; i<width; i++){
            b = new Building[i];
        }
    }

void drawCity(){

    //desenhar os edificios
        for(int i = 0; i<b.length; i++){
            b[i].drawBuilding();
        }
    }
}