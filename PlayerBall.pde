class PlayerBall extends Ball {
  float px, py;

  PlayerBall(float x, float y, float d) {
    super(x, y, d);
    setColor(color(x, 0, y));
    px = x;
    py = y;
  }

  void update() {
    this.px = this.x;
    this.py = this.y;
    this.x = mouseX;
    this.y = mouseY;
  }

  void show() {
    super.setColor(color(x, 0, y));
    fill(c);
    triangle(px, py, x + 15, y + 15, x - 15, y - 15);
    super.show();
  }
}