PlayerBall playerBall;
PointBall pointBall;
ScoreBar scoreBar;

float pointBall_len = 20;
float playerBall_len = 50;
float scoreBar_len = 10;
float scoreBar_increment = 5;

void setup() {
  size(640, 480);

  playerBall = new PlayerBall(width/2, height/2, playerBall_len);
  pointBall = new PointBall(pointBall_len);
  scoreBar = new ScoreBar(scoreBar_len);

  smooth();
  frameRate(30);
}

void draw() {
  background(51);

  //draw the score bar
  scoreBar.show();
  
  //draw the point ball
  pointBall.show();

  //draw the ball
  playerBall.update();
  playerBall.show();

  //check if the ball colide with the point
  checkCollisionBallPoint();
}


void checkCollisionBallPoint() {

  float distance = dist(playerBall.x, playerBall.y, pointBall.x, pointBall.y);

  if (distance < playerBall.d / 2) { //if there is a colision
    //create a new point
    pointBall = new PointBall(pointBall_len);
    scoreBar.increase(scoreBar_increment);
  }
}
