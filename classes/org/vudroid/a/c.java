package org.vudroid.a;

public final class c
{
  private static boolean a = false;
  
  public static void a()
  {
    if (a) {
      return;
    }
    System.loadLibrary("vudroid");
    a = true;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\vudroid\a\c.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */