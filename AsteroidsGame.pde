//your variable declarations here
Spaceship bob;
Star [] bobb = new Star[100];

public void setup() 
{
  size (500,500);
  bob = new Spaceship();
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
}//end of draw

public void keyPressed()
{
  if (key == 'q' || key == 'Q')
    bob.rotate(-20);
  if (key == 'e' || key == 'E')
    bob.rotate(20);
  if (key == 'd' || key == 'd')
    bob.accelerate(.5);
  if (key == 'r' || key == 'R')
    bob.warp();
  if (key == 's' || key == 'S')
    bob.stop();
  //if (key == 'w' || key == 'W')
     
}
