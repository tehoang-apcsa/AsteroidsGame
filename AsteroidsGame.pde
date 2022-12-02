//your variable declarations here
Spaceship bob;
Star [] bobb = new Star[100];
ArrayList <Asteroid> bobber;

public void setup() 
{
  size (500,500);
  bob = new Spaceship();
  bobber = new ArrayList <Asteroid>();
  for (int i = 0; i < 10; i++)
    bobber.add(new Asteroid());
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
  for (int i = 0; i < bobber.size(); i++)
  {
  bobber.get(i).move();
  bobber.get(i).show();
  bobber.get(i).addPointDirection(bobber.get(i).getRotationSpeed());
  }
  
  for (int i = 0; i < bobber.size(); i++)
  {
   if (dist(bobber.get(i).getX(), bobber.get(i).getY(), bob.getX(), bob.getY() ) < 12)
     bobber.remove(i);
  }
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
