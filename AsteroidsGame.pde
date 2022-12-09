//your variable declarations here
Spaceship bob;
ArrayList <Bullet> bill;
Star [] bobb = new Star[100];
ArrayList <Asteroid> aatoird;

public void setup() 
{
  size (500,500);
  bob = new Spaceship();
  aatoird = new ArrayList <Asteroid>();
  bill = new ArrayList <Bullet>();
  for (int i = 0; i < 20; i++)
    aatoird.add(new Asteroid());
  for (int i = 0; i < bobb.length; i++)
    bobb[i] = new Star();
  for (int i = 0; i < bill.size(); i++)
    bill.add(new Bullet(bob));
}

public void draw() 
{
  background(0);
  for (int i = 0; i < bill.size(); i++)
  {
    bill.get(i).show();
    bill.get(i).move();
  }
  for (int i = 0; i < bobb.length; i++)
    bobb[i].show();
  bob.show();
  bob.move();
  for (int i = 0; i < aatoird.size(); i++)
  {
    if (aatoird.get(i).getXspd() == 0)
      aatoird.get(i).setXspd((int)(Math.random()*2));
    if (aatoird.get(i).getYspd() == 0)
      aatoird.get(i).setYspd((int)(Math.random()*2));
  aatoird.get(i).move();
  aatoird.get(i).show();
  aatoird.get(i).addPointDirection(aatoird.get(i).getRotationSpeed());
  }
  
  for (int i = 0; i < aatoird.size(); i++)
  {
   if (dist(aatoird.get(i).getX(), aatoird.get(i).getY(), bob.getX(), bob.getY() ) < 30)
     aatoird.remove(i);
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
  if (key == 'w' || key == 'W')
    bill.add(new Bullet (bob));
     
}
