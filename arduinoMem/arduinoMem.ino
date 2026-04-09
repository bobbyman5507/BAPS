short int mem[64];
int w_en;
const int writePin = 18;

void setup() 
{
  // writePin, always input
  pinMode(writePin, INPUT);

  for (int i = 1; i <= 17; i++) {
    pinMode(i, INPUT);
  }
}

void loop() {
  
  //every pin has 1 bit

  // add all bits together from pins
  
  

  // write to memeory
  short int data;

  for (int i = 1; i <= 17; i++){
    if(digitlRead(i) == HIGH){
      data(i) = 1;
    } else {
      data(i) = 0;
    }
  }

  mem[] = data;

  // read from memory



  // set pins for next cycle
  w_en = digitalRead(writePin);
  if (w_en == HIGH) {
    for (int i = 1; i <= 17; i++){
      pimMode(i, INPUT);
    }
  } else {
    for (int i = 1; i <= 17; i++){
      pinMode(i, OUTPUT);
    }
  }
}
