ParkingLot PLot;
Car Car[];
Date Date;
ControlPanel CP;
Gate Gate;
PriceCalculator PC;
Street Street=new Street();
float total_price=0;
int customers;
int hours;
boolean click = true;
void setup()
{
  frameRate(60);
  size (1200, 900);
  PImage Space;
  Space= loadImage("Space.jpeg");
  image(Space,0,0,1200,900);
  //background(0, 155, 0);
  PLot = new ParkingLot(175, 300);
  Date=new Date(0, 1, 0, true);
  Car=new Car[1000];
  float start = -10;
  for (int i=0; i<Car.length; i++, start -= random(75, 220))
    Car[i] = new Car(start);
}
void draw()
{
  CP = new ControlPanel(Date.toString());
  if (click)
  {
    Street.draw_street();
    Gate = new Gate();
    for (int i=0; i<Car.length; i++)
    {
      Car[i].draw_car();
      Car[i].move_car();
    }
    Street.Lot();
    if (frameCount%30==0)
    {
      Date.addMinute();
      PC = new PriceCalculator();
    }
    PLot.draw_lot();
  }
}
void mouseClicked() {

    if (mouseX>10 && mouseX<100 && mouseY>10 && mouseY<90)
      click = true;
    else if (mouseX>120 && mouseX<200 && mouseY>10 && mouseY<90)
      click = false;
}