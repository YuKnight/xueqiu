package com.tencent.open.cgireport;

import android.util.Log;

public class reportItem
{
  private String a;
  private String b;
  private String c;
  private String d;
  private String e;
  private String f;
  private String g;
  private String h;
  private String i;
  
  public reportItem()
  {
    this.a = "";
    this.b = "";
    this.c = "";
    this.d = "";
    this.e = "";
    this.f = "";
    this.g = "";
    this.h = "";
    this.i = "";
  }
  
  public reportItem(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, String paramString6, String paramString7, String paramString8, String paramString9)
  {
    this.a = paramString1;
    this.b = paramString2;
    this.c = paramString3;
    this.d = paramString4;
    this.e = paramString5;
    this.f = paramString6;
    this.g = paramString7;
    this.h = paramString8;
    this.i = paramString9;
    Log.i("report_debug", "reportItem apn=" + this.a + ",frequency=" + this.b + ",commandid=" + this.c + ",resultcode=" + this.d + "timecost" + this.e + ",reqsize=" + this.f + ",rspsize=" + this.g + ",deviceinfo=" + this.h + ",detail=" + this.i);
  }
  
  public String a()
  {
    return this.a;
  }
  
  public String b()
  {
    return this.b;
  }
  
  public String c()
  {
    return this.c;
  }
  
  public String d()
  {
    return this.d;
  }
  
  public String e()
  {
    return this.e;
  }
  
  public String f()
  {
    return this.g;
  }
  
  public String g()
  {
    return this.f;
  }
  
  public String h()
  {
    return this.i;
  }
  
  public String i()
  {
    return this.h;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\tencent\open\cgireport\reportItem.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */