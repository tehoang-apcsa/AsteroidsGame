class Star //note that this class does NOT extend Floater
{
  private int myX, myY;
  public Star ()
  {
    myX = (int)(Math.random()*501);
    myY = (int)(Math.random()*501);
  }
  
  public void show()
  {
    fill(255);
    stroke(255,255,0);
    ellipse(myX,myY,5,5);
  }
}
