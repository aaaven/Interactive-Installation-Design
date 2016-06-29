float mouthx;
float mouthy;
PImage img;


void setup () {
  size(1024, 768);
  text("Pacman", 100, 100);
  fill(255);
  img = loadImage("pac-man-ghosts.png");
  image(img, 0, 0);
}

void draw() { 
  translate(mouseX-250, mouseY-250); 
  background(0); 
  mouthy=350-mouseY+50;
  mouthx=150+mouseY+50;
  fill(255);
  text("Pacman", 100, 100);
  textSize(24);
  fill(255, 247, 0);
  ellipse(250, 250, 250, 250);
  fill(0);
  noStroke();
  triangle(250, 250, 600, mouthx, 600, mouthy);
  if (mouseY > 500) {
    mouthx=-mouthx;
  }
}