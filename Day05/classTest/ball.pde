class Ball {//create ball class
  float xPos, yPos, bSize, xSpeed, ySpeed;
  color fColor = color(0);
  Ball(float a, float b, float c, float d, float e) {
    xPos = a;
    yPos = b;
    bSize = c;
    xSpeed = d;
    ySpeed = e;
  }
  void run() {
    move();
    display();
    bounce();
    gravity();
  } 
  void move() {//move 
    xPos += xSpeed;
    yPos += ySpeed;
  }
  void bounce() {
    if (xPos>width-bSize||xPos < bSize) {//bounce
      xSpeed *= -1;
      fColor = color(int(random(50, 150)), int(random(170, 200)), int(random(10, 70)));
    }
    if (yPos>height-bSize||yPos < bSize) {//bounce
      ySpeed *= -1;
      fColor = color(int(random(50, 150)), int(random(70, 200)), int(random(10, 170)));
    }
  }
  void gravity() {
    ySpeed += 0.2;
  }
  void display() {
    noStroke();
    fill(fColor);
    smooth();
    ellipse(xPos, yPos, bSize, bSize);
  }
}