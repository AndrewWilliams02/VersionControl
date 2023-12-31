class Particle {
  
  PVector position;
  PVector velocity;
  PVector acceleration;
  float randomColorR, randomColorG, randomColorB;
  float posY;
  
  Particle(float x, float y){
    randomColorR = random(0, 255);
    randomColorG = random(0, 255);
    randomColorB = random(0, 255);
    fill(randomColorR, randomColorG, randomColorB);
    position = new PVector(x, y);
    velocity = new PVector(random(-2, 2), random(-2, 2));
    acceleration = new PVector(0, 0.5);
    posY = position.y;
  }
  
  void update(){
    velocity.add(acceleration);
    position.add(velocity);
    posY = position.y;
  }
  
  void display(){
    ellipse(position.x, position.y, 10, 10);
  }
  
  float getPosY(){
    return posY;
  }
}
