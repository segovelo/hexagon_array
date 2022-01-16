class Polygon {
  int x;
  int y;
  int radius;
  int npoints;
  float angle;
  Polygon(int x, int y, int radius, int npoints, int angle) {
    this.x = x;
    this.y = y;
    this.radius = radius;
    this.npoints = npoints;
    this.angle = radians(angle);
  }

void render() {
  float step = TWO_PI / npoints;
  noFill();     
  beginShape();
  for (float a = 0; a < TWO_PI; a += step) {
    float sx = x + cos(a + angle) * radius;
    float sy = y + sin(a + angle) * radius;
    vertex(sx, sy);
  }
  endShape(CLOSE);
}

}
