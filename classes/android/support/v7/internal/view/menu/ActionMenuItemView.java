package android.support.v7.internal.view.menu;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.support.v7.b.d;
import android.support.v7.b.k;
import android.support.v7.internal.widget.CompatTextView;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.View.OnClickListener;
import android.view.View.OnLongClickListener;
import android.widget.Toast;

public class ActionMenuItemView
  extends CompatTextView
  implements ag, i, View.OnClickListener, View.OnLongClickListener
{
  private t a;
  private CharSequence b;
  private Drawable c;
  private r d;
  private boolean e;
  private boolean f;
  private int g;
  private int h;
  
  public ActionMenuItemView(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public ActionMenuItemView(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }
  
  public ActionMenuItemView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    this.e = paramContext.getResources().getBoolean(d.abc_config_allowActionMenuItemTextWithIcon);
    paramContext = paramContext.obtainStyledAttributes(paramAttributeSet, k.ActionMenuItemView, 0, 0);
    this.g = paramContext.getDimensionPixelSize(0, 0);
    paramContext.recycle();
    setOnClickListener(this);
    setOnLongClickListener(this);
    setTransformationMethod(new b(this));
    this.h = -1;
  }
  
  private void e()
  {
    int m = 0;
    int i;
    int j;
    if (!TextUtils.isEmpty(this.b))
    {
      i = 1;
      if (this.c != null)
      {
        if ((this.a.d & 0x4) != 4) {
          break label89;
        }
        j = 1;
        label37:
        k = m;
        if (j == 0) {
          break label66;
        }
        if (!this.e)
        {
          k = m;
          if (!this.f) {
            break label66;
          }
        }
      }
      int k = 1;
      label66:
      if ((i & k) == 0) {
        break label94;
      }
    }
    label89:
    label94:
    for (CharSequence localCharSequence = this.b;; localCharSequence = null)
    {
      setText(localCharSequence);
      return;
      i = 0;
      break;
      j = 0;
      break label37;
    }
  }
  
  public final void a(t paramt)
  {
    this.a = paramt;
    setIcon(paramt.getIcon());
    setTitle(paramt.a(this));
    setId(paramt.getItemId());
    if (paramt.isVisible()) {}
    for (int i = 0;; i = 8)
    {
      setVisibility(i);
      setEnabled(paramt.isEnabled());
      return;
    }
  }
  
  public final boolean a()
  {
    return true;
  }
  
  public final boolean b()
  {
    return !TextUtils.isEmpty(getText());
  }
  
  public final boolean c()
  {
    return (b()) && (this.a.getIcon() == null);
  }
  
  public final boolean d()
  {
    return b();
  }
  
  public t getItemData()
  {
    return this.a;
  }
  
  public void onClick(View paramView)
  {
    if (this.d != null) {
      this.d.a(this.a);
    }
  }
  
  public boolean onLongClick(View paramView)
  {
    if (b()) {
      return false;
    }
    paramView = new int[2];
    Rect localRect = new Rect();
    getLocationOnScreen(paramView);
    getWindowVisibleDisplayFrame(localRect);
    Object localObject = getContext();
    int i = getWidth();
    int j = getHeight();
    int k = paramView[1];
    int m = j / 2;
    int n = ((Context)localObject).getResources().getDisplayMetrics().widthPixels;
    localObject = Toast.makeText((Context)localObject, this.a.getTitle(), 0);
    if (k + m < localRect.height()) {
      ((Toast)localObject).setGravity(53, n - paramView[0] - i / 2, j);
    }
    for (;;)
    {
      ((Toast)localObject).show();
      return true;
      ((Toast)localObject).setGravity(81, 0, j);
    }
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    boolean bool = b();
    if ((bool) && (this.h >= 0)) {
      super.setPadding(this.h, getPaddingTop(), getPaddingRight(), getPaddingBottom());
    }
    super.onMeasure(paramInt1, paramInt2);
    int i = View.MeasureSpec.getMode(paramInt1);
    paramInt1 = View.MeasureSpec.getSize(paramInt1);
    int j = getMeasuredWidth();
    if (i == Integer.MIN_VALUE) {}
    for (paramInt1 = Math.min(paramInt1, this.g);; paramInt1 = this.g)
    {
      if ((i != 1073741824) && (this.g > 0) && (j < paramInt1)) {
        super.onMeasure(View.MeasureSpec.makeMeasureSpec(paramInt1, 1073741824), paramInt2);
      }
      if ((!bool) && (this.c != null)) {
        super.setPadding((getMeasuredWidth() - this.c.getIntrinsicWidth()) / 2, getPaddingTop(), getPaddingRight(), getPaddingBottom());
      }
      return;
    }
  }
  
  public void setCheckable(boolean paramBoolean) {}
  
  public void setChecked(boolean paramBoolean) {}
  
  public void setExpandedFormat(boolean paramBoolean)
  {
    if (this.f != paramBoolean)
    {
      this.f = paramBoolean;
      if (this.a != null) {
        this.a.c.f();
      }
    }
  }
  
  public void setIcon(Drawable paramDrawable)
  {
    this.c = paramDrawable;
    setCompoundDrawablesWithIntrinsicBounds(paramDrawable, null, null, null);
    e();
  }
  
  public void setItemInvoker(r paramr)
  {
    this.d = paramr;
  }
  
  public void setPadding(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    this.h = paramInt1;
    super.setPadding(paramInt1, paramInt2, paramInt3, paramInt4);
  }
  
  public void setTitle(CharSequence paramCharSequence)
  {
    this.b = paramCharSequence;
    setContentDescription(this.b);
    e();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\android\support\v7\internal\view\menu\ActionMenuItemView.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */