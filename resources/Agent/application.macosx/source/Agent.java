import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import toxi.geom.*; 
import controlP5.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class Agent extends PApplet {




ArrayList ballArray;   //declare new arraylist

ControlP5 myp5;


float sepatateMagnitude =5.0f;
float cohesionMagnitude =0.5f;
float alignMagnitude =2.0f;

public void setup() {
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
      .setRange(0.01f, 2)
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

public void draw() {

  background(0);
  for (int i = 0; i < ballArray.size (); i++) {

    Ball mb = (Ball) ballArray.get(i);
    //call function one object by one object

    mb.run(); //main function "run"
  }
}

class Ball {

  //global varibles
  float radius = 15;
  Vec3D location = new Vec3D(0, 0, 0); 
  Vec3D speed = new Vec3D(random(-2, 2), random(-2, 2), 0);
  // Declare and inicilize new instance. Vec3D is a libary, has class named Vec3D. 
  Vec3D steer_ = new Vec3D();
  //constructors
  Ball(Vec3D location_) {
    location = location_; // only global varibles can be use in functions
  }

  //functions

  public void run() {
    display();
    move();
    bounce();
    //gravity();
    lineBetween();
    flock();
  }

  public void display() {
    fill(255);
    ellipse(location.x, location.y, radius, radius);
  }

  public void move() {

    speed.addSelf(steer_);
    speed.limit(2);
    location.addSelf(speed);
    //have the same function as x+= speedX (&y += speedY), function that toxi lib specially has.
  }

  public void bounce() {
    if (location.x < radius || location.x > width-radius) {
      speed.x = speed.x * -1;
    }
    if (location.y < radius || location.y > height - radius) {
      speed.y = speed.y * -1;
    }
  }

  public void gravity() {
    speed.y += 0.2f;
  }

  public void lineBetween() {
    for (int i = 0; i < ballArray.size (); i ++) {
      Ball newBallArray = (Ball) ballArray.get(i); 
      // declare and initilize new arraylist to store "other balls"
      float distance = location.distanceTo(newBallArray.location);
      //(Ball) as a class have "location" as its built in variable, use "." can acess to all its variables and functions  
      //newBallArray.location means its location(type Vec3D), (vectorA).distanceTo(vectorB) is a function to get distance
      if (distance >0 && distance < 5*radius) {
        stroke(255, 0, 0);
        strokeWeight(0.4f);
        line(location.x, location.y, newBallArray.location.x, newBallArray.location.y);
      }
    }
  }

  public void flock() {
    separate(sepatateMagnitude);
    cohesion(cohesionMagnitude);
    align(alignMagnitude);
  }

  public void separate(float magnitude) {
    Vec3D steer = new Vec3D();
    int count = 0;
    for (int i = 0; i < ballArray.size (); i ++) {
      Ball newBallArray = (Ball) ballArray.get(i); 
      // declare and initilize new arraylist to store "other balls"
      float distance = location.distanceTo(newBallArray.location);
      //(Ball) as a class have "location" as its built in variable, use "." can acess to all its variables and functions  
      //newBallArray.location means its location(type Vec3D), (vectorA).distanceTo(vectorB) is a function to get distance
      if (distance > 0 && distance < 2*radius) {
        Vec3D vecBetween = location.sub(newBallArray.location); //vector from close ball to itself
        vecBetween.normalizeTo(1.0f/distance);//scale it to make it a gradient, closer ball which bounce you further
        steer.addSelf(vecBetween);//add all closeby balls' influence together
        count ++;
      }
    }
    if (count > 0) {
      steer.scaleSelf(1.0f/count);//control
    }
    steer.scaleSelf(magnitude);
    steer_.addSelf(steer);
  }

  public void cohesion(float magnitude) {
    Vec3D sum = new Vec3D();
    int count = 0;
    for (int i = 0; i < ballArray.size (); i ++) {
      Ball newBallArray = (Ball) ballArray.get(i); 
      float distance = location.distanceTo(newBallArray.location);
      if (distance > 0 && distance < 8*radius) {
        sum.addSelf(newBallArray.location);
        count ++;
      }
    }
    if (count > 0) {
      sum.scaleSelf(1.0f/count);
    }
    Vec3D steer = sum.sub(location);
    steer.scaleSelf(magnitude);
    steer_.addSelf(steer);
  }
  
  public void align(float magnitude){
    Vec3D steer = new Vec3D();
    int count = 0;
    for (int i = 0; i < ballArray.size (); i ++) {
      Ball newBallArray = (Ball) ballArray.get(i); 
      float distance = location.distanceTo(newBallArray.location);
      if (distance > 0 && distance < 2*radius) {
        steer.addSelf(newBallArray.speed);
        count ++;
      }
    }
    if (count > 0) {
      steer.scaleSelf(1.0f/count);
    }
    steer.scaleSelf(magnitude);
    steer_.addSelf(steer);
    
  }
}

  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "Agent" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
