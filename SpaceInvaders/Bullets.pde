class Bullets{

//propriedades 
float posX, posY, tam1, tam2;

//construtor

    Bullets(float x, float y, float t1, float t2){

        posX = x;
        posY = y;
        tam1 = t1;
        tam2 = t2;

    }

    void spawn(float x, float y){
        
        fill(25, 50, 200);
        rect(x, y, tam1, tam2);
        
    }

    void move(){

        for (int i = 0; i < 9001; i++){

            spawn(s.posX, s.posY);
                if(posX < height){
                posY -= 10;
            }
            s.score();
        }            
    }
}