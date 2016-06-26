void setup() {
  size(400, 300);
  smooth();
  strokeWeight(0);
}

void draw() {
  //for (int i = 0; i <width; i +=10) {
  //  line(i, 0, i, height);
  //} 
  for (int j = 0; j < width; j += 30) {
    int r = width -j;
    fill(int(random(50, 200)),int(random(0, 100)),int(random(150, 200)),100);
    ellipse(width/2, height/2, r, r);
  }
}