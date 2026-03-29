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
  // set pins for current cycle
  w_en = digitalRead(writePin);
  if (w_en == HIGH) {
    for (int i = 0; i <= 17; i++){
      pimMode(i, INPUT);
    }
  }

  else {
    for (int i = 0; i <= 17; i++){
      pinMode(i, OUTPUT);
    }
  }
  
}
