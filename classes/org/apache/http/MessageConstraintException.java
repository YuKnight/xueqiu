package org.apache.http;

import java.nio.charset.CharacterCodingException;

public class MessageConstraintException
  extends CharacterCodingException
{
  private static final long serialVersionUID = 6077207720446368695L;
  private final String message;
  
  public MessageConstraintException(String paramString)
  {
    this.message = paramString;
  }
  
  public String getMessage()
  {
    return this.message;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\http\MessageConstraintException.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */