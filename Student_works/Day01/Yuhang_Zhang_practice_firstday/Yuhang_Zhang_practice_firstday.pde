 //<>//
void setup(){
  size(800,800);
  
  
  
}

void draw(){
  //draw the circles at the bottom
  //img = loadImage("architecture.jpg");
  //image(img,0,0);
  background(random(250,255),random(150,255),random(0,80));
  ellipseMode(CENTER);
  noFill();
  stroke(255,0,140,200);
  strokeWeight(50);
  ellipse(400,400,1000,1000);
  ellipse(400,400,800,800);
  ellipse(400,400,600,600);
  ellipse(400,400,400,400);
  ellipse(400,400,200,200);
  //noFill();
  //stroke(0,0,255);
  //strokeWeight(50);
  //arc(400,400,200,200,0,radians(90));
  
  //draw the second circles to make them overlap
  
  stroke(220,10,200,100);
  ellipse(400,400,1050,1050);
  ellipse(400,400,850,850);
  ellipse(400,400,650,650);
  ellipse(400,400,450,450);
  ellipse(400,400,250,250);
  
  //add some text
 
  textSize(22);
  fill(255,255,255);
 
  text("PROCESSING + ARDUINO",475,685);
  textSize(19);
  text("First prctice",475,715);
  text("By Yuhang Zhang",475,738);
  text("June 25th In Shanghai",475,758);
  stroke(255,255,255);
  strokeCap(SQUARE);
  strokeWeight(2);
  line(463,664,463,761);
  
}