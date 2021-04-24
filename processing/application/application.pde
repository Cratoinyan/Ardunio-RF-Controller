import processing.serial.*;

Serial myPort;
byte[] buffer;

void setup()
{
  myPort = new Serial(this,"COM4",9600);
  buffer = new byte[22];
}

void draw()
{
  //Get data from ardunio
  if(myPort.available() > 0)
  {
    buffer = myPort.readBytes();
    println(buffer);
  }
  // Draw
}
