void setup() {
  size(800, 300);
  rectMode(CENTER);
}
void draw() {
  background(0);
  int a = int(random(0, 5));
  if (a ==1) {
    ellipse(width/2, height/2, 100, 100);
  } else {
    rect(width/2, height/2, 100, 100);
  }  
  if (a > 2) {
    ellipse(width/2+100, height/2, 100, 100);
  } else {
    rect(width/2+100, height/2, 100, 100);
  }
  if (a != 3) {
    ellipse(width/2-100, height/2, 100, 100);
  } else {
    rect(width/2-100, height/2, 100, 100);
  }
  if (a != 3 && a >2) {
    ellipse(width/2-200, height/2, 100, 100);
  } else {
    rect(width/2-200, height/2, 100, 100);
  }
  if (a >3 || a <2) {
    ellipse(width/2+200, height/2, 100, 100);
  } else {
    rect(width/2+200, height/2, 100, 100);
  }
  println(a);
}