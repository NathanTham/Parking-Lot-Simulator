class ParkingStallSection
{
  int c=5,r=2;
  float in_X;
  float in_Y;
  ParkingStall [][] stall_list;
  ParkingStallSection (float x, float y)
  {
    in_X=x;
    in_Y=y;
    stall_list=new ParkingStall [c][r];
    for (int i=0; i<c; i++)
    {
      for (int j=0; j<r; j++)
      {
        stall_list[i][j]=new ParkingStall((i*80)+in_X,(j*50)+in_Y, 80, 50);
      }
    }
    draw_section();
  }
  ParkingStall getps(int i, int j) 
  {
   return stall_list[i][j]; 
  }
  void draw_section()
  {
   for (int i=0;i<c;i++)
   {
     for (int j=0;j<r;j++)
     {
       stall_list [i][j].drawStall();
     }
   }
  }
}