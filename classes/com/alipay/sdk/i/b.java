package com.alipay.sdk.i;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.telephony.TelephonyManager;
import android.text.TextUtils;

public final class b
{
  private static b d = null;
  public String a;
  private String b;
  private String c;
  
  private b(Context paramContext)
  {
    try
    {
      Object localObject = (TelephonyManager)paramContext.getSystemService("phone");
      a(((TelephonyManager)localObject).getDeviceId());
      String str = ((TelephonyManager)localObject).getSubscriberId();
      localObject = str;
      if (str != null) {
        localObject = (str + "000000000000000").substring(0, 15);
      }
      this.b = ((String)localObject);
      this.a = ((WifiManager)paramContext.getSystemService("wifi")).getConnectionInfo().getMacAddress();
      return;
    }
    catch (Exception paramContext) {}finally
    {
      if (TextUtils.isEmpty(this.a)) {
        this.a = "00:00:00:00:00:00";
      }
    }
  }
  
  public static b a(Context paramContext)
  {
    if (d == null) {
      d = new b(paramContext);
    }
    return d;
  }
  
  private void a(String paramString)
  {
    String str = paramString;
    if (paramString != null)
    {
      paramString = paramString.getBytes();
      int i = 0;
      while (i < paramString.length)
      {
        if ((paramString[i] < 48) || (paramString[i] > 57)) {
          paramString[i] = 48;
        }
        i += 1;
      }
      paramString = new String(paramString);
      str = (paramString + "000000000000000").substring(0, 15);
    }
    this.c = str;
  }
  
  public static d b(Context paramContext)
  {
    paramContext = (ConnectivityManager)paramContext.getSystemService("connectivity");
    try
    {
      paramContext = paramContext.getActiveNetworkInfo();
      if ((paramContext != null) && (paramContext.getType() == 0)) {
        return d.a(paramContext.getSubtype());
      }
      if ((paramContext != null) && (paramContext.getType() == 1)) {
        return d.a;
      }
      paramContext = d.o;
      return paramContext;
    }
    catch (Exception paramContext) {}
    return d.o;
  }
  
  public static String c(Context paramContext)
  {
    paramContext = a(paramContext);
    String str = paramContext.b();
    str = str + "|";
    paramContext = paramContext.a();
    if (TextUtils.isEmpty(paramContext)) {}
    for (paramContext = str + "000000000000000";; paramContext = str + paramContext) {
      return paramContext.substring(0, 8);
    }
  }
  
  public final String a()
  {
    if (TextUtils.isEmpty(this.b)) {
      this.b = "000000000000000";
    }
    return this.b;
  }
  
  public final String b()
  {
    if (TextUtils.isEmpty(this.c)) {
      this.c = "000000000000000";
    }
    return this.c;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\alipay\sdk\i\b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */