//your variable declarations here
Spaceship bob;
Star [] bobb = new Star[100];
Asteroid bobber;

public void setup() 
{
  size (500,500);
  bob = new Spaceship();
  bobber = new Asteroid();
  for (int i = 0; i < bobb.length; i++)
    bobb[i] = new Star();
}

public void draw() 
{
  background(0);
  for (int i = 0; i < bobb.length; i++)
    bobb[i].show();
  bob.show();
  bob.move();
  bobber.move();
  bobber.show();
  bobber.addPointDirection(bobber.getRotationSpeed());
}//end of draw

public void keyPressed()
{
  if (key == 'q' || key == 'Q')
    bob.turn(-20);
  if (key == 'e' || key == 'E')
    bob.turn(20);
  if (key == 'd' || key == 'd')
    bob.accelerate(.5);
  if (key == 'r' || key == 'R')
    bob.warp();
  if (key == 's' || key == 'S')
    bob.accelerate(-.5);
  //if (key == 'w' || key == 'W')
     
}
