
float yanzhuSpeed = 0.1;
int yanzhuL = 100;
int wutiL=200;
float wutiSpeed = 0.1;
int yanzhuR =-100;
int wutiR = -200;





void setup() {
  size(1200, 800);
  frameRate(5);
  noStroke();
  frameRate(2);
}

void draw() {
  pushMatrix();//queren yuanshi zuobiao
  
  background(0);//beijing
  

  fill(255);
  rectMode(CENTER);
  ellipse(width/2-200, height/2, 250, 250);//zuo yanjing
  translate(width/2-200, height/2);



  //zuo yanzhu
  rotate(yanzhuSpeed);
  fill(0);
  
  ellipse(yanzhuL, 0, 105, 105);//zuo yanzhu
  yanzhuSpeed += 1;
  
  //wuti
  fill(255);
  rotate(wutiSpeed);
  ellipse(wutiL, 0, 60, 60);//wuti
  wutiSpeed +=1;
  
  popMatrix();//huifu yuanshi zuobiao
  
  
  ellipse(width/2+200, height/2, 250, 250);
  translate(width/2+200,height/2);
  rotate(yanzhuSpeed);
  fill(0);
  ellipse(yanzhuR, 0, 105, 105);
  fill(255);
  rotate(wutiSpeed);
  ellipse(wutiR, 0, 60, 60);//wuti
  wutiSpeed +=1;
  
  


  

  //zuobian yanjing
}