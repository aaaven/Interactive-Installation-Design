PImage img;
color buttonColor = color(30, 80, 120);

void setup() {
  size(800, 600);
  imageMode(CENTER);
  img = loadImage("mousepointer.png");
  noStroke();
}
void draw() {
  background(255);
  //imageMode(CENTER);
  //image(img, width/2, height/2, 800, 600);
  rectMode(CENTER);
  //textMode(CENTER);
  fill(buttonColor);
  rect(width/2, height/2, 50, 20);
  fill(0);
  text("click me", width/2, height/2);
  // x:  width/2 - 25 < x < width/2 + 25
  // y:  height/2 -10 < y < height/2 + 10
  float xMin = width/2 - 25;
  float xMax = width/2 + 25;
  float yMin = height/2 - 10;
  float yMax = height/2 + 10;
  click(xMin, xMax, yMin, yMax);
  hover(xMin, xMax, yMin, yMax);
}
void click(float xMin, float xMax, float yMin, float yMax) {
  if (mousePressed == true) { // click or not
    if (mouseX > xMin && mouseX < xMax) { // x in range
      if (mouseY > yMin && mouseY < yMax) {//y in range
        println("mouse clicked");
        ellipse(width/2, 200, 100, 100);
      }
    }
  }
}
void hover(float xMin, float xMax, float yMin, float yMax) {
  if (mouseX > xMin && mouseX < xMax) { // x in range
    if (mouseY > yMin && mouseY < yMax) {//y in range
      println("mouse clicked");
      buttonColor = color (200, 250, 250);
      //ellipse(width/2, 500, 200, 200);
    }
  } else {
    buttonColor = color(30, 80, 120);
  }
}