class Bullet extends Floater 
{
  public Bullet(Spaceship theShip)
  {
    myCenterX = theShip.getY();
    myCenterX = theShip.getX();
    myXspeed = theShip.getXspeed();
    myYspeed = theShip.getYspeed();
    myPointDirection = theShip.getPointDirection();
    myColor = color(#1ba2aa);
  }//end of constructor
  
  public void accelerate(){myXspeed=myYspeed=6;}
  public void show()
  {
    fill(myColor);
    stroke(myColor);
    translate((float)myCenterX, (float)myCenterY); 
    float dRadians = (float)(myPointDirection*(Math.PI/180));
    rotate(dRadians);
    ellipse((float)myCenterX,(float)myCenterY,10,10);
    
  }
}//end of bullet class
