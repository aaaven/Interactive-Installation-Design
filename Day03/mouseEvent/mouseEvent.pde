//int bgColor = 0;
color backgroundColor = color(0,0,0);
boolean aven = true;
void setup() {
  size(800, 600);
}

void draw() {
  //background(bgColor);
  background(backgroundColor);
}

void mousePressed() {
  //bgColor = 255;  //press mouse change background to white, but cannot change back
  //bgColor = 255 - bgColor; //press switch between black and white 
 
  aven = !aven;
  if (aven == true) {
    backgroundColor = color(int(random(0, 255)),int(random(0, 255)),int(random(0, 255)));
  } else {
    backgroundColor = color(0,0,0);
  }
}