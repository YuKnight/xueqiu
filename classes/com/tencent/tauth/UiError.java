package com.tencent.tauth;

public class UiError
{
  public int errorCode;
  public String errorDetail;
  public String errorMessage;
  
  public UiError(int paramInt, String paramString1, String paramString2)
  {
    this.errorMessage = paramString1;
    this.errorCode = paramInt;
    this.errorDetail = paramString2;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\tencent\tauth\UiError.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */