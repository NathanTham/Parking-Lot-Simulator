class Date 
{
  final String [] days={"Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"};
  int today;
  int hour;
  int minute;
  boolean before_noon;
  Date (int d, int h, int m, boolean beforeNoon) 
  {
    today=d%7;
    if (h==12)
      hour=12;
    else
      hour=h%12;
    minute=m%60;
    before_noon=beforeNoon;
  }
  Date (Date d)
  {
    today=d.today;
    hour=d.hour;
    minute=d.minute;
    before_noon=d.before_noon;
  }
  void addHour()
  {
    hours++;
    if (hour==11 && before_noon==true)
      before_noon=false;
    else if (hour==11 && before_noon==false)
    {
      before_noon=true;
      today++;
    }
    if (hour<=11)
      hour++;
    else
      hour=1;
  }
  void addMinute()
  {
    if (minute<59)
      minute++;
    else 
    {
      minute=0;
      addHour();
    }
  }
  String toString()
  {
    today=today%7;
    String date=days[today];

    if (hour<10)
      date+=" 0"+hour;
    else
      date+=" "+hour;

    if (minute<10)
      date+=":0"+minute;
    else
      date+=":"+minute;

    if (before_noon)
      date+="AM";
    else
      date+="PM";
    return date;
  }
  boolean equal (Date date)
  {
    if (today==date.today && hour==date.hour && minute==date.minute && before_noon==date.before_noon)
      return true;
    else 
    return false;
  }
  Date random_date()
  {
    int today=int(random(0, 8));
    int hour=int(random(1, 13));
    int minute=int(random(1, 60));
    boolean before_noon=r();
    Date randomdate=new Date(today, hour, minute, before_noon);
    return randomdate;
  }
  boolean r()
  {
    boolean  x=parseBoolean(int(random(0, 2)));
    return x;
  }
}