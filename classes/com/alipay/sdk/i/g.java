package com.alipay.sdk.i;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import com.alipay.android.app.IRemoteServiceCallback.Stub;

final class g
  extends IRemoteServiceCallback.Stub
{
  g(e parame) {}
  
  public final boolean isHideLoadingScreen()
  {
    return false;
  }
  
  public final void payEnd(boolean paramBoolean, String paramString) {}
  
  public final void startActivity(String paramString1, String paramString2, int paramInt, Bundle paramBundle)
  {
    Intent localIntent = new Intent("android.intent.action.MAIN", null);
    Bundle localBundle = paramBundle;
    if (paramBundle == null) {
      localBundle = new Bundle();
    }
    try
    {
      localBundle.putInt("CallingPid", paramInt);
      localIntent.putExtras(localBundle);
      localIntent.setClassName(paramString1, paramString2);
      e.b(this.a).startActivity(localIntent);
      return;
    }
    catch (Exception paramBundle)
    {
      for (;;) {}
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\alipay\sdk\i\g.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */