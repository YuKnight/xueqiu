package org.apache.http.util;

public class Asserts
{
  public static void check(boolean paramBoolean, String paramString)
  {
    if (!paramBoolean) {
      throw new IllegalStateException(paramString);
    }
  }
  
  public static void check(boolean paramBoolean, String paramString, Object paramObject)
  {
    if (!paramBoolean) {
      throw new IllegalStateException(String.format(paramString, new Object[] { paramObject }));
    }
  }
  
  public static void check(boolean paramBoolean, String paramString, Object... paramVarArgs)
  {
    if (!paramBoolean) {
      throw new IllegalStateException(String.format(paramString, paramVarArgs));
    }
  }
  
  public static void notBlank(CharSequence paramCharSequence, String paramString)
  {
    if (TextUtils.isBlank(paramCharSequence)) {
      throw new IllegalStateException(paramString + " is blank");
    }
  }
  
  public static void notEmpty(CharSequence paramCharSequence, String paramString)
  {
    if (TextUtils.isEmpty(paramCharSequence)) {
      throw new IllegalStateException(paramString + " is empty");
    }
  }
  
  public static void notNull(Object paramObject, String paramString)
  {
    if (paramObject == null) {
      throw new IllegalStateException(paramString + " is null");
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\http\util\Asserts.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */