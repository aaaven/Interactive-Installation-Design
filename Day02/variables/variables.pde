void setup() { //put your setting up code here, run once
  size(800, 600);
  background(255);
}
void draw() {//loop
  noStroke();
  int r = int(random(0, 255));
  int g = int(random(0, 255));
  int b = int(random(0, 255));
  fill(r, g, b, 50); 
  //fill(int(random(0, 255)),int(random(0, 255)),int(random(0, 255)),50);
  float x = random(0, width);
  float y = random(0, height);
  float R = random(30,60);
  ellipse(x, y, R, R); 
  //float R = random(30, 60);
  //ellipse(x, y, R, R);

}