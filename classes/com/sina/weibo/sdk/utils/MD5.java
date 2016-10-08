package com.sina.weibo.sdk.utils;

import java.io.PrintStream;
import java.security.MessageDigest;

public class MD5
{
  private static final char[] hexDigits = { 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 97, 98, 99, 100, 101, 102 };
  
  public static String hexdigest(String paramString)
  {
    try
    {
      paramString = hexdigest(paramString.getBytes());
      return paramString;
    }
    catch (Exception paramString)
    {
      paramString.printStackTrace();
    }
    return null;
  }
  
  public static String hexdigest(byte[] paramArrayOfByte)
  {
    int i = 0;
    try
    {
      Object localObject = MessageDigest.getInstance("MD5");
      ((MessageDigest)localObject).update(paramArrayOfByte);
      paramArrayOfByte = ((MessageDigest)localObject).digest();
      localObject = new char[32];
      int j = 0;
      for (;;)
      {
        if (i >= 16) {
          return new String((char[])localObject);
        }
        int k = paramArrayOfByte[i];
        int m = j + 1;
        localObject[j] = hexDigits[(k >>> 4 & 0xF)];
        j = m + 1;
        localObject[m] = hexDigits[(k & 0xF)];
        i += 1;
      }
      return null;
    }
    catch (Exception paramArrayOfByte)
    {
      paramArrayOfByte.printStackTrace();
    }
  }
  
  public static void main(String[] paramArrayOfString)
  {
    System.out.println(hexdigest("c"));
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sina\weibo\sdk\utils\MD5.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */