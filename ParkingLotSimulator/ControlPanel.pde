class ControlPanel
{
  ControlPanel(String Time)
  {
    draw_CP(Time);
  }
  void draw_CP(String T)
  {
    fill(0);
    rect(-50, 0, 1250, 110);
    fill(255);
    textSize(20);
    text(T, 975, 30); 

    //RATES
    fill(0, 0, 255);
    noStroke();
    rect(390, 10, 300, 90);
    fill(0);
    textSize(20);
    text("Parking Rates: ", 400, 30);
    textSize(18);
    text("$3.00/Hour  Monday-Friday", 400, 55);
    text("$2.00/Hour  Sunday-Saturday", 400, 80);

    //$$
    fill(0, 0, 255);
    noStroke();
    rect(700, 10, 270, 90);
    fill(0);
    textSize(20);
    text("Simulation Values", 710, 30);
    textSize(18);
    text("Net Profits:  $"+total_price, 710, 50);
    text("Time Elapsed: "+hours+" Hours", 710, 70);
    text("Customers: "+customers, 710, 90);

    //Play Pause
    fill(0, 0, 255);
    noStroke();
    rect(10, 10, 200, 90);
    noFill();
    stroke(0);
    strokeWeight(4);
    ellipse(60, 55, 80, 80);
    ellipse(160, 55, 80, 80);

    if (click==true)
      fill(#02F08E);
    else
    fill(0); 
    triangle(45, 35, 45, 75, 85, 55);

    if (click==true)
      fill(0);
    else
      fill(#FF0004);
    noStroke();
    rect(145, 30, 10, 55, 5);
    rect(165, 30, 10, 55, 5);
  }
}