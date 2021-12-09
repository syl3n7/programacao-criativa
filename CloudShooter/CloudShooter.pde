//inicializar objetos
CloudsGen c1;
CloudsGen c2;
CloudsGen c3;
Player p1;
Bullets b1;
Enemy e1;
int score = 0;

//codigo apenas corrido 1x (inicio do programa)
void setup() {

  rectMode(CENTER);

  frameRate(25);

  fullScreen(P2D);

  //nuvem 1
  c1 = new CloudsGen("cloud1.png", 100, random(height));
  //nuvem 2
  c2 = new CloudsGen("cloud2.png", 200, random(height));
  //nuvem 3
  c3 = new CloudsGen("cloud3.png", 300, random(height));
  //player 1
  p1 = new Player("f16.png", 0, 0, 20);
  //bullet 1
  b1 = new Bullets("bullet.png", -650, -650/2, 100);
  //enemy 1
  e1 = new Enemy("ovni.png", (width - 300), (height - 300), 150, 5, 100);
}


//quero adicionar um background que vai mudando a HUE de modo a ser dia/noite usar com imagem de forma a alterar os pixeis.

//desenhar os elementos do programa no ecra
void draw() {

  background(0, 80, 255); //background azul temporario
  c1.drawme(); //desenhar nuvem1
  c2.drawme(); //desenhar nuvem2
  c3.drawme(); //desenhar nuvem3
  c1.move(); //mover a nuvem1
  c2.move(); //mover a nuvem2
  c3.move(); //mover a nuvem3
  p1.drawme(); //desenhar o player1
  b1.drawme(); //desenhar as balas
  b1.moveme(); //mover as balas
  e1.drawme(); //desenhar o enimigo
  e1.move(); //Bmover o enimo
//  e1.healthcheck(); //verificar se o enimigo morreu ou nao
  score();
  b1.enemycheck(); //verificar se a bala atingiu o enimigo  
}

//tenho que validar se a bala atinge o objeto dentro do draw
void keyPressed() {
  //falta por a bala a mover-se.
  if (key == ' ') {
    p1.shoot();
  }

  if (key == 's'|| key == 'S') {
    p1.movedown();
  }

  if (key == 'w'|| key == 'W') {
    p1.moveup();
  }

  if (key == 'a'|| key == 'A') {
    p1.moveleft();
  }

  if (key == 'd'|| key == 'D') {
    p1.moveright();
  }
}

//codigo importado do exemplo do professor em ordem a obter movimento suave
/*void keyPressed() {
  if(key == 'j' || key == 'J') plane.left = true;
  if(key == 'l' || key == 'L') plane.right = true;
  if(key == 'i' || key == 'I') plane.up = true;
  if(key == 'k' || key == 'K') plane.down = true;
}
void keyReleased() {
  if(key == 'j' || key == 'J') plane.left = false;
  if(key == 'l' || key == 'L') plane.right = false;
  if(key == 'i' || key == 'I') plane.up = false;
  if(key == 'k' || key == 'K') plane.down = false;
}
*/


//acresventar pontuacao na tabela
void score() {
  if (b1.enemycheck()) {
    score++;
    println("hit" + score);
  }
}

//tabela de pontuacao
void highscore() {
}

//no more lifelines calls this.
void gameOver() {
}
//going through all the lifelines and leves without dying, calls this.
void gameWon() {
}

//if the player loses the level this gets called and he loses a lifeline
void gameLost() {
}
