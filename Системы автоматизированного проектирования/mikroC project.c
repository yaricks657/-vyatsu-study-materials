#include "drv.h"

#define p0 0
#define p1 1
#define p2 2

//#define key_down '#'
const char W = '#'; // ??? ??????? ?????? // ?????????
char key; // ????????????? ??????? ??????
char cur_state; // ????????????? ???????????? ?????????
char t = 5; // ???????? ????????
char tr = 5; // ????? ???????? ???????
int m = 0; //????? ?????
int ms = 0;
int currentTask = 0;
int currentTaskIndex = 0;
int maxTask = 1;
char (*stringArray[10])[15];

void setControlWordLCD(unsigned char word) {
 P3_5_bit = 0;
 P3_6_bit = 0;
 P2 = word;
 P3_7_bit = 0;
 P3_7_bit = 1;
 //delayMs(100);
}

void printSymbolLCD(unsigned char simbol) {
 P3_5_bit = 0;
 P3_6_bit = 1;
 P2 = simbol;
 P3_7_bit = 0;
 P3_7_bit = 1;
 //delayMs(100);
}

void printStringLCD(char aSymbol [], unsigned int nSymbol) {
 char i;
 for (i=0; i < nSymbol; i++) {
 printSymbolLCD(aSymbol[i]);
 }
}

void setPointLCD (char iLine, char point) {
 if (iLine == 0) {
 setControlWordLCD(0x80 + point);
 }
 else {
 setControlWordLCD(0xC0 + point);
 }
}

void DelayMs(unsigned int m) { //
 unsigned char a; //
 for (ms = 0; ms != m; ms++) {
  for (a = 0; a != 120; a++); //
  WMCON.WDTRST = 1; //
 }
}

void main(void){
 cur_state=0;
 int i=0;
 for (i=0;i<15;i++) {
         stringArray[currentTask][i] rd_EEPROM(20+i);
}
 while(true){
  switch (cur_state) {
  key = ScanKbd();
   case p0:
   int i;
    for (i=0;i<currentTaskIndex;i++){
        if(stringArray[currentTask][i]!=''){
          printSymbolLCD(stringArray[currentTask][i]);
          }
    }
     switch (key) {
            case '#':
                 cur_state = p1;
                 currentTask = currentTask +1;
                 if(currentTask > maxTask){
                   currentTask = 0;
                 }
                 break;
            case 'del':
                for (int i = 0; i < currentTaskIndex; i++){
                   if(stringArray[currentTask][i] != ''){
                    stringArray[currentTask][i] = '';
                   }
                 }
                 currentTaskIndex = 0;
                 maxTask = maxTask -1;
                 if(maxTask<0){
                 maxTask = 0;
                 }
                 break;
           case '4':
                 currentTask = currentTask -1;
                 if(currentTask<0){
                 currentTask = maxTask;
                 }
                 break;
           case '6':
                  currentTask = currentTask +1;
                  if(currentTask>maxTask){
                  currentTask =0;
                  }
                 break;
    }
     break;
   case p1:
     switch (key) {
            case '#':
                 cur_state = p0;
                 maxTask = maxTask + 1;
                 int i;
                 for (i = 0; i < currentTaskIndex; i++){
                         wr_EEPROM(20+i,stringArray[currentTask][currentTaskIndex])
                 }
                 currentTaskIndex = 0;
                 if(maxTask > 10){
                            maxTask = 10 ;
                 }
                 break;
              case 'del':
                 currentTaskIndex = currentTaskIndex - 1;
                 if(currentTaskIndex >= 0){
                   stringArray[currentTask][currentTaskIndex] = '';
                   currentTaskIndex = 0;
                 }else{
                   stringArray[currentTask][currentTaskIndex] ='';
                 }
                 break;
            default:
                    if(currentTaskIndex <15){
                        stringArray[currentTask][currentTaskIndex] = key;
                        currentTaskIndex = currentTaskIndex +1;
                        int i;
                        for (i = 0; i < currentTaskIndex; i++){
                            if(stringArray[currentTask][i] != ''){
                            printSymbolLCD(stringArray[currentTask][i]);
                            }
                        }
                    }
                    break;
    }
    break;
  }
  DelayMs(100);
 }
}