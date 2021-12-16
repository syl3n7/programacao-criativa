// Importar G4P 
import g4p_controls.*;

//inicializar objetos
Menu m;
CloudsGen c1;
CloudsGen c2;
CloudsGen c3;
Player p1;
Bullets b1;
Enemy e1;
int score = 0;

//codigo apenas corrido 1x (inicio do programa)
void setup() {

  fullScreen(P2D); //utilizado para por o canvas em full screen

  rectMode(CENTER); //função usada para centrar os rectângulos

  frameRate(25); //especificar framerate a usar

  //menu start
  m = new Menu(width/2, height/2);
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


//quero adicionar um background que vai mudando a HUE de modo a ser dia/noite.

//desenhar os elementos do programa no ecra
void draw() {

//menu calls
  m.start();

}

//Customizar o GUI
public void customGUI(){

}

//tenho que validar se a bala atinge o objeto dentro do draw
void keyPressed() {
  //falta por a bala a mover-se.
  if (key == ' ') {
    p1.shoot();
  }

  if(key == 's'|| key == 'S') p1.moveDown = true;
  if(key == 'w'|| key == 'W') p1.moveUp = true;
  if(key == 'a'|| key == 'A') p1.moveLeft = true;
  if(key == 'd'|| key == 'D') p1.moveRight = true;

}

void keyReleased() {

  if(key == 's'|| key == 'S') p1.moveDown = false;
  if(key == 'w'|| key == 'W') p1.moveUp = false;
  if(key == 'a'|| key == 'A') p1.moveLeft = false;
  if(key == 'd'|| key == 'D') p1.moveRight = false;

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

void mousePressed() {
  if(m.state == true) m.state = false;
}
