class Ball {

  float x, y;
  float d;

  color c;

  Ball(float x, float y, float d, color c) {
    this.x = x;
    this.y = y;
    this.d = d;
    this.c = c;
  }

  Ball(float x, float y, float d) {
    this.x = x;
    this.y = y;
    this.d = d;
  }


  void setColor(color c) {
    this.c = c;
  }

  void show() {
    ellipseMode(CENTER);
    noStroke();
    fill(c);
    ellipse(x, y, d, d);
  }
}