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

  void run() {
    display();
    move();
    bounce();
    //gravity();
    lineBetween();
    flock();
  }

  void display() {
    fill(255);
    ellipse(location.x, location.y, radius, radius);
  }

  void move() {

    speed.addSelf(steer_);
    speed.limit(2);
    location.addSelf(speed);
    //have the same function as x+= speedX (&y += speedY), function that toxi lib specially has.
  }

  void bounce() {
    if (location.x < radius || location.x > width-radius) {
      speed.x = speed.x * -1;
    }
    if (location.y < radius || location.y > height - radius) {
      speed.y = speed.y * -1;
    }
  }

  void gravity() {
    speed.y += 0.2;
  }

  void lineBetween() {
    for (int i = 0; i < ballArray.size (); i ++) {
      Ball newBallArray = (Ball) ballArray.get(i); 
      // declare and initilize new arraylist to store "other balls"
      float distance = location.distanceTo(newBallArray.location);
      //(Ball) as a class have "location" as its built in variable, use "." can acess to all its variables and functions  
      //newBallArray.location means its location(type Vec3D), (vectorA).distanceTo(vectorB) is a function to get distance
      if (distance >0 && distance < 5*radius) {
        stroke(255, 0, 0);
        strokeWeight(0.4);
        line(location.x, location.y, newBallArray.location.x, newBallArray.location.y);
      }
    }
  }

  void flock() {
    separate(sepatateMagnitude);
    cohesion(cohesionMagnitude);
    align(alignMagnitude);
  }

  void separate(float magnitude) {
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
        vecBetween.normalizeTo(1.0/distance);//scale it to make it a gradient, closer ball which bounce you further
        steer.addSelf(vecBetween);//add all closeby balls' influence together
        count ++;
      }
    }
    if (count > 0) {
      steer.scaleSelf(1.0/count);//control
    }
    steer.scaleSelf(magnitude);
    steer_.addSelf(steer);
  }

  void cohesion(float magnitude) {
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
      sum.scaleSelf(1.0/count);
    }
    Vec3D steer = sum.sub(location);
    steer.scaleSelf(magnitude);
    steer_.addSelf(steer);
  }
  
  void align(float magnitude){
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
      steer.scaleSelf(1.0/count);
    }
    steer.scaleSelf(magnitude);
    steer_.addSelf(steer);
    
  }
}

