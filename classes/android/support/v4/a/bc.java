package android.support.v4.a;

import android.app.Notification;
import android.app.PendingIntent;
import android.content.Context;

final class bc
  extends bb
{
  public final Notification a(av paramav)
  {
    Notification localNotification = paramav.B;
    localNotification.setLatestEventInfo(paramav.a, paramav.b, paramav.c, paramav.d);
    Context localContext = paramav.a;
    CharSequence localCharSequence1 = paramav.b;
    CharSequence localCharSequence2 = paramav.c;
    PendingIntent localPendingIntent1 = paramav.d;
    PendingIntent localPendingIntent2 = paramav.e;
    localNotification.setLatestEventInfo(localContext, localCharSequence1, localCharSequence2, localPendingIntent1);
    localNotification.fullScreenIntent = localPendingIntent2;
    if (paramav.j > 0) {
      localNotification.flags |= 0x80;
    }
    return localNotification;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\android\support\v4\a\bc.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */