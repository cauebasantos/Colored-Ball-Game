class Ball {

  Position pos;
  float d;

  color c;

  Ball(float x, float y, float d, color c) {
    pos = new Position(x, y);
    this.d = d;
    this.c = c;
  }

  Ball(float x, float y, float d) {
    pos = new Position(x, y);
    this.d = d;
  }
  
  void show() {
    ellipseMode(CENTER);
    noStroke();
    fill(c);
    ellipse(pos.x, pos.y, d, d);
  }
}