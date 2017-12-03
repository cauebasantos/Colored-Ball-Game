class PointBall extends Ball {


  PointBall(float d) {
    super(random(d/2, width - d/2), random(d/2, height - d/2), d);
    setColor(color(random(0, 255), random(0, 255), random(0, 255)));
  }
}