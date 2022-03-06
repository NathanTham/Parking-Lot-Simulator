class Street
{
  float fee;
  Street()
  {
  }
  void draw_street()
  {
    fill(100);
    stroke(255);
    strokeWeight(4);
    rect(125, 250, 950, 500);
    rect(-50, 125, 1300, 85);
    rect(-50, 790, 1300, 85);

    stroke(100);
    rect(575, 150, 50, 650);

    stroke(255);
    strokeWeight(4);
    rect(575, 210, 1, 40);
    rect(575, 750, 1, 40);
    rect(625, 210, 1, 40);
    rect(625, 750, 1, 40);

    fill(255);
    textSize(30);
    text ("North City SpaceLane", 465, 175);
    text ("South City SpaceLane", 465, 840);
  }
  void Lot()
  {
    noStroke();
    fill(100);
    rect(125, 250, 950, 500);
    fill(255);
    stroke(0);
    strokeWeight(1);
    rect(490, 225, 75, 20);
    rect(490, 727, 75, 20);
    if (Gate.counter==0)
      fill(255, 0, 0);
    else
      fill(0, 0, 255);
    rect(490, 245, 75, 20);
    rect(490, 747, 75, 20);
    fill(0);
    textSize(13);
    text("Entrance", 495, 240);
    text("Spaces: "+Gate.counter/2, 495, 260);
    text("Exit", 495, 743);
    text("Fee: ", 495, 763);
    text(fee,520,763);
  }  
}