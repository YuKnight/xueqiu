package com.flurry.sdk;

import java.util.Locale;
import java.util.TimeZone;

public class ji
{
  private static ji a;
  
  public static ji a()
  {
    try
    {
      if (a == null) {
        a = new ji();
      }
      ji localji = a;
      return localji;
    }
    finally {}
  }
  
  public static void b()
  {
    a = null;
  }
  
  public String c()
  {
    return Locale.getDefault().getLanguage() + "_" + Locale.getDefault().getCountry();
  }
  
  public String d()
  {
    return TimeZone.getDefault().getID();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\flurry\sdk\ji.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */