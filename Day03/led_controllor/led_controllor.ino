
/*create by Aven at April 17th for make design interact,
you can find more about this class on makedesigninteract.wordpress.com*/

int pushButton = 2;
int buttonState = 0;
int yellow = 3;
int green = 4;
int blue = 5;

void setup() {
  // initialize serial communication at 9600 bits per second:
  Serial.begin(9600);

  // make the pushbutton's pin an input:
  pinMode(pushButton, INPUT);
  //make the yellow,green,blue,(3,4,5) pin as output:
  pinMode(yellow, OUTPUT);
  pinMode(green, OUTPUT);
  pinMode(blue, OUTPUT);
}


void loop() {
  // read the input pin:
  buttonState = digitalRead(pushButton);
  // print out the state of the button:
  if (buttonState == 0) {
    digitalWrite(yellow, HIGH); //yellow on 
    digitalWrite(green, HIGH); //green on
    digitalWrite(blue, LOW);//blue off
  } else {
    digitalWrite(yellow, HIGH);//yellow on
    digitalWrite(green, LOW);//green low
    digitalWrite(blue, HIGH);//blue on

  }
  Serial.println(buttonState);
  delay(1);        // delay in between reads for stability
}



