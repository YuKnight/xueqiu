package org.apache.http.impl.conn;

import org.apache.http.HttpException;
import org.apache.http.HttpHost;
import org.apache.http.HttpRequest;
import org.apache.http.annotation.ThreadSafe;
import org.apache.http.conn.params.ConnRouteParams;
import org.apache.http.conn.routing.HttpRoute;
import org.apache.http.conn.routing.HttpRoutePlanner;
import org.apache.http.conn.scheme.Scheme;
import org.apache.http.conn.scheme.SchemeRegistry;
import org.apache.http.protocol.HttpContext;
import org.apache.http.util.Args;
import org.apache.http.util.Asserts;

@Deprecated
@ThreadSafe
public class DefaultHttpRoutePlanner
  implements HttpRoutePlanner
{
  protected final SchemeRegistry schemeRegistry;
  
  public DefaultHttpRoutePlanner(SchemeRegistry paramSchemeRegistry)
  {
    Args.notNull(paramSchemeRegistry, "Scheme registry");
    this.schemeRegistry = paramSchemeRegistry;
  }
  
  public HttpRoute determineRoute(HttpHost paramHttpHost, HttpRequest paramHttpRequest, HttpContext paramHttpContext)
  {
    Args.notNull(paramHttpRequest, "HTTP request");
    paramHttpContext = ConnRouteParams.getForcedRoute(paramHttpRequest.getParams());
    if (paramHttpContext != null) {
      return paramHttpContext;
    }
    Asserts.notNull(paramHttpHost, "Target host");
    paramHttpContext = ConnRouteParams.getLocalAddress(paramHttpRequest.getParams());
    paramHttpRequest = ConnRouteParams.getDefaultProxy(paramHttpRequest.getParams());
    boolean bool;
    try
    {
      Scheme localScheme = this.schemeRegistry.getScheme(paramHttpHost.getSchemeName());
      bool = localScheme.isLayered();
      if (paramHttpRequest == null) {
        return new HttpRoute(paramHttpHost, paramHttpContext, bool);
      }
    }
    catch (IllegalStateException paramHttpHost)
    {
      throw new HttpException(paramHttpHost.getMessage());
    }
    return new HttpRoute(paramHttpHost, paramHttpContext, paramHttpRequest, bool);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\http\impl\conn\DefaultHttpRoutePlanner.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */