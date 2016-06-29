import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class work extends PApplet {
  public void setup() {

background(12,182,105);
strokeWeight(50);
stroke(0,20);
fill(249,209,102);                
ellipse(960,540,600,600); //face
strokeWeight(8);
stroke(231,164,8);
fill(255,255,255);
ellipse(800,400,180,70); //eyes
ellipse(1120,400,180,70);//eyes
noStroke();
fill(148,105,5);
ellipse(730,400,30,30);        //eyeballs
ellipse(1050,400,30,30);       //eyeballs
noStroke();
fill(249,179,247);
ellipse(800,460,70,20);
ellipse(1120,460,70,20);
strokeWeight(18);
stroke(148,105,5);
noFill();
arc(960,580,430,430,0.6f,2.6f);      //mouse
strokeWeight(18);
stroke(0,99);
arc(800,300,105,80,3.5f,6);
arc(1120,300,105,80,3.5f,6);







    noLoop();
  }

  public void settings() { size(1920,1080); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "work" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
