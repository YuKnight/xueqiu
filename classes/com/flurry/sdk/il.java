package com.flurry.sdk;

public enum il
{
  private int e;
  
  private il(int paramInt)
  {
    this.e = paramInt;
  }
  
  public static il a(int paramInt)
  {
    switch (paramInt)
    {
    default: 
      return null;
    case 1: 
      return a;
    case 2: 
      return b;
    case 3: 
      return c;
    }
    return d;
  }
  
  public final int a()
  {
    return this.e;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\flurry\sdk\il.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */