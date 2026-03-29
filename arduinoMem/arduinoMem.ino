/* TO-DO:
  -Pin setup
  -Memory data structure setup
  -Read/writeability
*/

#include <EEPROM.h>

char address;

void setup() {
  // put your setup code here, to run once:
  for (int i = 0 ; i < EEPROM.length(); i++) {
    EEPROM.write(i, 0);
  }
}

void loop(char address) {
  // put your main code here, to run repeatedly:
  short data = myMem[address - '0'];
}
