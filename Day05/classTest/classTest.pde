Ball[]  balls = new Ball[15000];
void setup(){
 size(1280,1024); 
 for(int i = 0; i < balls.length; i ++){//create a ball called the ball every round
   balls[i] = new Ball(random(30,width-30),random(30,height-30),3,random(3,18),random(1,17));   
 }
}
void draw(){
  //background(255);
  for(int i = 0; i < balls.length; i++){
  balls[i].run();
  }
}