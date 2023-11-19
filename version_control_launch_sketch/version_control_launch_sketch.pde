ArrayList<Particle> particles;

void setup(){
 size(400,400);
 particles = new ArrayList<Particle>();
}

void draw(){
  background(0);

  for (int j = particles.size() - 1; j >= 0; j--){
    particles.get(i).update();
    particles.get(i).display();
    if ((particles.get(i).getPosY()) >= 400) {
      particles.remove(i);
      println("item removed");
    }
    
  if(mousePressed == true) {
    particles.add(new Particle(mouseX, mouseY));
  }
}
