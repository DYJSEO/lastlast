PVector location;  
PVector velocity;  
PVector gravity;   

PVector location2;  
PVector velocity2; 
PVector gravity2;   

void setup() {
  size(640,360);
  location = new PVector(100,100);
  velocity = new PVector(1.5,2.1);
  gravity = new PVector(0,0.2);
  
  location2 = new PVector(300,200);
  velocity2 = new PVector(-2.3,1.8);
  gravity2 = new PVector(0,0.6);
}

void draw() {
  background(0);
  
  // Draw first shape
  fill(235, 300, 0);
  ellipse(location.x, location.y, 30, 30);
  location.add(velocity);
  velocity.add(gravity);
  
  // Bounce off edges
  if ((location.x > width) || (location.x < 0)) {
    velocity.x = velocity.x * -1;
  }
  if (location.y > height) {
    velocity.y = velocity.y * -0.95; 
    location.y = height;
  }
  

  fill(0, 255, 0);
  ellipse(location2.x, location2.y, 40, 40);
  location2.add(velocity2);
  velocity2.add(gravity2);
  
  // Bounce off edges
  if ((location2.x > width) || (location2.x < 0)) {
    velocity2.x = velocity2.x * -1;
  }
  if (location2.y > height) {
    velocity2.y = velocity2.y * -0.95; 
    location2.y = height;
  }
    stroke(255);
  strokeWeight(2);
  fill(127);
}
