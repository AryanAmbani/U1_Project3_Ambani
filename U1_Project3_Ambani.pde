float CircleX [];
float CircleY[];
float xDirection [];
float yDirection[];
float x = 20;
float y = 20;
void setup()
{
 fullScreen();
 
 CircleX = new float[100];
 CircleY = new float[100];
 xDirection = new float[100];
 yDirection = new float[100];
}
void draw()

{
  background(0);
for (int i =0; i <100; i++)
{
 fill(255);
  ellipse(CircleX[i], CircleY[i],x , y);
  
  CircleX[i]= random(width);
  CircleY[i]= random(height);
 
 xDirection[i]=random(10);
 yDirection[i]= random(10);
 
 CircleX[i]= CircleX[i] + xDirection[i];
 CircleY[i] = CircleY[i]+ yDirection[i];
 
 
  if (CircleX[i]> width)
 {
   xDirection[i] =xDirection[i] * -1;
 }
 
 if (CircleX[i] < 0)
 {
   xDirection[i] = xDirection[i] * -1;
 
  }
  
  if (CircleY[i] > height)
  {
    yDirection [i] = yDirection[i] * -1;
  }
  if(CircleY[i] < 0)
  {
    yDirection[i] = yDirection [i] * -1;
  }
}
fill(random(255),random(255),random(255),random(255)); 
ellipse(mouseX,mouseY, 10, 10);
} //<>//