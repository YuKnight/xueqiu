package com.xiaomi.b.a.a.a;

import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

public enum h
{
  private static final Map<String, h> h;
  private final short i;
  private final String j;
  
  static
  {
    h = new HashMap();
    Iterator localIterator = EnumSet.allOf(h.class).iterator();
    while (localIterator.hasNext())
    {
      h localh = (h)localIterator.next();
      h.put(localh.j, localh);
    }
  }
  
  private h(short paramShort, String paramString)
  {
    this.i = paramShort;
    this.j = paramString;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xiaomi\b\a\a\a\h.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */