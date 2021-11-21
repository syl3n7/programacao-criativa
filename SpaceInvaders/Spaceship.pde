class Spaceship{

    //propriedades
    
    float posX, posY, tam;
    Bullets b;
    int score = 0;

    //construtor
    Spaceship(float x, float y, float t){
        posX = x;
        posY = y;
        tam = t;
        b = new Bullets(posX, posY, 10);
    }

    void desenha(){
        println(" score :"+score);
        fill(255, 0, 0);
        rect(posX, posY, tam, tam);

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

        b.desenha(posX, posY);
        if(b.posX < height){
            b.posY += 10;
        }
        
        for(int i = 0; i<int(height-b.tam); i++){
            b.move();
        }

        
        

    }

    void score(){

        if (dist(b.posX, b.posY, i.posX, i.posY) < 15){
            i.targetHit();
            s.score++;
        }
    }

}