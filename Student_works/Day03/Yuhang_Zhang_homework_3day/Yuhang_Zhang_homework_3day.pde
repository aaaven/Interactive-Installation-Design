

void setup(){
  size(1500,800);
  background(0);
  
  
  
}

void draw(){
  
  if(mousePressed){
  ellipse(mouseX,mouseY,mouseX,mouseY);
  fill(255);
  }
  if(keyPressed && mousePressed){
    ellipse(mouseX,mouseY,100,100);
    fill(0);
    noStroke();
  
}
}