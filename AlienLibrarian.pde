class AlienLibrarian{
Timer timer = new Timer();
boolean objectiveComplete = false;
Config config = new Config();
int foundBookYippee = (int) random(0,4);

public void play(){
//timer.startTimer(3000, config.miniTimerMult);
int[] books = new int[5];

for(int i = 0; i < books.length; i++){
  //makes 5 rect. how do we differentiate(hope i spelt right) the different  "books"
rect(i + random(100, 255), i + random(10, 250), 200, 50);
}



}
/*if(timeExpired){
 if(objectiveComplete) {
  return "WIN" ;
 }else
 {return "LOSE"; 
 }
 }
*/
}
