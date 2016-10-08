package org.apache.http.impl.client;

import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.URI;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.apache.http.HttpHost;
import org.apache.http.HttpRequest;
import org.apache.http.HttpResponse;
import org.apache.http.annotation.ThreadSafe;
import org.apache.http.client.HttpClient;
import org.apache.http.client.ResponseHandler;
import org.apache.http.client.ServiceUnavailableRetryStrategy;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.conn.ClientConnectionManager;
import org.apache.http.params.HttpParams;
import org.apache.http.protocol.HttpContext;
import org.apache.http.util.Args;
import org.apache.http.util.EntityUtils;

@Deprecated
@ThreadSafe
public class AutoRetryHttpClient
  implements HttpClient
{
  private final HttpClient backend;
  private final Log log = LogFactory.getLog(getClass());
  private final ServiceUnavailableRetryStrategy retryStrategy;
  
  public AutoRetryHttpClient()
  {
    this(new DefaultHttpClient(), new DefaultServiceUnavailableRetryStrategy());
  }
  
  public AutoRetryHttpClient(HttpClient paramHttpClient)
  {
    this(paramHttpClient, new DefaultServiceUnavailableRetryStrategy());
  }
  
  public AutoRetryHttpClient(HttpClient paramHttpClient, ServiceUnavailableRetryStrategy paramServiceUnavailableRetryStrategy)
  {
    Args.notNull(paramHttpClient, "HttpClient");
    Args.notNull(paramServiceUnavailableRetryStrategy, "ServiceUnavailableRetryStrategy");
    this.backend = paramHttpClient;
    this.retryStrategy = paramServiceUnavailableRetryStrategy;
  }
  
  public AutoRetryHttpClient(ServiceUnavailableRetryStrategy paramServiceUnavailableRetryStrategy)
  {
    this(new DefaultHttpClient(), paramServiceUnavailableRetryStrategy);
  }
  
  public <T> T execute(HttpHost paramHttpHost, HttpRequest paramHttpRequest, ResponseHandler<? extends T> paramResponseHandler)
  {
    return (T)execute(paramHttpHost, paramHttpRequest, paramResponseHandler, null);
  }
  
  public <T> T execute(HttpHost paramHttpHost, HttpRequest paramHttpRequest, ResponseHandler<? extends T> paramResponseHandler, HttpContext paramHttpContext)
  {
    return (T)paramResponseHandler.handleResponse(execute(paramHttpHost, paramHttpRequest, paramHttpContext));
  }
  
  public <T> T execute(HttpUriRequest paramHttpUriRequest, ResponseHandler<? extends T> paramResponseHandler)
  {
    return (T)execute(paramHttpUriRequest, paramResponseHandler, null);
  }
  
  public <T> T execute(HttpUriRequest paramHttpUriRequest, ResponseHandler<? extends T> paramResponseHandler, HttpContext paramHttpContext)
  {
    return (T)paramResponseHandler.handleResponse(execute(paramHttpUriRequest, paramHttpContext));
  }
  
  public HttpResponse execute(HttpHost paramHttpHost, HttpRequest paramHttpRequest)
  {
    return execute(paramHttpHost, paramHttpRequest, null);
  }
  
  public HttpResponse execute(HttpHost paramHttpHost, HttpRequest paramHttpRequest, HttpContext paramHttpContext)
  {
    int i = 1;
    for (;;)
    {
      localHttpResponse = this.backend.execute(paramHttpHost, paramHttpRequest, paramHttpContext);
      try
      {
        if (this.retryStrategy.retryRequest(localHttpResponse, i, paramHttpContext))
        {
          EntityUtils.consume(localHttpResponse.getEntity());
          long l = this.retryStrategy.getRetryInterval();
          try
          {
            this.log.trace("Wait for " + l);
            Thread.sleep(l);
            i += 1;
          }
          catch (InterruptedException paramHttpHost)
          {
            Thread.currentThread().interrupt();
            throw new InterruptedIOException();
          }
        }
        return localHttpResponse;
      }
      catch (RuntimeException paramHttpHost)
      {
        try
        {
          EntityUtils.consume(localHttpResponse.getEntity());
          throw paramHttpHost;
        }
        catch (IOException paramHttpRequest)
        {
          for (;;)
          {
            this.log.warn("I/O error consuming response content", paramHttpRequest);
          }
        }
      }
    }
  }
  
  public HttpResponse execute(HttpUriRequest paramHttpUriRequest)
  {
    return execute(paramHttpUriRequest, null);
  }
  
  public HttpResponse execute(HttpUriRequest paramHttpUriRequest, HttpContext paramHttpContext)
  {
    URI localURI = paramHttpUriRequest.getURI();
    return execute(new HttpHost(localURI.getHost(), localURI.getPort(), localURI.getScheme()), paramHttpUriRequest, paramHttpContext);
  }
  
  public ClientConnectionManager getConnectionManager()
  {
    return this.backend.getConnectionManager();
  }
  
  public HttpParams getParams()
  {
    return this.backend.getParams();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\http\impl\client\AutoRetryHttpClient.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */