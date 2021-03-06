package org.apache.http.impl.auth;

import java.nio.charset.Charset;
import org.apache.http.annotation.Immutable;
import org.apache.http.auth.AuthScheme;
import org.apache.http.auth.AuthSchemeFactory;
import org.apache.http.auth.AuthSchemeProvider;
import org.apache.http.params.HttpParams;
import org.apache.http.protocol.HttpContext;

@Immutable
public class BasicSchemeFactory
  implements AuthSchemeFactory, AuthSchemeProvider
{
  private final Charset charset;
  
  public BasicSchemeFactory()
  {
    this(null);
  }
  
  public BasicSchemeFactory(Charset paramCharset)
  {
    this.charset = paramCharset;
  }
  
  public AuthScheme create(HttpContext paramHttpContext)
  {
    return new BasicScheme(this.charset);
  }
  
  public AuthScheme newInstance(HttpParams paramHttpParams)
  {
    return new BasicScheme();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\http\impl\auth\BasicSchemeFactory.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */