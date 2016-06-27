void setup() {
  size(800, 600);
}
void draw() { 
  drawCircle(width/2, height/2, 100);
}
void drawCircle(float x, float y, float r) {
  for (int i = 0; i <= 360; i ++) {   
    pushMatrix();  
    translate(x, y);
    rotate(radians(i));
    strokeWeight(2);
    stroke(int(random(50,100)),int(random(170,220)),int(random(20,70)));
    point(0, r);   
    popMatrix();
  }
}