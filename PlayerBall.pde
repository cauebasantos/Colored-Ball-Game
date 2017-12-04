class PlayerBall extends Ball {

  int len;
  Position[] pos;


  PlayerBall(float x, float y, float d) {
    super(x, y, d);
    c = color(x, 0, y);

    len = 50;

    pos  = new Position[len];


    //initialize
    for (int i = 0; i < pos.length; i++) {
      pos[i] = new Position(x, y);
    }
  }

  void update() {

    for (int i = 0; i < pos.length - 1; i++) {
      pos[i].x = pos[i + 1].x;
      pos[i].y = pos[i + 1].y;
    }

    this.pos[pos.length - 1].x = mouseX;
    this.pos[pos.length - 1].y = mouseY;
  }

  void recolor(color c) {
    this.c = c;
  }


  void show() {

    for (int i = 0; i < pos.length; i++) {
      ellipseMode(CENTER);
      noStroke();
      //fill(255 - i*10, 255 -i*10, 255 -i*10);
      fill(c, (i + 1) * float(255/(len-1)));
      ellipse(pos[i].x, pos[i].y, i * d/pos.length, i* d/pos.length);
    }
  }
}