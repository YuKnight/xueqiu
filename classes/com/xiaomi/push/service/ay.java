package com.xiaomi.push.service;

import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import com.xiaomi.a.a.f.d;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.Map;
import java.util.Queue;

public final class ay
{
  private static Object a = new Object();
  private static Map<String, Queue<String>> b = new HashMap();
  
  public static boolean a(XMPushService paramXMPushService, String paramString1, String paramString2)
  {
    synchronized (a)
    {
      SharedPreferences localSharedPreferences = paramXMPushService.getSharedPreferences("push_message_ids", 0);
      Object localObject1 = (Queue)b.get(paramString1);
      paramXMPushService = (XMPushService)localObject1;
      if (localObject1 == null)
      {
        localObject1 = localSharedPreferences.getString(paramString1, "").split(",");
        paramXMPushService = new LinkedList();
        int j = localObject1.length;
        int i = 0;
        while (i < j)
        {
          paramXMPushService.add(localObject1[i]);
          i += 1;
        }
        b.put(paramString1, paramXMPushService);
      }
      if (paramXMPushService.contains(paramString2)) {
        return true;
      }
      paramXMPushService.add(paramString2);
      if (paramXMPushService.size() > 10) {
        paramXMPushService.poll();
      }
      paramXMPushService = d.a(paramXMPushService, ",");
      paramString2 = localSharedPreferences.edit();
      paramString2.putString(paramString1, paramXMPushService);
      paramString2.commit();
      return false;
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xiaomi\push\service\ay.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */