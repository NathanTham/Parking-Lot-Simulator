class Gate
{
  int counter;
  Gate()
  {
    counter=60;
    for (int i=0; i< 2; i++) {
      for (int j = 0; j < 3; j++) {
        ParkingStallSection s = PLot.section_list[i][j];
        for (int h = 0; h < 5; h++) {
          for (int x = 0; x < 2; x++) {
            //s.getps(h, x).occupied=true;
            if (s.getps(h, x).occupied==true)
            {
            counter--;
            }
            else
            counter++;
          }
        }
      }
    }
    //println(counter);
    if (counter==0)
      gate_closed();
    else
      gate_open();
    stroke(0);
    fill(0);
    rect(575, 755, 5, 35, 10);
    fill(#FFF815);
    noStroke();
    ellipse (578, 245, 6, 6);
    ellipse (578, 787, 6, 6);
  }
  void gate_open()
  {
    stroke(0);
    fill(0);
    rect(575, 213, 5, 35, 10);
  }
  void gate_closed()
  {
    stroke(0);
    fill(0);
    rect(575, 242, 35, 5, 10);
  }
}