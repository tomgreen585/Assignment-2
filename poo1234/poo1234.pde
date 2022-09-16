Ball ball;
Bat bat;
Brick[][] brick;

void setup(){
  size(1000,700);
  ball = new Ball();
  bat = new Bat();
  brick = new Brick[6][6];
  for (int row = 0; row < 6; row++) {
    for (int col = 0; col < 6; col++) {
      int x = width / 8 + (col * (width/8));
      int y = width / 8 + (row * 30);
      brick[row][col] = new Brick(x, y, 8); 
    }
  } 
}

void draw(){
  background(0);
  ball.display();
  ball.checkBat(bat);
  bat.display();
   for(int i = 0; i < brick.length; i++){
     for(int j = 0; j < brick[0].length; j++){
       brick[i][j].display();
       brick[i][j].checkBall(ball);
     }
  }
}
    
void mousePressed(){
  ball.Vy -= 1;
  ball.canMove = true;
}
