package com.xueqiu.android.common.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View.MeasureSpec;
import android.widget.GridView;

public class NoScrollGridView
  extends GridView
{
  public NoScrollGridView(Context paramContext)
  {
    super(paramContext);
  }
  
  public NoScrollGridView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  public NoScrollGridView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    super.onMeasure(paramInt1, View.MeasureSpec.makeMeasureSpec(536870911, Integer.MIN_VALUE));
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\common\widget\NoScrollGridView.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */