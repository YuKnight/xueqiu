package com.tencent.mm.sdk.c;

import com.tencent.mm.sdk.b.a;

public final class a$a
{
  public static Object a(int paramInt, String paramString)
  {
    String str = paramString;
    switch (paramInt)
    {
    default: 
    case 1: 
    case 2: 
    case 4: 
    case 5: 
    case 6: 
      try
      {
        a.a("MicroMsg.SDK.PluginProvider.Resolver", "unknown type");
      }
      catch (Exception paramString)
      {
        paramString.printStackTrace();
        str = null;
      }
      return Integer.valueOf(paramString);
      return Long.valueOf(paramString);
      return Boolean.valueOf(paramString);
      return Float.valueOf(paramString);
      paramString = Double.valueOf(paramString);
      return paramString;
    }
    return str;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\tencent\mm\sdk\c\a$a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */