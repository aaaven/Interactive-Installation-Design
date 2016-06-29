int y = 400;
int b = 400;
void setup()
{
  size(800,600);
  frameRate(40);
}
void draw() {
  background(0);
  textSize(36);
  fill(255,random(0,255));
  text("Flashy bike", 280, 50);
  
for (int x=0; x<700; x+=10){
    fill(#0891FF,random(0,255));
    stroke(0);
    ellipse(x, y, 300, 300);
    fill(#08FFB3,random(0,255));
    stroke(0);
    ellipse(x, y, 250, 250);
    fill(#97FF08,random(0,255));
    stroke(0);
    ellipse(x, y, 200, 200);
    fill(#FFF308,random(0,255));
    stroke(0);
    ellipse(x, y, 150, 150);
    fill(#FFA908,random(0,255));
    stroke(0);
    ellipse(x, y, 100, 100);
    fill(#FF0808,random(0,255));
    stroke(0);
    ellipse(x, y, 50, 50);
  }

  for (int a=0; a<100; a+=10){
    fill(#0891FF,random(0,255));
    stroke(0);
    ellipse(a, b, 300, 300);
    fill(#08FFB3,random(0,255));
    stroke(0);
    ellipse(a, b, 250, 250);
    fill(#97FF08,random(0,255));
    stroke(0);
    ellipse(a, b, 200, 200);
    fill(#FFF308,random(0,255));
    stroke(0);
    ellipse(a, b, 150, 150);
    fill(#FFA908 ,random(0,255));
    stroke(0);
    ellipse(a, b, 100, 100);
    fill(#FF0808 ,random(0,255));
    stroke(0);
    ellipse(a, b, 50, 50);
  }
  stroke(255,random(0,255));
  strokeWeight(20);
  line(100, 400, 700, 400);

  stroke(255,random(0,255));
  strokeWeight(20);
  line(200, 200, 600, 200);

  stroke(255,random(0,255));
  strokeWeight(20);
  line(550, 100, 700, 400);

  stroke(255,random(0,255));
  strokeWeight(20);
  line(200, 200, 100, 400);
  
  stroke(255,random(0,255));
  strokeWeight(20);
  line(500, 100, 600, 100);
}