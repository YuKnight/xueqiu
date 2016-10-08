package org.apache.http.impl.client;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.apache.http.ConnectionReuseStrategy;
import org.apache.http.HttpRequest;
import org.apache.http.HttpRequestInterceptor;
import org.apache.http.HttpResponseInterceptor;
import org.apache.http.annotation.GuardedBy;
import org.apache.http.annotation.ThreadSafe;
import org.apache.http.auth.AuthSchemeRegistry;
import org.apache.http.client.AuthenticationHandler;
import org.apache.http.client.AuthenticationStrategy;
import org.apache.http.client.BackoffManager;
import org.apache.http.client.ConnectionBackoffStrategy;
import org.apache.http.client.CookieStore;
import org.apache.http.client.CredentialsProvider;
import org.apache.http.client.HttpRequestRetryHandler;
import org.apache.http.client.RedirectHandler;
import org.apache.http.client.RedirectStrategy;
import org.apache.http.client.RequestDirector;
import org.apache.http.client.UserTokenHandler;
import org.apache.http.conn.ClientConnectionManager;
import org.apache.http.conn.ClientConnectionManagerFactory;
import org.apache.http.conn.ConnectionKeepAliveStrategy;
import org.apache.http.conn.routing.HttpRoutePlanner;
import org.apache.http.conn.scheme.SchemeRegistry;
import org.apache.http.cookie.CookieSpecRegistry;
import org.apache.http.impl.DefaultConnectionReuseStrategy;
import org.apache.http.impl.auth.BasicSchemeFactory;
import org.apache.http.impl.auth.DigestSchemeFactory;
import org.apache.http.impl.auth.KerberosSchemeFactory;
import org.apache.http.impl.auth.NTLMSchemeFactory;
import org.apache.http.impl.auth.SPNegoSchemeFactory;
import org.apache.http.impl.conn.BasicClientConnectionManager;
import org.apache.http.impl.conn.DefaultHttpRoutePlanner;
import org.apache.http.impl.conn.SchemeRegistryFactory;
import org.apache.http.impl.cookie.BestMatchSpecFactory;
import org.apache.http.impl.cookie.BrowserCompatSpecFactory;
import org.apache.http.impl.cookie.IgnoreSpecFactory;
import org.apache.http.impl.cookie.NetscapeDraftSpecFactory;
import org.apache.http.impl.cookie.RFC2109SpecFactory;
import org.apache.http.impl.cookie.RFC2965SpecFactory;
import org.apache.http.params.HttpParams;
import org.apache.http.protocol.BasicHttpContext;
import org.apache.http.protocol.BasicHttpProcessor;
import org.apache.http.protocol.HttpContext;
import org.apache.http.protocol.HttpProcessor;
import org.apache.http.protocol.HttpRequestExecutor;
import org.apache.http.protocol.ImmutableHttpProcessor;

@Deprecated
@ThreadSafe
public abstract class AbstractHttpClient
  extends CloseableHttpClient
{
  @GuardedBy("this")
  private BackoffManager backoffManager;
  @GuardedBy("this")
  private ClientConnectionManager connManager;
  @GuardedBy("this")
  private ConnectionBackoffStrategy connectionBackoffStrategy;
  @GuardedBy("this")
  private CookieStore cookieStore;
  @GuardedBy("this")
  private CredentialsProvider credsProvider;
  @GuardedBy("this")
  private HttpParams defaultParams;
  @GuardedBy("this")
  private ConnectionKeepAliveStrategy keepAliveStrategy;
  private final Log log = LogFactory.getLog(getClass());
  @GuardedBy("this")
  private BasicHttpProcessor mutableProcessor;
  @GuardedBy("this")
  private ImmutableHttpProcessor protocolProcessor;
  @GuardedBy("this")
  private AuthenticationStrategy proxyAuthStrategy;
  @GuardedBy("this")
  private RedirectStrategy redirectStrategy;
  @GuardedBy("this")
  private HttpRequestExecutor requestExec;
  @GuardedBy("this")
  private HttpRequestRetryHandler retryHandler;
  @GuardedBy("this")
  private ConnectionReuseStrategy reuseStrategy;
  @GuardedBy("this")
  private HttpRoutePlanner routePlanner;
  @GuardedBy("this")
  private AuthSchemeRegistry supportedAuthSchemes;
  @GuardedBy("this")
  private CookieSpecRegistry supportedCookieSpecs;
  @GuardedBy("this")
  private AuthenticationStrategy targetAuthStrategy;
  @GuardedBy("this")
  private UserTokenHandler userTokenHandler;
  
  protected AbstractHttpClient(ClientConnectionManager paramClientConnectionManager, HttpParams paramHttpParams)
  {
    this.defaultParams = paramHttpParams;
    this.connManager = paramClientConnectionManager;
  }
  
  private HttpProcessor getProtocolProcessor()
  {
    int j = 0;
    try
    {
      if (this.protocolProcessor == null)
      {
        localObject1 = getHttpProcessor();
        int k = ((BasicHttpProcessor)localObject1).getRequestInterceptorCount();
        HttpRequestInterceptor[] arrayOfHttpRequestInterceptor = new HttpRequestInterceptor[k];
        int i = 0;
        while (i < k)
        {
          arrayOfHttpRequestInterceptor[i] = ((BasicHttpProcessor)localObject1).getRequestInterceptor(i);
          i += 1;
        }
        k = ((BasicHttpProcessor)localObject1).getResponseInterceptorCount();
        HttpResponseInterceptor[] arrayOfHttpResponseInterceptor = new HttpResponseInterceptor[k];
        i = j;
        while (i < k)
        {
          arrayOfHttpResponseInterceptor[i] = ((BasicHttpProcessor)localObject1).getResponseInterceptor(i);
          i += 1;
        }
        this.protocolProcessor = new ImmutableHttpProcessor(arrayOfHttpRequestInterceptor, arrayOfHttpResponseInterceptor);
      }
      Object localObject1 = this.protocolProcessor;
      return (HttpProcessor)localObject1;
    }
    finally {}
  }
  
  public void addRequestInterceptor(HttpRequestInterceptor paramHttpRequestInterceptor)
  {
    try
    {
      getHttpProcessor().addInterceptor(paramHttpRequestInterceptor);
      this.protocolProcessor = null;
      return;
    }
    finally
    {
      paramHttpRequestInterceptor = finally;
      throw paramHttpRequestInterceptor;
    }
  }
  
  public void addRequestInterceptor(HttpRequestInterceptor paramHttpRequestInterceptor, int paramInt)
  {
    try
    {
      getHttpProcessor().addInterceptor(paramHttpRequestInterceptor, paramInt);
      this.protocolProcessor = null;
      return;
    }
    finally
    {
      paramHttpRequestInterceptor = finally;
      throw paramHttpRequestInterceptor;
    }
  }
  
  public void addResponseInterceptor(HttpResponseInterceptor paramHttpResponseInterceptor)
  {
    try
    {
      getHttpProcessor().addInterceptor(paramHttpResponseInterceptor);
      this.protocolProcessor = null;
      return;
    }
    finally
    {
      paramHttpResponseInterceptor = finally;
      throw paramHttpResponseInterceptor;
    }
  }
  
  public void addResponseInterceptor(HttpResponseInterceptor paramHttpResponseInterceptor, int paramInt)
  {
    try
    {
      getHttpProcessor().addInterceptor(paramHttpResponseInterceptor, paramInt);
      this.protocolProcessor = null;
      return;
    }
    finally
    {
      paramHttpResponseInterceptor = finally;
      throw paramHttpResponseInterceptor;
    }
  }
  
  public void clearRequestInterceptors()
  {
    try
    {
      getHttpProcessor().clearRequestInterceptors();
      this.protocolProcessor = null;
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public void clearResponseInterceptors()
  {
    try
    {
      getHttpProcessor().clearResponseInterceptors();
      this.protocolProcessor = null;
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public void close()
  {
    getConnectionManager().shutdown();
  }
  
  protected AuthSchemeRegistry createAuthSchemeRegistry()
  {
    AuthSchemeRegistry localAuthSchemeRegistry = new AuthSchemeRegistry();
    localAuthSchemeRegistry.register("Basic", new BasicSchemeFactory());
    localAuthSchemeRegistry.register("Digest", new DigestSchemeFactory());
    localAuthSchemeRegistry.register("NTLM", new NTLMSchemeFactory());
    localAuthSchemeRegistry.register("Negotiate", new SPNegoSchemeFactory());
    localAuthSchemeRegistry.register("Kerberos", new KerberosSchemeFactory());
    return localAuthSchemeRegistry;
  }
  
  protected ClientConnectionManager createClientConnectionManager()
  {
    SchemeRegistry localSchemeRegistry = SchemeRegistryFactory.createDefault();
    HttpParams localHttpParams = getParams();
    String str = (String)localHttpParams.getParameter("http.connection-manager.factory-class-name");
    if (str != null) {}
    for (;;)
    {
      try
      {
        ClientConnectionManagerFactory localClientConnectionManagerFactory = (ClientConnectionManagerFactory)Class.forName(str).newInstance();
        if (localClientConnectionManagerFactory != null) {
          return localClientConnectionManagerFactory.newInstance(localHttpParams, localSchemeRegistry);
        }
      }
      catch (ClassNotFoundException localClassNotFoundException)
      {
        throw new IllegalStateException("Invalid class name: " + str);
      }
      catch (IllegalAccessException localIllegalAccessException)
      {
        throw new IllegalAccessError(localIllegalAccessException.getMessage());
      }
      catch (InstantiationException localInstantiationException)
      {
        throw new InstantiationError(localInstantiationException.getMessage());
      }
      return new BasicClientConnectionManager(localSchemeRegistry);
      Object localObject = null;
    }
  }
  
  @Deprecated
  protected RequestDirector createClientRequestDirector(HttpRequestExecutor paramHttpRequestExecutor, ClientConnectionManager paramClientConnectionManager, ConnectionReuseStrategy paramConnectionReuseStrategy, ConnectionKeepAliveStrategy paramConnectionKeepAliveStrategy, HttpRoutePlanner paramHttpRoutePlanner, HttpProcessor paramHttpProcessor, HttpRequestRetryHandler paramHttpRequestRetryHandler, RedirectHandler paramRedirectHandler, AuthenticationHandler paramAuthenticationHandler1, AuthenticationHandler paramAuthenticationHandler2, UserTokenHandler paramUserTokenHandler, HttpParams paramHttpParams)
  {
    return new DefaultRequestDirector(paramHttpRequestExecutor, paramClientConnectionManager, paramConnectionReuseStrategy, paramConnectionKeepAliveStrategy, paramHttpRoutePlanner, paramHttpProcessor, paramHttpRequestRetryHandler, paramRedirectHandler, paramAuthenticationHandler1, paramAuthenticationHandler2, paramUserTokenHandler, paramHttpParams);
  }
  
  @Deprecated
  protected RequestDirector createClientRequestDirector(HttpRequestExecutor paramHttpRequestExecutor, ClientConnectionManager paramClientConnectionManager, ConnectionReuseStrategy paramConnectionReuseStrategy, ConnectionKeepAliveStrategy paramConnectionKeepAliveStrategy, HttpRoutePlanner paramHttpRoutePlanner, HttpProcessor paramHttpProcessor, HttpRequestRetryHandler paramHttpRequestRetryHandler, RedirectStrategy paramRedirectStrategy, AuthenticationHandler paramAuthenticationHandler1, AuthenticationHandler paramAuthenticationHandler2, UserTokenHandler paramUserTokenHandler, HttpParams paramHttpParams)
  {
    return new DefaultRequestDirector(this.log, paramHttpRequestExecutor, paramClientConnectionManager, paramConnectionReuseStrategy, paramConnectionKeepAliveStrategy, paramHttpRoutePlanner, paramHttpProcessor, paramHttpRequestRetryHandler, paramRedirectStrategy, paramAuthenticationHandler1, paramAuthenticationHandler2, paramUserTokenHandler, paramHttpParams);
  }
  
  protected RequestDirector createClientRequestDirector(HttpRequestExecutor paramHttpRequestExecutor, ClientConnectionManager paramClientConnectionManager, ConnectionReuseStrategy paramConnectionReuseStrategy, ConnectionKeepAliveStrategy paramConnectionKeepAliveStrategy, HttpRoutePlanner paramHttpRoutePlanner, HttpProcessor paramHttpProcessor, HttpRequestRetryHandler paramHttpRequestRetryHandler, RedirectStrategy paramRedirectStrategy, AuthenticationStrategy paramAuthenticationStrategy1, AuthenticationStrategy paramAuthenticationStrategy2, UserTokenHandler paramUserTokenHandler, HttpParams paramHttpParams)
  {
    return new DefaultRequestDirector(this.log, paramHttpRequestExecutor, paramClientConnectionManager, paramConnectionReuseStrategy, paramConnectionKeepAliveStrategy, paramHttpRoutePlanner, paramHttpProcessor, paramHttpRequestRetryHandler, paramRedirectStrategy, paramAuthenticationStrategy1, paramAuthenticationStrategy2, paramUserTokenHandler, paramHttpParams);
  }
  
  protected ConnectionKeepAliveStrategy createConnectionKeepAliveStrategy()
  {
    return new DefaultConnectionKeepAliveStrategy();
  }
  
  protected ConnectionReuseStrategy createConnectionReuseStrategy()
  {
    return new DefaultConnectionReuseStrategy();
  }
  
  protected CookieSpecRegistry createCookieSpecRegistry()
  {
    CookieSpecRegistry localCookieSpecRegistry = new CookieSpecRegistry();
    localCookieSpecRegistry.register("default", new BestMatchSpecFactory());
    localCookieSpecRegistry.register("best-match", new BestMatchSpecFactory());
    localCookieSpecRegistry.register("compatibility", new BrowserCompatSpecFactory());
    localCookieSpecRegistry.register("netscape", new NetscapeDraftSpecFactory());
    localCookieSpecRegistry.register("rfc2109", new RFC2109SpecFactory());
    localCookieSpecRegistry.register("rfc2965", new RFC2965SpecFactory());
    localCookieSpecRegistry.register("ignoreCookies", new IgnoreSpecFactory());
    return localCookieSpecRegistry;
  }
  
  protected CookieStore createCookieStore()
  {
    return new BasicCookieStore();
  }
  
  protected CredentialsProvider createCredentialsProvider()
  {
    return new BasicCredentialsProvider();
  }
  
  protected HttpContext createHttpContext()
  {
    BasicHttpContext localBasicHttpContext = new BasicHttpContext();
    localBasicHttpContext.setAttribute("http.scheme-registry", getConnectionManager().getSchemeRegistry());
    localBasicHttpContext.setAttribute("http.authscheme-registry", getAuthSchemes());
    localBasicHttpContext.setAttribute("http.cookiespec-registry", getCookieSpecs());
    localBasicHttpContext.setAttribute("http.cookie-store", getCookieStore());
    localBasicHttpContext.setAttribute("http.auth.credentials-provider", getCredentialsProvider());
    return localBasicHttpContext;
  }
  
  protected abstract HttpParams createHttpParams();
  
  protected abstract BasicHttpProcessor createHttpProcessor();
  
  protected HttpRequestRetryHandler createHttpRequestRetryHandler()
  {
    return new DefaultHttpRequestRetryHandler();
  }
  
  protected HttpRoutePlanner createHttpRoutePlanner()
  {
    return new DefaultHttpRoutePlanner(getConnectionManager().getSchemeRegistry());
  }
  
  @Deprecated
  protected AuthenticationHandler createProxyAuthenticationHandler()
  {
    return new DefaultProxyAuthenticationHandler();
  }
  
  protected AuthenticationStrategy createProxyAuthenticationStrategy()
  {
    return new ProxyAuthenticationStrategy();
  }
  
  @Deprecated
  protected RedirectHandler createRedirectHandler()
  {
    return new DefaultRedirectHandler();
  }
  
  protected HttpRequestExecutor createRequestExecutor()
  {
    return new HttpRequestExecutor();
  }
  
  @Deprecated
  protected AuthenticationHandler createTargetAuthenticationHandler()
  {
    return new DefaultTargetAuthenticationHandler();
  }
  
  protected AuthenticationStrategy createTargetAuthenticationStrategy()
  {
    return new TargetAuthenticationStrategy();
  }
  
  protected UserTokenHandler createUserTokenHandler()
  {
    return new DefaultUserTokenHandler();
  }
  
  protected HttpParams determineParams(HttpRequest paramHttpRequest)
  {
    return new ClientParamsStack(null, getParams(), paramHttpRequest.getParams(), null);
  }
  
  /* Error */
  protected final org.apache.http.client.methods.CloseableHttpResponse doExecute(org.apache.http.HttpHost paramHttpHost, HttpRequest paramHttpRequest, HttpContext paramHttpContext)
  {
    // Byte code:
    //   0: aload_2
    //   1: ldc_w 423
    //   4: invokestatic 429	org/apache/http/util/Args:notNull	(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    //   7: pop
    //   8: aload_0
    //   9: monitorenter
    //   10: aload_0
    //   11: invokevirtual 431	org/apache/http/impl/client/AbstractHttpClient:createHttpContext	()Lorg/apache/http/protocol/HttpContext;
    //   14: astore 4
    //   16: aload_3
    //   17: ifnonnull +165 -> 182
    //   20: aload 4
    //   22: astore_3
    //   23: aload_0
    //   24: aload_2
    //   25: invokevirtual 433	org/apache/http/impl/client/AbstractHttpClient:determineParams	(Lorg/apache/http/HttpRequest;)Lorg/apache/http/params/HttpParams;
    //   28: astore 4
    //   30: aload_3
    //   31: ldc_w 435
    //   34: aload 4
    //   36: invokestatic 441	org/apache/http/client/params/HttpClientParamConfig:getRequestConfig	(Lorg/apache/http/params/HttpParams;)Lorg/apache/http/client/config/RequestConfig;
    //   39: invokeinterface 338 3 0
    //   44: aload_0
    //   45: aload_0
    //   46: invokevirtual 444	org/apache/http/impl/client/AbstractHttpClient:getRequestExecutor	()Lorg/apache/http/protocol/HttpRequestExecutor;
    //   49: aload_0
    //   50: invokevirtual 132	org/apache/http/impl/client/AbstractHttpClient:getConnectionManager	()Lorg/apache/http/conn/ClientConnectionManager;
    //   53: aload_0
    //   54: invokevirtual 447	org/apache/http/impl/client/AbstractHttpClient:getConnectionReuseStrategy	()Lorg/apache/http/ConnectionReuseStrategy;
    //   57: aload_0
    //   58: invokevirtual 450	org/apache/http/impl/client/AbstractHttpClient:getConnectionKeepAliveStrategy	()Lorg/apache/http/conn/ConnectionKeepAliveStrategy;
    //   61: aload_0
    //   62: invokevirtual 453	org/apache/http/impl/client/AbstractHttpClient:getRoutePlanner	()Lorg/apache/http/conn/routing/HttpRoutePlanner;
    //   65: aload_0
    //   66: invokespecial 455	org/apache/http/impl/client/AbstractHttpClient:getProtocolProcessor	()Lorg/apache/http/protocol/HttpProcessor;
    //   69: aload_0
    //   70: invokevirtual 458	org/apache/http/impl/client/AbstractHttpClient:getHttpRequestRetryHandler	()Lorg/apache/http/client/HttpRequestRetryHandler;
    //   73: aload_0
    //   74: invokevirtual 462	org/apache/http/impl/client/AbstractHttpClient:getRedirectStrategy	()Lorg/apache/http/client/RedirectStrategy;
    //   77: aload_0
    //   78: invokevirtual 465	org/apache/http/impl/client/AbstractHttpClient:getTargetAuthenticationStrategy	()Lorg/apache/http/client/AuthenticationStrategy;
    //   81: aload_0
    //   82: invokevirtual 468	org/apache/http/impl/client/AbstractHttpClient:getProxyAuthenticationStrategy	()Lorg/apache/http/client/AuthenticationStrategy;
    //   85: aload_0
    //   86: invokevirtual 471	org/apache/http/impl/client/AbstractHttpClient:getUserTokenHandler	()Lorg/apache/http/client/UserTokenHandler;
    //   89: aload 4
    //   91: invokevirtual 473	org/apache/http/impl/client/AbstractHttpClient:createClientRequestDirector	(Lorg/apache/http/protocol/HttpRequestExecutor;Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/ConnectionReuseStrategy;Lorg/apache/http/conn/ConnectionKeepAliveStrategy;Lorg/apache/http/conn/routing/HttpRoutePlanner;Lorg/apache/http/protocol/HttpProcessor;Lorg/apache/http/client/HttpRequestRetryHandler;Lorg/apache/http/client/RedirectStrategy;Lorg/apache/http/client/AuthenticationStrategy;Lorg/apache/http/client/AuthenticationStrategy;Lorg/apache/http/client/UserTokenHandler;Lorg/apache/http/params/HttpParams;)Lorg/apache/http/client/RequestDirector;
    //   94: astore 7
    //   96: aload_0
    //   97: invokevirtual 453	org/apache/http/impl/client/AbstractHttpClient:getRoutePlanner	()Lorg/apache/http/conn/routing/HttpRoutePlanner;
    //   100: astore 8
    //   102: aload_0
    //   103: invokevirtual 477	org/apache/http/impl/client/AbstractHttpClient:getConnectionBackoffStrategy	()Lorg/apache/http/client/ConnectionBackoffStrategy;
    //   106: astore 5
    //   108: aload_0
    //   109: invokevirtual 481	org/apache/http/impl/client/AbstractHttpClient:getBackoffManager	()Lorg/apache/http/client/BackoffManager;
    //   112: astore 6
    //   114: aload_0
    //   115: monitorexit
    //   116: aload 5
    //   118: ifnull +202 -> 320
    //   121: aload 6
    //   123: ifnull +197 -> 320
    //   126: aload_1
    //   127: ifnull +74 -> 201
    //   130: aload_1
    //   131: astore 4
    //   133: aload 8
    //   135: aload 4
    //   137: aload_2
    //   138: aload_3
    //   139: invokeinterface 487 4 0
    //   144: astore 4
    //   146: aload 7
    //   148: aload_1
    //   149: aload_2
    //   150: aload_3
    //   151: invokeinterface 493 4 0
    //   156: invokestatic 499	org/apache/http/impl/client/CloseableHttpResponseProxy:newProxy	(Lorg/apache/http/HttpResponse;)Lorg/apache/http/client/methods/CloseableHttpResponse;
    //   159: astore_1
    //   160: aload 5
    //   162: aload_1
    //   163: invokeinterface 505 2 0
    //   168: ifeq +141 -> 309
    //   171: aload 6
    //   173: aload 4
    //   175: invokeinterface 511 2 0
    //   180: aload_1
    //   181: areturn
    //   182: new 513	org/apache/http/protocol/DefaultedHttpContext
    //   185: dup
    //   186: aload_3
    //   187: aload 4
    //   189: invokespecial 516	org/apache/http/protocol/DefaultedHttpContext:<init>	(Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/protocol/HttpContext;)V
    //   192: astore_3
    //   193: goto -170 -> 23
    //   196: astore_1
    //   197: aload_0
    //   198: monitorexit
    //   199: aload_1
    //   200: athrow
    //   201: aload_0
    //   202: aload_2
    //   203: invokevirtual 433	org/apache/http/impl/client/AbstractHttpClient:determineParams	(Lorg/apache/http/HttpRequest;)Lorg/apache/http/params/HttpParams;
    //   206: ldc_w 518
    //   209: invokeinterface 196 2 0
    //   214: checkcast 520	org/apache/http/HttpHost
    //   217: astore 4
    //   219: goto -86 -> 133
    //   222: astore_1
    //   223: aload 5
    //   225: aload_1
    //   226: invokeinterface 523 2 0
    //   231: ifeq +12 -> 243
    //   234: aload 6
    //   236: aload 4
    //   238: invokeinterface 511 2 0
    //   243: aload_1
    //   244: athrow
    //   245: astore_1
    //   246: new 525	org/apache/http/client/ClientProtocolException
    //   249: dup
    //   250: aload_1
    //   251: invokespecial 528	org/apache/http/client/ClientProtocolException:<init>	(Ljava/lang/Throwable;)V
    //   254: athrow
    //   255: astore_1
    //   256: aload 5
    //   258: aload_1
    //   259: invokeinterface 523 2 0
    //   264: ifeq +12 -> 276
    //   267: aload 6
    //   269: aload 4
    //   271: invokeinterface 511 2 0
    //   276: aload_1
    //   277: instanceof 417
    //   280: ifeq +8 -> 288
    //   283: aload_1
    //   284: checkcast 417	org/apache/http/HttpException
    //   287: athrow
    //   288: aload_1
    //   289: instanceof 530
    //   292: ifeq +8 -> 300
    //   295: aload_1
    //   296: checkcast 530	java/io/IOException
    //   299: athrow
    //   300: new 532	java/lang/reflect/UndeclaredThrowableException
    //   303: dup
    //   304: aload_1
    //   305: invokespecial 533	java/lang/reflect/UndeclaredThrowableException:<init>	(Ljava/lang/Throwable;)V
    //   308: athrow
    //   309: aload 6
    //   311: aload 4
    //   313: invokeinterface 536 2 0
    //   318: aload_1
    //   319: areturn
    //   320: aload 7
    //   322: aload_1
    //   323: aload_2
    //   324: aload_3
    //   325: invokeinterface 493 4 0
    //   330: invokestatic 499	org/apache/http/impl/client/CloseableHttpResponseProxy:newProxy	(Lorg/apache/http/HttpResponse;)Lorg/apache/http/client/methods/CloseableHttpResponse;
    //   333: astore_1
    //   334: aload_1
    //   335: areturn
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	336	0	this	AbstractHttpClient
    //   0	336	1	paramHttpHost	org.apache.http.HttpHost
    //   0	336	2	paramHttpRequest	HttpRequest
    //   0	336	3	paramHttpContext	HttpContext
    //   14	298	4	localObject	Object
    //   106	151	5	localConnectionBackoffStrategy	ConnectionBackoffStrategy
    //   112	198	6	localBackoffManager	BackoffManager
    //   94	227	7	localRequestDirector	RequestDirector
    //   100	34	8	localHttpRoutePlanner	HttpRoutePlanner
    // Exception table:
    //   from	to	target	type
    //   10	16	196	finally
    //   23	116	196	finally
    //   182	193	196	finally
    //   197	199	196	finally
    //   146	160	222	java/lang/RuntimeException
    //   133	146	245	org/apache/http/HttpException
    //   146	160	245	org/apache/http/HttpException
    //   160	180	245	org/apache/http/HttpException
    //   201	219	245	org/apache/http/HttpException
    //   223	243	245	org/apache/http/HttpException
    //   243	245	245	org/apache/http/HttpException
    //   256	276	245	org/apache/http/HttpException
    //   276	288	245	org/apache/http/HttpException
    //   288	300	245	org/apache/http/HttpException
    //   300	309	245	org/apache/http/HttpException
    //   309	318	245	org/apache/http/HttpException
    //   320	334	245	org/apache/http/HttpException
    //   146	160	255	java/lang/Exception
  }
  
  public final AuthSchemeRegistry getAuthSchemes()
  {
    try
    {
      if (this.supportedAuthSchemes == null) {
        this.supportedAuthSchemes = createAuthSchemeRegistry();
      }
      AuthSchemeRegistry localAuthSchemeRegistry = this.supportedAuthSchemes;
      return localAuthSchemeRegistry;
    }
    finally {}
  }
  
  public final BackoffManager getBackoffManager()
  {
    try
    {
      BackoffManager localBackoffManager = this.backoffManager;
      return localBackoffManager;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public final ConnectionBackoffStrategy getConnectionBackoffStrategy()
  {
    try
    {
      ConnectionBackoffStrategy localConnectionBackoffStrategy = this.connectionBackoffStrategy;
      return localConnectionBackoffStrategy;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public final ConnectionKeepAliveStrategy getConnectionKeepAliveStrategy()
  {
    try
    {
      if (this.keepAliveStrategy == null) {
        this.keepAliveStrategy = createConnectionKeepAliveStrategy();
      }
      ConnectionKeepAliveStrategy localConnectionKeepAliveStrategy = this.keepAliveStrategy;
      return localConnectionKeepAliveStrategy;
    }
    finally {}
  }
  
  public final ClientConnectionManager getConnectionManager()
  {
    try
    {
      if (this.connManager == null) {
        this.connManager = createClientConnectionManager();
      }
      ClientConnectionManager localClientConnectionManager = this.connManager;
      return localClientConnectionManager;
    }
    finally {}
  }
  
  public final ConnectionReuseStrategy getConnectionReuseStrategy()
  {
    try
    {
      if (this.reuseStrategy == null) {
        this.reuseStrategy = createConnectionReuseStrategy();
      }
      ConnectionReuseStrategy localConnectionReuseStrategy = this.reuseStrategy;
      return localConnectionReuseStrategy;
    }
    finally {}
  }
  
  public final CookieSpecRegistry getCookieSpecs()
  {
    try
    {
      if (this.supportedCookieSpecs == null) {
        this.supportedCookieSpecs = createCookieSpecRegistry();
      }
      CookieSpecRegistry localCookieSpecRegistry = this.supportedCookieSpecs;
      return localCookieSpecRegistry;
    }
    finally {}
  }
  
  public final CookieStore getCookieStore()
  {
    try
    {
      if (this.cookieStore == null) {
        this.cookieStore = createCookieStore();
      }
      CookieStore localCookieStore = this.cookieStore;
      return localCookieStore;
    }
    finally {}
  }
  
  public final CredentialsProvider getCredentialsProvider()
  {
    try
    {
      if (this.credsProvider == null) {
        this.credsProvider = createCredentialsProvider();
      }
      CredentialsProvider localCredentialsProvider = this.credsProvider;
      return localCredentialsProvider;
    }
    finally {}
  }
  
  protected final BasicHttpProcessor getHttpProcessor()
  {
    try
    {
      if (this.mutableProcessor == null) {
        this.mutableProcessor = createHttpProcessor();
      }
      BasicHttpProcessor localBasicHttpProcessor = this.mutableProcessor;
      return localBasicHttpProcessor;
    }
    finally {}
  }
  
  public final HttpRequestRetryHandler getHttpRequestRetryHandler()
  {
    try
    {
      if (this.retryHandler == null) {
        this.retryHandler = createHttpRequestRetryHandler();
      }
      HttpRequestRetryHandler localHttpRequestRetryHandler = this.retryHandler;
      return localHttpRequestRetryHandler;
    }
    finally {}
  }
  
  public final HttpParams getParams()
  {
    try
    {
      if (this.defaultParams == null) {
        this.defaultParams = createHttpParams();
      }
      HttpParams localHttpParams = this.defaultParams;
      return localHttpParams;
    }
    finally {}
  }
  
  @Deprecated
  public final AuthenticationHandler getProxyAuthenticationHandler()
  {
    try
    {
      AuthenticationHandler localAuthenticationHandler = createProxyAuthenticationHandler();
      return localAuthenticationHandler;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public final AuthenticationStrategy getProxyAuthenticationStrategy()
  {
    try
    {
      if (this.proxyAuthStrategy == null) {
        this.proxyAuthStrategy = createProxyAuthenticationStrategy();
      }
      AuthenticationStrategy localAuthenticationStrategy = this.proxyAuthStrategy;
      return localAuthenticationStrategy;
    }
    finally {}
  }
  
  @Deprecated
  public final RedirectHandler getRedirectHandler()
  {
    try
    {
      RedirectHandler localRedirectHandler = createRedirectHandler();
      return localRedirectHandler;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public final RedirectStrategy getRedirectStrategy()
  {
    try
    {
      if (this.redirectStrategy == null) {
        this.redirectStrategy = new DefaultRedirectStrategy();
      }
      RedirectStrategy localRedirectStrategy = this.redirectStrategy;
      return localRedirectStrategy;
    }
    finally {}
  }
  
  public final HttpRequestExecutor getRequestExecutor()
  {
    try
    {
      if (this.requestExec == null) {
        this.requestExec = createRequestExecutor();
      }
      HttpRequestExecutor localHttpRequestExecutor = this.requestExec;
      return localHttpRequestExecutor;
    }
    finally {}
  }
  
  public HttpRequestInterceptor getRequestInterceptor(int paramInt)
  {
    try
    {
      HttpRequestInterceptor localHttpRequestInterceptor = getHttpProcessor().getRequestInterceptor(paramInt);
      return localHttpRequestInterceptor;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public int getRequestInterceptorCount()
  {
    try
    {
      int i = getHttpProcessor().getRequestInterceptorCount();
      return i;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public HttpResponseInterceptor getResponseInterceptor(int paramInt)
  {
    try
    {
      HttpResponseInterceptor localHttpResponseInterceptor = getHttpProcessor().getResponseInterceptor(paramInt);
      return localHttpResponseInterceptor;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public int getResponseInterceptorCount()
  {
    try
    {
      int i = getHttpProcessor().getResponseInterceptorCount();
      return i;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public final HttpRoutePlanner getRoutePlanner()
  {
    try
    {
      if (this.routePlanner == null) {
        this.routePlanner = createHttpRoutePlanner();
      }
      HttpRoutePlanner localHttpRoutePlanner = this.routePlanner;
      return localHttpRoutePlanner;
    }
    finally {}
  }
  
  @Deprecated
  public final AuthenticationHandler getTargetAuthenticationHandler()
  {
    try
    {
      AuthenticationHandler localAuthenticationHandler = createTargetAuthenticationHandler();
      return localAuthenticationHandler;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public final AuthenticationStrategy getTargetAuthenticationStrategy()
  {
    try
    {
      if (this.targetAuthStrategy == null) {
        this.targetAuthStrategy = createTargetAuthenticationStrategy();
      }
      AuthenticationStrategy localAuthenticationStrategy = this.targetAuthStrategy;
      return localAuthenticationStrategy;
    }
    finally {}
  }
  
  public final UserTokenHandler getUserTokenHandler()
  {
    try
    {
      if (this.userTokenHandler == null) {
        this.userTokenHandler = createUserTokenHandler();
      }
      UserTokenHandler localUserTokenHandler = this.userTokenHandler;
      return localUserTokenHandler;
    }
    finally {}
  }
  
  public void removeRequestInterceptorByClass(Class<? extends HttpRequestInterceptor> paramClass)
  {
    try
    {
      getHttpProcessor().removeRequestInterceptorByClass(paramClass);
      this.protocolProcessor = null;
      return;
    }
    finally
    {
      paramClass = finally;
      throw paramClass;
    }
  }
  
  public void removeResponseInterceptorByClass(Class<? extends HttpResponseInterceptor> paramClass)
  {
    try
    {
      getHttpProcessor().removeResponseInterceptorByClass(paramClass);
      this.protocolProcessor = null;
      return;
    }
    finally
    {
      paramClass = finally;
      throw paramClass;
    }
  }
  
  public void setAuthSchemes(AuthSchemeRegistry paramAuthSchemeRegistry)
  {
    try
    {
      this.supportedAuthSchemes = paramAuthSchemeRegistry;
      return;
    }
    finally
    {
      paramAuthSchemeRegistry = finally;
      throw paramAuthSchemeRegistry;
    }
  }
  
  public void setBackoffManager(BackoffManager paramBackoffManager)
  {
    try
    {
      this.backoffManager = paramBackoffManager;
      return;
    }
    finally
    {
      paramBackoffManager = finally;
      throw paramBackoffManager;
    }
  }
  
  public void setConnectionBackoffStrategy(ConnectionBackoffStrategy paramConnectionBackoffStrategy)
  {
    try
    {
      this.connectionBackoffStrategy = paramConnectionBackoffStrategy;
      return;
    }
    finally
    {
      paramConnectionBackoffStrategy = finally;
      throw paramConnectionBackoffStrategy;
    }
  }
  
  public void setCookieSpecs(CookieSpecRegistry paramCookieSpecRegistry)
  {
    try
    {
      this.supportedCookieSpecs = paramCookieSpecRegistry;
      return;
    }
    finally
    {
      paramCookieSpecRegistry = finally;
      throw paramCookieSpecRegistry;
    }
  }
  
  public void setCookieStore(CookieStore paramCookieStore)
  {
    try
    {
      this.cookieStore = paramCookieStore;
      return;
    }
    finally
    {
      paramCookieStore = finally;
      throw paramCookieStore;
    }
  }
  
  public void setCredentialsProvider(CredentialsProvider paramCredentialsProvider)
  {
    try
    {
      this.credsProvider = paramCredentialsProvider;
      return;
    }
    finally
    {
      paramCredentialsProvider = finally;
      throw paramCredentialsProvider;
    }
  }
  
  public void setHttpRequestRetryHandler(HttpRequestRetryHandler paramHttpRequestRetryHandler)
  {
    try
    {
      this.retryHandler = paramHttpRequestRetryHandler;
      return;
    }
    finally
    {
      paramHttpRequestRetryHandler = finally;
      throw paramHttpRequestRetryHandler;
    }
  }
  
  public void setKeepAliveStrategy(ConnectionKeepAliveStrategy paramConnectionKeepAliveStrategy)
  {
    try
    {
      this.keepAliveStrategy = paramConnectionKeepAliveStrategy;
      return;
    }
    finally
    {
      paramConnectionKeepAliveStrategy = finally;
      throw paramConnectionKeepAliveStrategy;
    }
  }
  
  public void setParams(HttpParams paramHttpParams)
  {
    try
    {
      this.defaultParams = paramHttpParams;
      return;
    }
    finally
    {
      paramHttpParams = finally;
      throw paramHttpParams;
    }
  }
  
  @Deprecated
  public void setProxyAuthenticationHandler(AuthenticationHandler paramAuthenticationHandler)
  {
    try
    {
      this.proxyAuthStrategy = new AuthenticationStrategyAdaptor(paramAuthenticationHandler);
      return;
    }
    finally
    {
      paramAuthenticationHandler = finally;
      throw paramAuthenticationHandler;
    }
  }
  
  public void setProxyAuthenticationStrategy(AuthenticationStrategy paramAuthenticationStrategy)
  {
    try
    {
      this.proxyAuthStrategy = paramAuthenticationStrategy;
      return;
    }
    finally
    {
      paramAuthenticationStrategy = finally;
      throw paramAuthenticationStrategy;
    }
  }
  
  @Deprecated
  public void setRedirectHandler(RedirectHandler paramRedirectHandler)
  {
    try
    {
      this.redirectStrategy = new DefaultRedirectStrategyAdaptor(paramRedirectHandler);
      return;
    }
    finally
    {
      paramRedirectHandler = finally;
      throw paramRedirectHandler;
    }
  }
  
  public void setRedirectStrategy(RedirectStrategy paramRedirectStrategy)
  {
    try
    {
      this.redirectStrategy = paramRedirectStrategy;
      return;
    }
    finally
    {
      paramRedirectStrategy = finally;
      throw paramRedirectStrategy;
    }
  }
  
  public void setReuseStrategy(ConnectionReuseStrategy paramConnectionReuseStrategy)
  {
    try
    {
      this.reuseStrategy = paramConnectionReuseStrategy;
      return;
    }
    finally
    {
      paramConnectionReuseStrategy = finally;
      throw paramConnectionReuseStrategy;
    }
  }
  
  public void setRoutePlanner(HttpRoutePlanner paramHttpRoutePlanner)
  {
    try
    {
      this.routePlanner = paramHttpRoutePlanner;
      return;
    }
    finally
    {
      paramHttpRoutePlanner = finally;
      throw paramHttpRoutePlanner;
    }
  }
  
  @Deprecated
  public void setTargetAuthenticationHandler(AuthenticationHandler paramAuthenticationHandler)
  {
    try
    {
      this.targetAuthStrategy = new AuthenticationStrategyAdaptor(paramAuthenticationHandler);
      return;
    }
    finally
    {
      paramAuthenticationHandler = finally;
      throw paramAuthenticationHandler;
    }
  }
  
  public void setTargetAuthenticationStrategy(AuthenticationStrategy paramAuthenticationStrategy)
  {
    try
    {
      this.targetAuthStrategy = paramAuthenticationStrategy;
      return;
    }
    finally
    {
      paramAuthenticationStrategy = finally;
      throw paramAuthenticationStrategy;
    }
  }
  
  public void setUserTokenHandler(UserTokenHandler paramUserTokenHandler)
  {
    try
    {
      this.userTokenHandler = paramUserTokenHandler;
      return;
    }
    finally
    {
      paramUserTokenHandler = finally;
      throw paramUserTokenHandler;
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\http\impl\client\AbstractHttpClient.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */