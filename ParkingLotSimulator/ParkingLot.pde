class ParkingLot
{
  int c=2, r=3;
  float in_X;
  float in_Y;
  ParkingStallSection [][] section_list;
  ParkingLot(float x, float y)
  {
    in_X = x;
    in_Y = y;
    section_list=new ParkingStallSection[c][r];
    for (int i=0; i<c; i++)
    {
      for (int j=0; j<r; j++)
      {
        section_list [i][j]=new ParkingStallSection (in_X, in_Y);
        in_Y+=150;
      }
      in_X+=450;
      in_Y=300;
    }
  }

  void draw_lot() {
    for (int i=0; i<c; i++)
    {
      for (int j=0; j<r; j++)
      {
        section_list [i][j].draw_section();
      }
    }
  }
}