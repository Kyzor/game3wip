public class Physics{
  
//Need x & y coords, turned into a vector
PVector position;
PVector velocity;
PVector acceleration;
double weight;
PVector gravity;
int windowHeight; //temp
int windowWidth; //temp
int topSpeed;

public Physics(int xPlayer, int yPlayer, int xSpeed, int ySpeed, double mass){
  position = new PVector(xPlayer, yPlayer);
  velocity = new PVector(xSpeed, ySpeed);
  acceleration = new PVector(2, 4);
  gravity = new PVector(1, 2);
  weight = mass;
  windowHeight = 1080;
  windowWidth = 1920;
  topSpeed = 5;
}


public void movement(){
  velocity.add(acceleration);
  position.limit(topSpeed);
  position.add(velocity);
}

public void checkEdge() {
  if((position.x >= windowWidth) || (position.x < 0)) {
    position.x = 0;
  } 
  
  if((position.y >= windowHeight) || (position.y < 0)) {
    position.y = 0;
  }
}

public void show(){
  circle(position.x, position.y, 40);
}

//Need to add Gravity

//Need to add turning feed back




//Need to add acceleration/delearation, and friction





}
