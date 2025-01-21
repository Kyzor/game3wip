public class Physics{

//Need x & y coords, turned into a vector
PVector position;
PVector velocity;
PVector acceleration;
float weight;
PVector gravity;
int windowHeight; //temp
int windowWidth; //temp
int topSpeed;


public Physics(int xPlayer, int yPlayer, int xSpeed, int ySpeed, float mass){
  position = new PVector(xPlayer, yPlayer);
  velocity = new PVector(xSpeed, ySpeed);
  acceleration = new PVector(0, 0);
  gravity = new PVector(0, 0.1);
  weight = mass;
  windowHeight = 720;
  windowWidth = 1080;
  topSpeed = 1;
}


public void movement(){
  velocity.add(acceleration);
  position.add(velocity);
  acceleration.mult(0);
  velocity.limit(topSpeed);
  //topSpeed = 8;
  
}

public void checkEdge() {
  if((position.x >= windowWidth - 20) || (position.x < 0 + 20)) {
    velocity.x *= -1;//mult(-1);
    
  } 
  
  if((position.y >= windowHeight - 20) || (position.y < 0 + 20)) {
    velocity.y *= -1;//mult(-1);
  }
}

public void show(){
  circle(position.x, position.y, 40);
}

public void applyForce(PVector force) {
  PVector f = PVector.div(force, weight);
  acceleration.add(f);
}

//Need to add Gravity

//Need to add turning feed back




//Need to add acceleration/delearation, and friction





}
