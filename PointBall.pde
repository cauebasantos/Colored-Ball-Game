class PointBall extends Ball {


  PointBall(float d) {
    super(random(d/2, width - d/2), random(d/2, height - d/2), d);
    c = color(random(0, 255), random(0, 255), random(0, 255));
  }
  
  void reset(){
    this.pos.x = random(d/2, width - d/2);
    this.pos.y = random(d/2, height - d/2);
    this.c = color(random(0, 255), random(0, 255), random(0, 255));
  }
}