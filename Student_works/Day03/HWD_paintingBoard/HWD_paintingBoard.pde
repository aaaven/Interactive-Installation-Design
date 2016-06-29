int x1 = 80;  //w center
int y1 = 200; //w center
int x2 = 130;      //
int y2 = 350;
int x3 = 170;
int y3 = 290;
int x4 = 210;
int y4 = 350;
int r =  15;

float xPlus = 1;
float yPlus = 3;
float xPlus2 = 2;
float yPlus2 = -3;
float xPlus3 = 2;
float yPlus3 = 3;
float xPlus4 = 1;
float yPlus4 = -3;

void setup() {
  size(400, 600);
  frameRate(30);
  noStroke();
}

void draw() {
  rectMode(CENTER);
  fill(0, 20);
  rect(300, 500, 40, 30);
  fill(255);
  text("CLEAR", 280, 500);

  fill(0, 20);
  rect(200, 500, 40, 30);
  fill(255);
  textMode(CENTER);
  text("PAINT", 180, 500);
  if (mousePressed == true) {
    if (mouseX>180 && mouseX<220 && mouseY>485 && mouseY<515) {
      mousePressed = true ;
      drawW();
      println("paint");
    }
  }
  if (mousePressed == true) {
    if (mouseX>280 && mouseX<320 && mouseY>485 && mouseY<515) {
      background(255);
    }
  }
}

void drawW () {
  fill(255, 0, 0);
  ellipse(x1, y1, r, r);
  x1 += xPlus;
  y1 += yPlus;
  if (x1>130) { 
    xPlus = xPlus* -1;
    yPlus = yPlus* -1;
  }
  if (x1<80) { 
    xPlus=xPlus* -1;
    yPlus=yPlus* -1;
  }

  fill(255, 160, 37);
  ellipse(x2, y2, r, r);
  x2 += xPlus2;
  y2 += yPlus2;
  if (x2 >170) {
    xPlus2 = xPlus2 * -1;
    yPlus2 = yPlus2 * -1;
  }
  if (x2 <130) {
    xPlus2 = xPlus2 * -1;
    yPlus2 = yPlus2 * -1;
  }

  fill(255, 255, 0);
  ellipse(x3, y3, r, r);
  x3 += xPlus3;
  y3 += yPlus3;
  if (y3 > 350) {
    xPlus3 = xPlus3 * -1;
    yPlus3 = yPlus3 * -1;
  }
  if (y3 < 290) {
    xPlus3 = xPlus3 * -1;
    yPlus3 = yPlus3 * -1;
  }

  fill(0, 255, 0);
  ellipse(x4, y4, r, r);
  x4 += xPlus4;
  y4 += yPlus4;
  if (y4 < 200) {
    xPlus4 = xPlus4 * -1;
    yPlus4 = yPlus4 * -1;
  }
  if (y4 > 350) {
    xPlus4 = xPlus4 * -1;
    yPlus4 = yPlus4 * -1;
  }
}