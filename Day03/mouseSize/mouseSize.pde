PImage img;

void setup() {
  size(800, 600);
  imageMode(CENTER);
  img = loadImage("mousepointer.png");
}

void draw() {
  background(255);
  float mouseSpd = abs(mouseX - pmouseX);
  float speed = map(mouseSpd,0,260,50,260);
  image(img, mouseX, mouseY, speed, speed);

  println(mouseSpd);
}