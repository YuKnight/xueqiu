package android.support.v4.view.a;

import android.view.accessibility.AccessibilityNodeInfo;
import android.view.accessibility.AccessibilityNodeInfo.CollectionInfo;
import android.view.accessibility.AccessibilityNodeInfo.CollectionItemInfo;

class o
  extends n
{
  public Object a(int paramInt1, int paramInt2)
  {
    return AccessibilityNodeInfo.CollectionInfo.obtain(paramInt1, paramInt2, false);
  }
  
  public Object b(int paramInt1, int paramInt2)
  {
    return AccessibilityNodeInfo.CollectionItemInfo.obtain(paramInt1, 1, paramInt2, 1, false);
  }
  
  public final void b(Object paramObject1, Object paramObject2)
  {
    ((AccessibilityNodeInfo)paramObject1).setCollectionInfo((AccessibilityNodeInfo.CollectionInfo)paramObject2);
  }
  
  public final void c(Object paramObject1, Object paramObject2)
  {
    ((AccessibilityNodeInfo)paramObject1).setCollectionItemInfo((AccessibilityNodeInfo.CollectionItemInfo)paramObject2);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\android\support\v4\view\a\o.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */