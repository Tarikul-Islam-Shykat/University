/*
arduino 5v -> sensor vcc [pin 1]
arduino gnd -> sensor gnd[pin 4]
arduino pin 13-> sensor echo[pin 3]
arduino pin 12 -> sensor trig[pin 2]
*/ 

// sonar sensor 1
const int echo = 10;
const int trig = 9;
long duration = 0;
long distance = 0;

// sonar sensor 2 
const int echo2 = 12;
const int trig2 = 11;
long duration2 = 0;
long distance2 = 0;

int LED1 = 2;
int buzzer = 2;

int ir = 8;
int ir2 = 13;

int fire = 7;
void setup() {
  pinMode(trig, OUTPUT);
  pinMode(echo, INPUT);
  
  pinMode(trig2, OUTPUT);
  pinMode(echo2, INPUT);

 

  pinMode(LED1, OUTPUT);

  //ir
  pinMode(ir, INPUT);
  pinMode(ir2, INPUT);

  pinMode(fire, INPUT);
  
  
  Serial.begin(9600);
}


 

void loop() {
  
  digitalWrite(trig, LOW);
  delayMicroseconds(2);
  digitalWrite(trig, HIGH);
  delayMicroseconds(10);
  digitalWrite(trig, LOW);
  duration=pulseIn(echo, HIGH);
  distance = duration * 0.034/2;

  digitalWrite(trig2, LOW);
  delayMicroseconds(2);
  digitalWrite(trig2, HIGH);
  delayMicroseconds(10);
  digitalWrite(trig2, LOW);
  duration2=pulseIn(echo2, HIGH);
  distance2 = duration2 * 0.034/2;
  
  //Serial.println("Distance : ");
 // Serial.println(distance2);

  
  if(distance > 0 && distance <=3 )
  {
   // Serial.println("Distance : ");
    //Serial.println(distance);
    digitalWrite(LED1, HIGH);    // turn on LED1 
    delay(200);
    digitalWrite(LED1, LOW); 
    digitalWrite(buzzer, LOW); 
    }
    
  if(distance2 > 0 && distance2 <=3 )
  {
    //Serial.println("Distance : ");
    //Serial.println(distance2);
    digitalWrite(LED1, HIGH);    // turn on LED1 
    delay(200);
    digitalWrite(LED1, LOW); 
    digitalWrite(buzzer, LOW); 
    }

    if(digitalRead(ir) == LOW)
    {
      digitalWrite(LED1, HIGH);    // turn on LED1 
      delay(200); 
      digitalWrite(LED1, LOW); 
      digitalWrite(buzzer, LOW);
    }
    else if(digitalRead(ir) == HIGH)
    {
      digitalWrite(LED1, LOW); 
      delay(200); 
      digitalWrite(LED1, LOW); 
      digitalWrite(buzzer, LOW);
    }

    if(digitalRead(ir2) == LOW)
    {
      digitalWrite(LED1, HIGH);    // turn on LED1 
      delay(200); 
      digitalWrite(LED1, LOW); 
      digitalWrite(buzzer, LOW);
    }
    else if(digitalRead(ir2) == HIGH)
    {
      digitalWrite(LED1, LOW); 
      delay(200); 
      digitalWrite(LED1, LOW); 
      digitalWrite(buzzer, LOW);
    }


  // fire
  //nt fireVal = digitalRead(fire);
  //Serial.println(fireVal);
  if(digitalRead(fire) == 0){
      digitalWrite(LED1, HIGH);    // turn on LED1 
      delay(200);
      digitalWrite(LED1, LOW); 
      digitalWrite(buzzer, LOW);
      
    }
    



}
