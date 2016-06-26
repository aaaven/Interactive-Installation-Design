int sunR = 200;
float sunSpeed = 0;
float sunSpeedPlus = 0.03;
int earthR = 80;
float earthSpeed = 0;
float earthSpeedPlus = 0.1;
int moonR = 50;
float moonSpeed = 0;
float moonSpeedPlus = 0.2;
void setup() {
  size(800, 600);
  noStroke();
}
void draw() {
  //background(0);
  //draw the center of universe 
  fill(0,0,180);
  rectMode(CENTER);
  rect(width/2, height/2, 20, 20);
  
  //draw sun
  translate(width/2,height/2);
  rotate(sunSpeed);
  fill(255,0,0);
  //ellipse(sunR,0,20,20);
  sunSpeed += sunSpeedPlus;
  
  //draw earth
  translate(sunR,0);
  rotate(earthSpeed);
  fill(0,0,255);
  ellipse(earthR,0,15,15);
  earthSpeed += earthSpeedPlus;
  
  //draw moon
  translate(earthR,0);
  rotate(moonSpeed);
  fill(120);
  ellipse(moonR,0,10,10);
  moonSpeed += moonSpeedPlus;
  
  if (keyPressed){
    saveFrame("aven-######.png"); 
  }
}