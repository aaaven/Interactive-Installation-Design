void setup() {
  size(800, 600);
  noStroke();
}
void draw() {
  background(0);
  int b = int(random(0, 3));
  switch (b) {
  case 0:
    //b=0,do something
    ellipse(width/2, height/2, 100, 50);
    break; 
  case 1:
    //b=1,do something
    rectMode(CENTER);
    rect(width/2, height/2, 100, random(50,100));
    break;
  case 2:
    //b=2,do something
    ellipse(width/2, height/2, 50, 100);
    break;
  }
  println(b);
}