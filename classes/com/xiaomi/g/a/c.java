package com.xiaomi.g.a;

import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

public enum c
{
  private static final Map<String, c> i;
  private final short j;
  private final String k;
  
  static
  {
    i = new HashMap();
    Iterator localIterator = EnumSet.allOf(c.class).iterator();
    while (localIterator.hasNext())
    {
      c localc = (c)localIterator.next();
      i.put(localc.k, localc);
    }
  }
  
  private c(short paramShort, String paramString)
  {
    this.j = paramShort;
    this.k = paramString;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xiaomi\g\a\c.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */