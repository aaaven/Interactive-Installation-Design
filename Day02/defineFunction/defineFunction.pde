int x = 100;
int y = 100;
int cSize = 100;
int xPlus = 5;
int yPlus = 5;

void setup() {
  size(800, 600);
  smooth();
  strokeWeight(0);
}
void draw() {
  background(0);
  circles(2*cSize, x, y);//circles(size,x,y);  size: max circle size ; 
  //bournce 
  x+= xPlus;
  y+= yPlus;
  if (x > width - cSize || x < cSize) {
    xPlus *= -1;
  }
  if (y > height - cSize || y < cSize) {
    yPlus *= -1;
  }
}
void circles(int circleSize, int x, int y) { 
  for (int j = 0; j < circleSize; j += circleSize/20) {
    int r = circleSize -j;
    fill(int(random(50, 200)), int(random(0, 100)), int(random(150, 200)), 100);
    ellipse(x, y, r, r);
  }
}