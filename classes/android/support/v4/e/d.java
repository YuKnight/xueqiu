package android.support.v4.e;

import android.util.Log;
import java.io.Writer;

public final class d
  extends Writer
{
  private final String a;
  private StringBuilder b = new StringBuilder(128);
  
  public d(String paramString)
  {
    this.a = paramString;
  }
  
  private void a()
  {
    if (this.b.length() > 0)
    {
      Log.d(this.a, this.b.toString());
      this.b.delete(0, this.b.length());
    }
  }
  
  public final void close()
  {
    a();
  }
  
  public final void flush()
  {
    a();
  }
  
  public final void write(char[] paramArrayOfChar, int paramInt1, int paramInt2)
  {
    int i = 0;
    if (i < paramInt2)
    {
      char c = paramArrayOfChar[(paramInt1 + i)];
      if (c == '\n') {
        a();
      }
      for (;;)
      {
        i += 1;
        break;
        this.b.append(c);
      }
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\android\support\v4\e\d.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */