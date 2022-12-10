//your variable declarations here
Spaceship bob;
ArrayList <Bullet> bill;
Star [] bobb = new Star[100];
ArrayList <Asteroid> aatoird;
boolean alive;

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
   alive = true;
  textSize(50);
}

public void draw() 
{
  background(0);
  if (alive == false)
    text("you are not alive", 60, 250);
  for (int i = 0; i < bill.size(); i++)
  {
    bill.get(i).showe();
    bill.get(i).move();
  }
  for (int i = 0; i < bobb.length; i++)
    bobb[i].show();
  if (alive)
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
    if ((dist((float)aatoird.get(i).getX(), (float)aatoird.get(i).getY(), 
       (float)bob.getX(), (float)bob.getY() ) < 30) && alive)
         {
           aatoird.remove(aatoird.get(i));
           alive = false;
         }
  }
         
  
  for (int i = 0; i < aatoird.size(); i++)
  {
    for (int j = 0; j < bill.size(); j++)
    {
       if (dist((float)aatoird.get(i).getX(), (float)aatoird.get(i).getY(), 
       (float)bill.get(j).getX(), (float)bill.get(j).getY() ) < 22)
          {
          aatoird.remove(aatoird.get(i));
          bill.remove(bill.get(j));
          break;
          }
    }
  }
   
}//end of draw

public void keyPressed()
{
  if (key == 'q' || key == 'Q')
    bob.turn(-20);
  if (key == 'e' || key == 'E')
    bob.turn(20);
  if (key == 'd' || key == 'D')
    bob.accelerate(.5);
  if (key == 'r' || key == 'R')
    bob.warp();
  if (key == 's' || key == 'S')
    bob.accelerate(-.5);
  if ((key == 'w' || key == 'W') && alive)
    bill.add(new Bullet (bob));
     
}
