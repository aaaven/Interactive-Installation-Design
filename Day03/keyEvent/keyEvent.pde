boolean aven = true;
void setup() {
  size(800, 600);
}

void draw() {
  /*
  if(a >3){
    sdlfkjasldfjk;
  }  
  if (a == 3){
    asjdflasdf;
  }  
  if(mousePressed == true){
   asdflasjdfljka; 
  }  
  */
}

void keyReleased() {
  aven = !aven;
  println(aven);
  if (aven == true) {
    ellipse(width/2, height/2, 100, 100);
  } else {
    background(0);
  }
}