package pl.droidsonroids.gif;

import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.ThreadPoolExecutor.DiscardPolicy;

final class d
  extends ScheduledThreadPoolExecutor
{
  private static volatile d a = null;
  
  private d()
  {
    super(1, new ThreadPoolExecutor.DiscardPolicy());
  }
  
  public static d a()
  {
    if (a == null) {}
    try
    {
      if (a == null) {
        a = new d();
      }
      return a;
    }
    finally {}
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\pl\droidsonroids\gif\d.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */