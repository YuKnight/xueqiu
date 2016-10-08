package org.apache.http.util;

import java.util.Collection;

public class Args
{
  public static void check(boolean paramBoolean, String paramString)
  {
    if (!paramBoolean) {
      throw new IllegalArgumentException(paramString);
    }
  }
  
  public static void check(boolean paramBoolean, String paramString, Object paramObject)
  {
    if (!paramBoolean) {
      throw new IllegalArgumentException(String.format(paramString, new Object[] { paramObject }));
    }
  }
  
  public static void check(boolean paramBoolean, String paramString, Object... paramVarArgs)
  {
    if (!paramBoolean) {
      throw new IllegalArgumentException(String.format(paramString, paramVarArgs));
    }
  }
  
  public static <T extends CharSequence> T containsNoBlanks(T paramT, String paramString)
  {
    if (paramT == null) {
      throw new IllegalArgumentException(paramString + " may not be null");
    }
    if (TextUtils.containsBlanks(paramT)) {
      throw new IllegalArgumentException(paramString + " may not contain blanks");
    }
    return paramT;
  }
  
  public static <T extends CharSequence> T notBlank(T paramT, String paramString)
  {
    if (paramT == null) {
      throw new IllegalArgumentException(paramString + " may not be null");
    }
    if (TextUtils.isBlank(paramT)) {
      throw new IllegalArgumentException(paramString + " may not be blank");
    }
    return paramT;
  }
  
  public static <T extends CharSequence> T notEmpty(T paramT, String paramString)
  {
    if (paramT == null) {
      throw new IllegalArgumentException(paramString + " may not be null");
    }
    if (TextUtils.isEmpty(paramT)) {
      throw new IllegalArgumentException(paramString + " may not be empty");
    }
    return paramT;
  }
  
  public static <E, T extends Collection<E>> T notEmpty(T paramT, String paramString)
  {
    if (paramT == null) {
      throw new IllegalArgumentException(paramString + " may not be null");
    }
    if (paramT.isEmpty()) {
      throw new IllegalArgumentException(paramString + " may not be empty");
    }
    return paramT;
  }
  
  public static int notNegative(int paramInt, String paramString)
  {
    if (paramInt < 0) {
      throw new IllegalArgumentException(paramString + " may not be negative");
    }
    return paramInt;
  }
  
  public static long notNegative(long paramLong, String paramString)
  {
    if (paramLong < 0L) {
      throw new IllegalArgumentException(paramString + " may not be negative");
    }
    return paramLong;
  }
  
  public static <T> T notNull(T paramT, String paramString)
  {
    if (paramT == null) {
      throw new IllegalArgumentException(paramString + " may not be null");
    }
    return paramT;
  }
  
  public static int positive(int paramInt, String paramString)
  {
    if (paramInt <= 0) {
      throw new IllegalArgumentException(paramString + " may not be negative or zero");
    }
    return paramInt;
  }
  
  public static long positive(long paramLong, String paramString)
  {
    if (paramLong <= 0L) {
      throw new IllegalArgumentException(paramString + " may not be negative or zero");
    }
    return paramLong;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\http\util\Args.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */