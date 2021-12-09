CloudsGen c1;
CloudsGen c2;
CloudsGen c3;
Player p1;
Bullets b1;
Enemy e1;

void setup() {

    frameRate(60);

    fullScreen(2, P2D);
    
    //nuvem 1
    c1 = new CloudsGen("cloud1.png", 100, random(height));
    //nuvem 2
    c2 = new CloudsGen("cloud2.png", 200, random(height));
    //nuvem 3
    c3 = new CloudsGen("cloud3.png", 300, random(height));
    //player 1
    p1 = new Player("f16.png", 0, 0, 20);
    //bullet 1
    b1 = new Bullets("bullet.png", -650, -650/2, 20);
    //enemy 1
    e1 = new Enemy("enemy.png", -650, -650, 20, 5, 100);
    
}

//quero adicionar um background que vai mudando a HUE de modo a ser dia/noite

//desenhar os elementos do programa no ecra
void draw(){
    background(0, 80, 255);
    c1.drawme();
    c2.drawme();
    c3.drawme();
    c1.move();
    c2.move();
    c3.move();
    p1.drawme();
    b1.drawme();
}

//tenho que validar se a bala atinge o objeto dentro do draw
void keyPressed(){
//falta por a bala a mover e redimensionar a imagem corretamente.
    if(key == ' '){
        p1.shoot();
    }

    if(key == 's'|| key == 'S'){
        p1.movedown();
    }
    
    if(key == 'w'|| key == 'W'){
        p1.moveup(); 
    }

    if(key == 'a'|| key == 'A'){
        p1.moveleft();
    }

    if(key == 'd'|| key == 'D'){
        p1.moveright();
    }

}

//acresventar pontuacao na tabela
    void score(){
    
    }

//tabela de pontuacao
    void highscore(){

    }

//no more lifelines calls this.
    void gameOver(){

    }

//going through all the lifelines and leves without dying, calls this.    
void gameWon(){

    }

//if the player loses the level this gets called and he loses a lifeline
    void gameLost(){

    }