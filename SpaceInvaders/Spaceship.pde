class Spaceship{

    //propriedades
    
    float posX, posY, tam;
    Bullets b[] = new Bullets[9001];
    int score = 0;

    //construtor
    Spaceship(float x, float y, float t){
        posX = x;
        posY = y;
        tam = t;

        for (int i = 0; i < 9001; i++){
            b[i]= new Bullets(posX, posY, 10, 10);
        }
        
    }

    void spawn(){

        println(" score :"+score);
        fill(255, 0, 0);
        triangle(posX, posY, posX+tam, posY, posX+tam/2, posY-tam);

    }

    void moveLeft(){

        s.posX = s.posX - 10;           

    }

    void moveRight(){

       s.posX = s.posX + 10;
        
    }

    void moveUp(){

        s.posY = s.posY - 10;
        
    }

    void moveDown(){

        s.posY = s.posY + 10;
        
    }

    void shoot(){

        for (int i = 0; i < b.length; i++){

            b[i].move();
            score();
        }
        
    }

    void score(){

        //f (dist(b.posX, b.posY, i.posX, i.posY) < 15){
        //    i.targetHit();
        //    s.score++;
        //}
    }

}