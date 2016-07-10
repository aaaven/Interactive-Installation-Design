import toxi.geom.*;
import controlP5.*;

ArrayList ballArray;   //declare new arraylist

ControlP5 myp5;


float sepatateMagnitude =5.0;
float cohesionMagnitude =0.5;
float alignMagnitude =2.0;

void setup() {
  size(720, 720);
  smooth();

  ballArray = new ArrayList();   
  //initialize the new arraylist

    myp5 = new ControlP5(this);
  myp5.addSlider("sepatateMagnitude")
    .setPosition(10, 25)
      .setRange(1, 15)
        ;

  myp5.addSlider("cohesionMagnitude")
    .setPosition(10, 45)
      .setRange(0.01, 2)
        ;
        
          myp5.addSlider("alignMagnitude")
    .setPosition(10, 65)
      .setRange(1, 15)
        ;


  for (int i = 0; i < 100; i++) {

    Vec3D startPoint = new Vec3D (random(0, width), random(0, height), 0);
    Ball myBall = new Ball(startPoint); 
    //declare and initialize instance (from class Ball), from i = 0 to 99

    ballArray.add(myBall);
    //add 100 instances to array list
  }
}

void draw() {

  background(0);
  for (int i = 0; i < ballArray.size (); i++) {

    Ball mb = (Ball) ballArray.get(i);
    //call function one object by one object

    mb.run(); //main function "run"
  }
}

