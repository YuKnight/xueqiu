package android.support.v7.a;

import android.content.Context;
import android.content.res.TypedArray;
import android.support.v7.b.k;
import android.util.AttributeSet;
import android.view.ViewGroup.MarginLayoutParams;

public final class c
  extends ViewGroup.MarginLayoutParams
{
  public int a = -1;
  
  public c()
  {
    this(19, (byte)0);
  }
  
  public c(int paramInt)
  {
    super(paramInt, -1);
    this.a = 19;
  }
  
  public c(int paramInt, byte paramByte)
  {
    super(-2, -1);
    this.a = paramInt;
  }
  
  public c(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    paramContext = paramContext.obtainStyledAttributes(paramAttributeSet, k.ActionBarLayout);
    this.a = paramContext.getInt(0, -1);
    paramContext.recycle();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\android\support\v7\a\c.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */