class PriceCalculator
{
  PriceCalculator() {
    for (int i=0; i< 2; i++) {
      for (int j = 0; j < 3; j++) {
        ParkingStallSection s = PLot.section_list[i][j];
        for (int h = 0; h < 5; h++) {
          for (int x = 0; x < 2; x++) {
            fill(0);
            text("Fee: ", 495, 763);
            if (s.getps(h, x).occupied)
            {
              if (Date.today==6)
              {
                PLot.section_list[i][j].stall_list[h][x].fee+=0.025;
              } else
              {
                PLot.section_list[i][j].stall_list[h][x].fee+=0.05;
              }
            }
            if (PLot.section_list[i][j].stall_list[h][x].occupied==false && PLot.section_list[i][j].stall_list[h][x].fee!=0)
            {
              total_price+=0.5*Math.round(PLot.section_list[i][j].stall_list[h][x].fee);
              Street.fee=0.5*Math.round(PLot.section_list[i][j].stall_list[h][x].fee);
              PLot.section_list[i][j].stall_list[h][x].fee=0;
            }
          }
        }
      }
    }
  }
}