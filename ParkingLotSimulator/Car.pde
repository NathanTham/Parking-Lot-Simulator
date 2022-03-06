class Car
{
  float pos_x;
  float pos_y=155;
  int l_x=40;
  int h_y=30;
  int lT_x=30;
  int hT_y=10;
  int A_x=60;
  int A_y=4;
  int F_s=10;
  int r_section;
  int c_section;
  int r_stalls;
  int c_stalls;
  int ran;
  color c;
  boolean turned=false;
  Car(float x)
  {
    pos_x=x;
    c=color(random(0, 256), random(0, 256), random(0, 256));
    ran=int(random(0, 10));
  }
  void draw_car ()
  {
    if (turned==false)
    {
      noStroke();
      fill(c);
      rect(pos_x, pos_y, l_x, h_y);
      rect(pos_x-20, pos_y+30, lT_x, hT_y);
      rect(pos_x-20, pos_y-10, lT_x, hT_y);
      rect(pos_x, pos_y+13, 60, 4);
      fill(random(150, 255), 0, 0);
      rect(pos_x-40, pos_y+30, F_s, F_s);
      rect(pos_x-40, pos_y-10, F_s, F_s);
      fill(#C5F2FA);
      stroke(0);
      strokeWeight(1);
      ellipse(pos_x+25, pos_y+15, 15, 15);
    } else
    {
      noStroke();
      fill(c);
      rect(pos_x, pos_y, l_x, h_y);
      rect(pos_x+30, pos_y-20, lT_x, hT_y);
      rect(pos_x-10, pos_y-20, lT_x, hT_y);
      rect(pos_x+13, pos_y, A_x, A_y);
      fill(random(150, 255), 0, 0);
      rect(pos_x+30, pos_y-30, F_s, F_s);
      rect(pos_x-10, pos_y-30, F_s, F_s);
      fill(#C5F2FA);
      stroke(0);
      strokeWeight(1);
      ellipse(pos_x+15, pos_y+25, 15, 15);
    }
  }
  void move_car ()
  {
    if (pos_y<180)
      pos_x+=2;
    if (pos_y>=750 && pos_y<820)
      pos_y+=2;
    if (pos_y==820)
    {
      pos_x+=2;
      l_x=40;
      h_y=30;
      lT_x=30;
      hT_y=10;
      A_x=60;
      A_y=4;
      turned=false;
    }
    if (575<pos_x&& pos_x<590 && pos_y<300 && Gate.counter!=0 && ran>2)
      turn_carin();
    if (Gate.counter<120)
      empty_stall();
  }
  void turn_carin()
  {
    turned=true;
    l_x=30;
    h_y=40;
    lT_x=10;
    hT_y=30;
    A_x=4;
    A_y=60;
    pos_x=585;
    pos_y+=2;
    if (pos_y==251)
      occupy();
  }
  void turn_carout()
  {
    turned=true;
    l_x=30;
    h_y=40;
    lT_x=10;
    hT_y=30;
    A_x=4;
    A_y=60;
    pos_x=585;
    pos_y=750;
    draw_car();
  }
  void occupy()
  {
    customers++;
    rand_stall();
    if (PLot.section_list[c_section][r_section].stall_list[c_stalls][r_stalls].occupied==false) 
    {
      PLot.section_list[c_section][r_section].stall_list[c_stalls][r_stalls].occupied=true;
    } else
      occupy();
  }
  void empty_stall()
  {
    int r=int(rand(0, 100000));
    if (r<1)
    {
      rand_stall();
      if (PLot.section_list[c_section][r_section].stall_list[c_stalls][r_stalls].occupied==true) 
      {
        PLot.section_list[c_section][r_section].stall_list[c_stalls][r_stalls].occupied=false;
        turn_carout();
      }
    }
  }
  void rand_stall()
  {
    r_section=rand(0, 3);
    c_section=rand(0, 2);
    r_stalls=rand(0, 2);
    c_stalls=rand(0, 5);
  }
  int rand(int a, int b)
  {
    int r=int(random(a, b));
    return r;
  }
}