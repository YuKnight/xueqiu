package android.support.v7.internal.view.menu;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Rect;
import android.text.method.TransformationMethod;
import android.view.View;
import java.util.Locale;

final class b
  implements TransformationMethod
{
  private Locale b;
  
  public b(ActionMenuItemView paramActionMenuItemView)
  {
    this.b = paramActionMenuItemView.getContext().getResources().getConfiguration().locale;
  }
  
  public final CharSequence getTransformation(CharSequence paramCharSequence, View paramView)
  {
    if (paramCharSequence != null) {
      return paramCharSequence.toString().toUpperCase(this.b);
    }
    return null;
  }
  
  public final void onFocusChanged(View paramView, CharSequence paramCharSequence, boolean paramBoolean, int paramInt, Rect paramRect) {}
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\android\support\v7\internal\view\menu\b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */