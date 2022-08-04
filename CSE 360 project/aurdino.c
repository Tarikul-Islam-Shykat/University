/*
arduino 5v -> sensor vcc [pin 1]
arduino gnd -> sensor gnd[pin 4]
arduino pin 13-> sensor echo[pin 3]
arduino pin 12 -> sensor trig[pin 2]
*/ 

const int echo = 10;
const int trig = 9;

long duration = 0;
long distance = 0;


int LED1 = 2;
int buzzer = 2;

void setup() {
  pinMode(trig, OUTPUT);
  pinMode(echo, INPUT);
  pinMode(LED1, OUTPUT);
  
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

  if(distance == 0){
  
  }
  if(distance > 0 && distance <3 )
  {
    Serial.println("Distance : ");
    Serial.println(distance);
    digitalWrite(LED1, HIGH);    // turn on LED1 
    delay(200);
    digitalWrite(LED1, LOW); 

    digitalWrite(buzzer, LOW); 
    }

    if(distance > 3 && distance <10 )
  {
    Serial.println("Distance : ");
    Serial.println(distance);
    }
}
