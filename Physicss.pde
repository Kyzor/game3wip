public class Physics{
  
//Need x & y coords, turned into a vector
PVector position;
PVector velocity;
PVector acceleration;
double mass;

public Physics(int xPlayer, int yPlayer, double xSpeed, double ySpeed, double mass){
  position = new PVector(xPlayer, yPlayer);
  velocity = new PVector(xSpeed, ySpeed);
  acceleration = new PVector(0,0);
  mass = mass;
}

public static Movement(){
  position += velocity;
}

public static Show(){
  circle(position.x, position.y, 40);
}

//Need to add Gravity

//Need to add turning feed back




//Need to add acceleration/delearation, and friction





}
