class ScoreBar {
  
  float x, y;
  float lenght;
  float h;

  ScoreBar(float len) {
    x = 10;
    y = 10;
    h = 10;
    lenght = len;
  }

  void increase(float increment) {
    lenght += increment;
  }

  void show() {
    noStroke();
    for (float i = lenght; i > 0; i--) {
      fill(i*0.3 + mouseX*0.8, i*0.3 , i*0.3 + mouseY*0.8);
      rect(x, y, i, h);
    }
  }
}