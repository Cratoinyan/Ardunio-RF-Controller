import processing.serial.*;

Serial myPort;

void setup()
{
  myPort = new Serial(this,"COM4",9600);
}

void draw()
{
  //Get data from ardunio
  if(myPort.available() > 0)
  {
    println(myPort.read()); //Debug
  }
  // Draw
}
