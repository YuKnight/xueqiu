package android.support.v4.content;

import android.content.ComponentName;
import android.content.Intent;
import android.os.Build.VERSION;

public final class i
{
  private static final j a = new k();
  
  static
  {
    int i = Build.VERSION.SDK_INT;
    if (i >= 15)
    {
      a = new m();
      return;
    }
    if (i >= 11)
    {
      a = new l();
      return;
    }
  }
  
  public static Intent a(ComponentName paramComponentName)
  {
    return a.a(paramComponentName);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\android\support\v4\content\i.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */