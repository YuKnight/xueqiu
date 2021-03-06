package org.apache.http.impl.execchain;

import org.apache.http.HttpException;
import org.apache.http.HttpResponse;
import org.apache.http.annotation.Immutable;

@Immutable
public class TunnelRefusedException
  extends HttpException
{
  private static final long serialVersionUID = -8646722842745617323L;
  private final HttpResponse response;
  
  public TunnelRefusedException(String paramString, HttpResponse paramHttpResponse)
  {
    super(paramString);
    this.response = paramHttpResponse;
  }
  
  public HttpResponse getResponse()
  {
    return this.response;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\http\impl\execchain\TunnelRefusedException.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */