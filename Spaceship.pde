class Spaceship extends Floater  
{   
    Spaceship () 
    {
      corners = 3;  //the number of corners, a triangular floater has 3  
      xCorners = new int [corners];
      yCorners = new int [corners];
      xCorners[0] =  -8;   
      yCorners[0] =  -8;   
      xCorners[1] =  16;   
      yCorners[1] =  0;
      xCorners[2] =  -8;   
      yCorners[2] =  8;
      myColor = color(#ed0a3f);   
      myCenterX = 250; 
      myCenterY = 250; //holds center coordinates   
      myXspeed = 0; 
      myYspeed = 0; //holds the speed of travel in the x and y directions   
      myPointDirection = 0; //(int) (Math.random()*361)
    }//end of constructor
    
   public void warp(){myCenterX = (int)(Math.random()*501); myCenterY = (int)(Math.random()*501); myPointDirection = (int)(Math.random()*361); myXspeed = myYspeed = 0;}
    
    
    
}
