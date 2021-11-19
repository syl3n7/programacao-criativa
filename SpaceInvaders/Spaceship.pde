class Spaceship{

    //propriedades
    Bullet b = new Bullet(s.posX, s.posY, 10);
    float posX, posY, tam;


    //construtor
    Spaceship(float x, float y, float t){
        posX = x;
        posY = y;
        tam = t;
    }

    void desenha(){

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

        b.desenha();
        b.move();

    }

}