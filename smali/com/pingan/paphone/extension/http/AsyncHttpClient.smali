.class public Lcom/pingan/paphone/extension/http/AsyncHttpClient;
.super Ljava/lang/Object;
.source "AsyncHttpClient.java"


# static fields
.field private static final DEFAULT_MAX_CONNECTIONS:I = 0xa

.field private static final DEFAULT_MAX_RETRIES:I = 0x5

.field private static final DEFAULT_SOCKET_BUFFER_SIZE:I = 0x2000

.field private static final DEFAULT_SOCKET_TIMEOUT:I = 0x4e20

.field private static final ENCODING_GZIP:Ljava/lang/String; = "gzip"

.field private static final HEADER_ACCEPT_ENCODING:Ljava/lang/String; = "Accept-Encoding"

.field private static final VERSION:Ljava/lang/String; = "1.4.3"

.field private static maxConnections:I

.field private static socketTimeout:I


# instance fields
.field private final clientHeaderMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

.field private final httpContext:Lorg/apache/http/protocol/HttpContext;

.field private final requestMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ljava/util/concurrent/Future",
            "<*>;>;>;>;"
        }
    .end annotation
.end field

.field private threadPool:Ljava/util/concurrent/ThreadPoolExecutor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 104
    const/16 v0, 0xa

    sput v0, Lcom/pingan/paphone/extension/http/AsyncHttpClient;->maxConnections:I

    .line 105
    const/16 v0, 0x4e20

    sput v0, Lcom/pingan/paphone/extension/http/AsyncHttpClient;->socketTimeout:I

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 116
    sget v1, Lcom/pingan/paphone/extension/http/AsyncHttpClient;->socketTimeout:I

    int-to-long v2, v1

    invoke-static {v0, v2, v3}, Lorg/apache/http/conn/params/ConnManagerParams;->setTimeout(Lorg/apache/http/params/HttpParams;J)V

    .line 117
    new-instance v1, Lorg/apache/http/conn/params/ConnPerRouteBean;

    sget v2, Lcom/pingan/paphone/extension/http/AsyncHttpClient;->maxConnections:I

    invoke-direct {v1, v2}, Lorg/apache/http/conn/params/ConnPerRouteBean;-><init>(I)V

    invoke-static {v0, v1}, Lorg/apache/http/conn/params/ConnManagerParams;->setMaxConnectionsPerRoute(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/params/ConnPerRoute;)V

    .line 119
    const/16 v1, 0xa

    invoke-static {v0, v1}, Lorg/apache/http/conn/params/ConnManagerParams;->setMaxTotalConnections(Lorg/apache/http/params/HttpParams;I)V

    .line 122
    sget v1, Lcom/pingan/paphone/extension/http/AsyncHttpClient;->socketTimeout:I

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 123
    sget v1, Lcom/pingan/paphone/extension/http/AsyncHttpClient;->socketTimeout:I

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 124
    invoke-static {v0, v4}, Lorg/apache/http/params/HttpConnectionParams;->setTcpNoDelay(Lorg/apache/http/params/HttpParams;Z)V

    .line 125
    const/16 v1, 0x2000

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setSocketBufferSize(Lorg/apache/http/params/HttpParams;I)V

    .line 128
    sget-object v1, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpProtocolParams;->setVersion(Lorg/apache/http/params/HttpParams;Lorg/apache/http/ProtocolVersion;)V

    .line 129
    const-string v1, "android-async-http/%s (http://loopj.com/android-async-http)"

    new-array v2, v4, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "1.4.3"

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpProtocolParams;->setUserAgent(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 133
    invoke-static {}, Lcom/pingan/paphone/extension/http/AsyncHttpClient;->getSchemeRegistry()Lorg/apache/http/conn/scheme/SchemeRegistry;

    move-result-object v1

    .line 140
    new-instance v2, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-direct {v2, v0, v1}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    .line 143
    new-instance v1, Lorg/apache/http/protocol/SyncBasicHttpContext;

    new-instance v3, Lorg/apache/http/protocol/BasicHttpContext;

    invoke-direct {v3}, Lorg/apache/http/protocol/BasicHttpContext;-><init>()V

    invoke-direct {v1, v3}, Lorg/apache/http/protocol/SyncBasicHttpContext;-><init>(Lorg/apache/http/protocol/HttpContext;)V

    iput-object v1, p0, Lcom/pingan/paphone/extension/http/AsyncHttpClient;->httpContext:Lorg/apache/http/protocol/HttpContext;

    .line 144
    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1, v2, v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    iput-object v1, p0, Lcom/pingan/paphone/extension/http/AsyncHttpClient;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    .line 146
    iget-object v0, p0, Lcom/pingan/paphone/extension/http/AsyncHttpClient;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    new-instance v1, Lcom/pingan/paphone/extension/http/AsyncHttpClient$1;

    invoke-direct {v1, p0}, Lcom/pingan/paphone/extension/http/AsyncHttpClient$1;-><init>(Lcom/pingan/paphone/extension/http/AsyncHttpClient;)V

    invoke-virtual {v0, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->addRequestInterceptor(Lorg/apache/http/HttpRequestInterceptor;)V

    .line 158
    iget-object v0, p0, Lcom/pingan/paphone/extension/http/AsyncHttpClient;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    new-instance v1, Lcom/pingan/paphone/extension/http/AsyncHttpClient$2;

    invoke-direct {v1, p0}, Lcom/pingan/paphone/extension/http/AsyncHttpClient$2;-><init>(Lcom/pingan/paphone/extension/http/AsyncHttpClient;)V

    invoke-virtual {v0, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->addResponseInterceptor(Lorg/apache/http/HttpResponseInterceptor;)V

    .line 178
    iget-object v0, p0, Lcom/pingan/paphone/extension/http/AsyncHttpClient;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    new-instance v1, Lcom/pingan/paphone/extension/http/RetryHandler;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Lcom/pingan/paphone/extension/http/RetryHandler;-><init>(I)V

    invoke-virtual {v0, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->setHttpRequestRetryHandler(Lorg/apache/http/client/HttpRequestRetryHandler;)V

    .line 181
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ThreadPoolExecutor;

    iput-object v0, p0, Lcom/pingan/paphone/extension/http/AsyncHttpClient;->threadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 183
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/pingan/paphone/extension/http/AsyncHttpClient;->requestMap:Ljava/util/Map;

    .line 184
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/pingan/paphone/extension/http/AsyncHttpClient;->clientHeaderMap:Ljava/util/Map;

    .line 185
    return-void
.end method

.method static synthetic access$000(Lcom/pingan/paphone/extension/http/AsyncHttpClient;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/pingan/paphone/extension/http/AsyncHttpClient;->clientHeaderMap:Ljava/util/Map;

    return-object v0
.end method

.method private addEntityToRequestBase(Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;Lorg/apache/http/HttpEntity;)Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;
    .locals 0

    .prologue
    .line 729
    if-eqz p2, :cond_0

    .line 730
    invoke-virtual {p1, p2}, Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 733
    :cond_0
    return-object p1
.end method

.method public static createSSLSocketFactory()Lorg/apache/http/conn/ssl/SSLSocketFactory;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 216
    :try_start_0
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v0

    .line 215
    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v2

    .line 217
    const/4 v0, 0x0

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 218
    new-instance v0, Lcom/pingan/paphone/extension/http/MySSLSocketFactory;

    invoke-direct {v0, v2}, Lcom/pingan/paphone/extension/http/MySSLSocketFactory;-><init>(Ljava/security/KeyStore;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 219
    :try_start_1
    sget-object v1, Lcom/pingan/paphone/extension/http/MySSLSocketFactory;->ALLOW_ALL_HOSTNAME_VERIFIER:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    invoke-virtual {v0, v1}, Lcom/pingan/paphone/extension/http/MySSLSocketFactory;->setHostnameVerifier(Lorg/apache/http/conn/ssl/X509HostnameVerifier;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 223
    :goto_0
    return-object v0

    .line 221
    :catch_0
    move-exception v0

    move-object v4, v0

    move-object v0, v1

    move-object v1, v4

    :goto_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public static getSchemeRegistry()Lorg/apache/http/conn/scheme/SchemeRegistry;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 193
    :try_start_0
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v0

    .line 192
    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    .line 194
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 195
    new-instance v2, Lcom/pingan/paphone/extension/http/MySSLSocketFactory;

    invoke-direct {v2, v0}, Lcom/pingan/paphone/extension/http/MySSLSocketFactory;-><init>(Ljava/security/KeyStore;)V

    .line 196
    sget-object v0, Lorg/apache/http/conn/ssl/SSLSocketFactory;->ALLOW_ALL_HOSTNAME_VERIFIER:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    invoke-virtual {v2, v0}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->setHostnameVerifier(Lorg/apache/http/conn/ssl/X509HostnameVerifier;)V

    .line 197
    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 198
    const/16 v3, 0x7530

    invoke-static {v0, v3}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 199
    const/16 v3, 0x7530

    invoke-static {v0, v3}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 200
    sget-object v3, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    invoke-static {v0, v3}, Lorg/apache/http/params/HttpProtocolParams;->setVersion(Lorg/apache/http/params/HttpParams;Lorg/apache/http/ProtocolVersion;)V

    .line 201
    const-string v3, "UTF-8"

    invoke-static {v0, v3}, Lorg/apache/http/params/HttpProtocolParams;->setContentCharset(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 202
    new-instance v0, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v0}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    .line 203
    new-instance v3, Lorg/apache/http/conn/scheme/Scheme;

    const-string v4, "http"

    .line 204
    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v5

    const/16 v6, 0x50

    invoke-direct {v3, v4, v5, v6}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    .line 203
    invoke-virtual {v0, v3}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 205
    new-instance v3, Lorg/apache/http/conn/scheme/Scheme;

    const-string v4, "https"

    const/16 v5, 0x1bb

    invoke-direct {v3, v4, v2, v5}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v0, v3}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 208
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0
.end method

.method public static getUrlWithQueryString(Ljava/lang/String;Lcom/pingan/paphone/extension/http/RequestParams;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 227
    if-eqz p1, :cond_0

    .line 228
    invoke-virtual {p1}, Lcom/pingan/paphone/extension/http/RequestParams;->getParamString()Ljava/lang/String;

    move-result-object v0

    .line 229
    const-string v1, "?"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 230
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 236
    :cond_0
    :goto_0
    return-object p0

    .line 232
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method private paramsToEntity(Lcom/pingan/paphone/extension/http/RequestParams;)Lorg/apache/http/HttpEntity;
    .locals 1

    .prologue
    .line 718
    const/4 v0, 0x0

    .line 720
    if-eqz p1, :cond_0

    .line 721
    invoke-virtual {p1}, Lcom/pingan/paphone/extension/http/RequestParams;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    .line 724
    :cond_0
    return-object v0
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 320
    iget-object v0, p0, Lcom/pingan/paphone/extension/http/AsyncHttpClient;->clientHeaderMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    return-void
.end method

.method public cancelRequests(Landroid/content/Context;Z)V
    .locals 2

    .prologue
    .line 370
    iget-object v0, p0, Lcom/pingan/paphone/extension/http/AsyncHttpClient;->requestMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 371
    if-eqz v0, :cond_1

    .line 372
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 373
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Future;

    .line 374
    if-eqz v0, :cond_0

    .line 375
    invoke-interface {v0, p2}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_0

    .line 379
    :cond_1
    iget-object v0, p0, Lcom/pingan/paphone/extension/http/AsyncHttpClient;->requestMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 380
    return-void
.end method

.method public delete(Landroid/content/Context;Ljava/lang/String;Lcom/pingan/paphone/extension/http/AsyncHttpResponseHandler;)V
    .locals 7

    .prologue
    .line 668
    new-instance v3, Lorg/apache/http/client/methods/HttpDelete;

    invoke-direct {v3, p2}, Lorg/apache/http/client/methods/HttpDelete;-><init>(Ljava/lang/String;)V

    .line 669
    iget-object v1, p0, Lcom/pingan/paphone/extension/http/AsyncHttpClient;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    iget-object v2, p0, Lcom/pingan/paphone/extension/http/AsyncHttpClient;->httpContext:Lorg/apache/http/protocol/HttpContext;

    const/4 v4, 0x0

    move-object v0, p0

    move-object v5, p3

    move-object v6, p1

    invoke-virtual/range {v0 .. v6}, Lcom/pingan/paphone/extension/http/AsyncHttpClient;->sendRequest(Lorg/apache/http/impl/client/DefaultHttpClient;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/String;Lcom/pingan/paphone/extension/http/AsyncHttpResponseHandler;Landroid/content/Context;)V

    .line 671
    return-void
.end method

.method public delete(Landroid/content/Context;Ljava/lang/String;[Lorg/apache/http/Header;Lcom/pingan/paphone/extension/http/AsyncHttpResponseHandler;)V
    .locals 7

    .prologue
    .line 683
    new-instance v3, Lorg/apache/http/client/methods/HttpDelete;

    invoke-direct {v3, p2}, Lorg/apache/http/client/methods/HttpDelete;-><init>(Ljava/lang/String;)V

    .line 684
    if-eqz p3, :cond_0

    .line 685
    invoke-virtual {v3, p3}, Lorg/apache/http/client/methods/HttpDelete;->setHeaders([Lorg/apache/http/Header;)V

    .line 686
    :cond_0
    iget-object v1, p0, Lcom/pingan/paphone/extension/http/AsyncHttpClient;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    iget-object v2, p0, Lcom/pingan/paphone/extension/http/AsyncHttpClient;->httpContext:Lorg/apache/http/protocol/HttpContext;

    const/4 v4, 0x0

    move-object v0, p0

    move-object v5, p4

    move-object v6, p1

    invoke-virtual/range {v0 .. v6}, Lcom/pingan/paphone/extension/http/AsyncHttpClient;->sendRequest(Lorg/apache/http/impl/client/DefaultHttpClient;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/String;Lcom/pingan/paphone/extension/http/AsyncHttpResponseHandler;Landroid/content/Context;)V

    .line 688
    return-void
.end method

.method public delete(Ljava/lang/String;Lcom/pingan/paphone/extension/http/AsyncHttpResponseHandler;)V
    .locals 1

    .prologue
    .line 656
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, Lcom/pingan/paphone/extension/http/AsyncHttpClient;->delete(Landroid/content/Context;Ljava/lang/String;Lcom/pingan/paphone/extension/http/AsyncHttpResponseHandler;)V

    .line 657
    return-void
.end method

.method public get(Landroid/content/Context;Ljava/lang/String;Lcom/pingan/paphone/extension/http/AsyncHttpResponseHandler;)V
    .locals 1

    .prologue
    .line 414
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/pingan/paphone/extension/http/AsyncHttpClient;->get(Landroid/content/Context;Ljava/lang/String;Lcom/pingan/paphone/extension/http/RequestParams;Lcom/pingan/paphone/extension/http/AsyncHttpResponseHandler;)V

    .line 415
    return-void
.end method

.method public get(Landroid/content/Context;Ljava/lang/String;Lcom/pingan/paphone/extension/http/RequestParams;Lcom/pingan/paphone/extension/http/AsyncHttpResponseHandler;)V
    .locals 7

    .prologue
    .line 428
    iget-object v1, p0, Lcom/pingan/paphone/extension/http/AsyncHttpClient;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    iget-object v2, p0, Lcom/pingan/paphone/extension/http/AsyncHttpClient;->httpContext:Lorg/apache/http/protocol/HttpContext;

    new-instance v3, Lorg/apache/http/client/methods/HttpGet;

    .line 429
    invoke-static {p2, p3}, Lcom/pingan/paphone/extension/http/AsyncHttpClient;->getUrlWithQueryString(Ljava/lang/String;Lcom/pingan/paphone/extension/http/RequestParams;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    move-object v0, p0

    move-object v5, p4

    move-object v6, p1

    .line 428
    invoke-virtual/range {v0 .. v6}, Lcom/pingan/paphone/extension/http/AsyncHttpClient;->sendRequest(Lorg/apache/http/impl/client/DefaultHttpClient;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/String;Lcom/pingan/paphone/extension/http/AsyncHttpResponseHandler;Landroid/content/Context;)V

    .line 431
    return-void
.end method

.method public get(Landroid/content/Context;Ljava/lang/String;[Lorg/apache/http/Header;Lcom/pingan/paphone/extension/http/RequestParams;Lcom/pingan/paphone/extension/http/AsyncHttpResponseHandler;)V
    .locals 7

    .prologue
    .line 448
    new-instance v3, Lorg/apache/http/client/methods/HttpGet;

    invoke-static {p2, p4}, Lcom/pingan/paphone/extension/http/AsyncHttpClient;->getUrlWithQueryString(Ljava/lang/String;Lcom/pingan/paphone/extension/http/RequestParams;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 449
    if-eqz p3, :cond_0

    .line 450
    invoke-interface {v3, p3}, Lorg/apache/http/client/methods/HttpUriRequest;->setHeaders([Lorg/apache/http/Header;)V

    .line 451
    :cond_0
    iget-object v1, p0, Lcom/pingan/paphone/extension/http/AsyncHttpClient;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    iget-object v2, p0, Lcom/pingan/paphone/extension/http/AsyncHttpClient;->httpContext:Lorg/apache/http/protocol/HttpContext;

    const/4 v4, 0x0

    move-object v0, p0

    move-object v5, p5

    move-object v6, p1

    invoke-virtual/range {v0 .. v6}, Lcom/pingan/paphone/extension/http/AsyncHttpClient;->sendRequest(Lorg/apache/http/impl/client/DefaultHttpClient;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/String;Lcom/pingan/paphone/extension/http/AsyncHttpResponseHandler;Landroid/content/Context;)V

    .line 453
    return-void
.end method

.method public get(Ljava/lang/String;Lcom/pingan/paphone/extension/http/AsyncHttpResponseHandler;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 389
    invoke-virtual {p0, v0, p1, v0, p2}, Lcom/pingan/paphone/extension/http/AsyncHttpClient;->get(Landroid/content/Context;Ljava/lang/String;Lcom/pingan/paphone/extension/http/RequestParams;Lcom/pingan/paphone/extension/http/AsyncHttpResponseHandler;)V

    .line 390
    return-void
.end method

.method public get(Ljava/lang/String;Lcom/pingan/paphone/extension/http/RequestParams;Lcom/pingan/paphone/extension/http/AsyncHttpResponseHandler;)V
    .locals 1

    .prologue
    .line 401
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/pingan/paphone/extension/http/AsyncHttpClient;->get(Landroid/content/Context;Ljava/lang/String;Lcom/pingan/paphone/extension/http/RequestParams;Lcom/pingan/paphone/extension/http/AsyncHttpResponseHandler;)V

    .line 402
    return-void
.end method

.method public getHttpClient()Lorg/apache/http/client/HttpClient;
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lcom/pingan/paphone/extension/http/AsyncHttpClient;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    return-object v0
.end method

.method public getHttpContext()Lorg/apache/http/protocol/HttpContext;
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lcom/pingan/paphone/extension/http/AsyncHttpClient;->httpContext:Lorg/apache/http/protocol/HttpContext;

    return-object v0
.end method

.method public post(Landroid/content/Context;Ljava/lang/String;Lcom/pingan/paphone/extension/http/RequestParams;Lcom/pingan/paphone/extension/http/AsyncHttpResponseHandler;)V
    .locals 6

    .prologue
    .line 488
    invoke-direct {p0, p3}, Lcom/pingan/paphone/extension/http/AsyncHttpClient;->paramsToEntity(Lcom/pingan/paphone/extension/http/RequestParams;)Lorg/apache/http/HttpEntity;

    move-result-object v3

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/pingan/paphone/extension/http/AsyncHttpClient;->post(Landroid/content/Context;Ljava/lang/String;Lorg/apache/http/HttpEntity;Ljava/lang/String;Lcom/pingan/paphone/extension/http/AsyncHttpResponseHandler;)V

    .line 489
    return-void
.end method

.method public post(Landroid/content/Context;Ljava/lang/String;Lorg/apache/http/HttpEntity;Ljava/lang/String;Lcom/pingan/paphone/extension/http/AsyncHttpResponseHandler;)V
    .locals 7

    .prologue
    .line 506
    iget-object v1, p0, Lcom/pingan/paphone/extension/http/AsyncHttpClient;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    iget-object v2, p0, Lcom/pingan/paphone/extension/http/AsyncHttpClient;->httpContext:Lorg/apache/http/protocol/HttpContext;

    new-instance v0, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v0, p2}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 507
    invoke-direct {p0, v0, p3}, Lcom/pingan/paphone/extension/http/AsyncHttpClient;->addEntityToRequestBase(Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;Lorg/apache/http/HttpEntity;)Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;

    move-result-object v3

    move-object v0, p0

    move-object v4, p4

    move-object v5, p5

    move-object v6, p1

    .line 506
    invoke-virtual/range {v0 .. v6}, Lcom/pingan/paphone/extension/http/AsyncHttpClient;->sendRequest(Lorg/apache/http/impl/client/DefaultHttpClient;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/String;Lcom/pingan/paphone/extension/http/AsyncHttpResponseHandler;Landroid/content/Context;)V

    .line 509
    return-void
.end method

.method public post(Landroid/content/Context;Ljava/lang/String;[Lorg/apache/http/Header;Lcom/pingan/paphone/extension/http/RequestParams;Ljava/lang/String;Lcom/pingan/paphone/extension/http/AsyncHttpResponseHandler;)V
    .locals 7

    .prologue
    .line 526
    new-instance v3, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v3, p2}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 527
    if-eqz p4, :cond_0

    .line 528
    invoke-direct {p0, p4}, Lcom/pingan/paphone/extension/http/AsyncHttpClient;->paramsToEntity(Lcom/pingan/paphone/extension/http/RequestParams;)Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 529
    :cond_0
    if-eqz p3, :cond_1

    .line 530
    invoke-virtual {v3, p3}, Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;->setHeaders([Lorg/apache/http/Header;)V

    .line 531
    :cond_1
    iget-object v1, p0, Lcom/pingan/paphone/extension/http/AsyncHttpClient;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    iget-object v2, p0, Lcom/pingan/paphone/extension/http/AsyncHttpClient;->httpContext:Lorg/apache/http/protocol/HttpContext;

    move-object v0, p0

    move-object v4, p5

    move-object v5, p6

    move-object v6, p1

    invoke-virtual/range {v0 .. v6}, Lcom/pingan/paphone/extension/http/AsyncHttpClient;->sendRequest(Lorg/apache/http/impl/client/DefaultHttpClient;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/String;Lcom/pingan/paphone/extension/http/AsyncHttpResponseHandler;Landroid/content/Context;)V

    .line 533
    return-void
.end method

.method public post(Landroid/content/Context;Ljava/lang/String;[Lorg/apache/http/Header;Lorg/apache/http/HttpEntity;Ljava/lang/String;Lcom/pingan/paphone/extension/http/AsyncHttpResponseHandler;)V
    .locals 7

    .prologue
    .line 556
    new-instance v0, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v0, p2}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, p4}, Lcom/pingan/paphone/extension/http/AsyncHttpClient;->addEntityToRequestBase(Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;Lorg/apache/http/HttpEntity;)Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;

    move-result-object v3

    .line 558
    if-eqz p3, :cond_0

    .line 559
    invoke-virtual {v3, p3}, Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;->setHeaders([Lorg/apache/http/Header;)V

    .line 560
    :cond_0
    iget-object v1, p0, Lcom/pingan/paphone/extension/http/AsyncHttpClient;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    iget-object v2, p0, Lcom/pingan/paphone/extension/http/AsyncHttpClient;->httpContext:Lorg/apache/http/protocol/HttpContext;

    move-object v0, p0

    move-object v4, p5

    move-object v5, p6

    move-object v6, p1

    invoke-virtual/range {v0 .. v6}, Lcom/pingan/paphone/extension/http/AsyncHttpClient;->sendRequest(Lorg/apache/http/impl/client/DefaultHttpClient;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/String;Lcom/pingan/paphone/extension/http/AsyncHttpResponseHandler;Landroid/content/Context;)V

    .line 562
    return-void
.end method

.method public post(Ljava/lang/String;Lcom/pingan/paphone/extension/http/AsyncHttpResponseHandler;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 462
    invoke-virtual {p0, v0, p1, v0, p2}, Lcom/pingan/paphone/extension/http/AsyncHttpClient;->post(Landroid/content/Context;Ljava/lang/String;Lcom/pingan/paphone/extension/http/RequestParams;Lcom/pingan/paphone/extension/http/AsyncHttpResponseHandler;)V

    .line 463
    return-void
.end method

.method public post(Ljava/lang/String;Lcom/pingan/paphone/extension/http/RequestParams;Lcom/pingan/paphone/extension/http/AsyncHttpResponseHandler;)V
    .locals 1

    .prologue
    .line 474
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/pingan/paphone/extension/http/AsyncHttpClient;->post(Landroid/content/Context;Ljava/lang/String;Lcom/pingan/paphone/extension/http/RequestParams;Lcom/pingan/paphone/extension/http/AsyncHttpResponseHandler;)V

    .line 475
    return-void
.end method

.method public put(Landroid/content/Context;Ljava/lang/String;Lcom/pingan/paphone/extension/http/RequestParams;Lcom/pingan/paphone/extension/http/AsyncHttpResponseHandler;)V
    .locals 6

    .prologue
    .line 597
    invoke-direct {p0, p3}, Lcom/pingan/paphone/extension/http/AsyncHttpClient;->paramsToEntity(Lcom/pingan/paphone/extension/http/RequestParams;)Lorg/apache/http/HttpEntity;

    move-result-object v3

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/pingan/paphone/extension/http/AsyncHttpClient;->put(Landroid/content/Context;Ljava/lang/String;Lorg/apache/http/HttpEntity;Ljava/lang/String;Lcom/pingan/paphone/extension/http/AsyncHttpResponseHandler;)V

    .line 598
    return-void
.end method

.method public put(Landroid/content/Context;Ljava/lang/String;Lorg/apache/http/HttpEntity;Ljava/lang/String;Lcom/pingan/paphone/extension/http/AsyncHttpResponseHandler;)V
    .locals 7

    .prologue
    .line 615
    iget-object v1, p0, Lcom/pingan/paphone/extension/http/AsyncHttpClient;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    iget-object v2, p0, Lcom/pingan/paphone/extension/http/AsyncHttpClient;->httpContext:Lorg/apache/http/protocol/HttpContext;

    new-instance v0, Lorg/apache/http/client/methods/HttpPut;

    invoke-direct {v0, p2}, Lorg/apache/http/client/methods/HttpPut;-><init>(Ljava/lang/String;)V

    .line 616
    invoke-direct {p0, v0, p3}, Lcom/pingan/paphone/extension/http/AsyncHttpClient;->addEntityToRequestBase(Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;Lorg/apache/http/HttpEntity;)Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;

    move-result-object v3

    move-object v0, p0

    move-object v4, p4

    move-object v5, p5

    move-object v6, p1

    .line 615
    invoke-virtual/range {v0 .. v6}, Lcom/pingan/paphone/extension/http/AsyncHttpClient;->sendRequest(Lorg/apache/http/impl/client/DefaultHttpClient;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/String;Lcom/pingan/paphone/extension/http/AsyncHttpResponseHandler;Landroid/content/Context;)V

    .line 618
    return-void
.end method

.method public put(Landroid/content/Context;Ljava/lang/String;[Lorg/apache/http/Header;Lorg/apache/http/HttpEntity;Ljava/lang/String;Lcom/pingan/paphone/extension/http/AsyncHttpResponseHandler;)V
    .locals 7

    .prologue
    .line 641
    new-instance v0, Lorg/apache/http/client/methods/HttpPut;

    invoke-direct {v0, p2}, Lorg/apache/http/client/methods/HttpPut;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, p4}, Lcom/pingan/paphone/extension/http/AsyncHttpClient;->addEntityToRequestBase(Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;Lorg/apache/http/HttpEntity;)Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;

    move-result-object v3

    .line 643
    if-eqz p3, :cond_0

    .line 644
    invoke-virtual {v3, p3}, Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;->setHeaders([Lorg/apache/http/Header;)V

    .line 645
    :cond_0
    iget-object v1, p0, Lcom/pingan/paphone/extension/http/AsyncHttpClient;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    iget-object v2, p0, Lcom/pingan/paphone/extension/http/AsyncHttpClient;->httpContext:Lorg/apache/http/protocol/HttpContext;

    move-object v0, p0

    move-object v4, p5

    move-object v5, p6

    move-object v6, p1

    invoke-virtual/range {v0 .. v6}, Lcom/pingan/paphone/extension/http/AsyncHttpClient;->sendRequest(Lorg/apache/http/impl/client/DefaultHttpClient;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/String;Lcom/pingan/paphone/extension/http/AsyncHttpResponseHandler;Landroid/content/Context;)V

    .line 647
    return-void
.end method

.method public put(Ljava/lang/String;Lcom/pingan/paphone/extension/http/AsyncHttpResponseHandler;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 571
    invoke-virtual {p0, v0, p1, v0, p2}, Lcom/pingan/paphone/extension/http/AsyncHttpClient;->put(Landroid/content/Context;Ljava/lang/String;Lcom/pingan/paphone/extension/http/RequestParams;Lcom/pingan/paphone/extension/http/AsyncHttpResponseHandler;)V

    .line 572
    return-void
.end method

.method public put(Ljava/lang/String;Lcom/pingan/paphone/extension/http/RequestParams;Lcom/pingan/paphone/extension/http/AsyncHttpResponseHandler;)V
    .locals 1

    .prologue
    .line 583
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/pingan/paphone/extension/http/AsyncHttpClient;->put(Landroid/content/Context;Ljava/lang/String;Lcom/pingan/paphone/extension/http/RequestParams;Lcom/pingan/paphone/extension/http/AsyncHttpResponseHandler;)V

    .line 584
    return-void
.end method

.method protected sendRequest(Lorg/apache/http/impl/client/DefaultHttpClient;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/String;Lcom/pingan/paphone/extension/http/AsyncHttpResponseHandler;Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 695
    if-eqz p4, :cond_0

    .line 696
    const-string v0, "Content-Type"

    invoke-interface {p3, v0, p4}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 699
    :cond_0
    iget-object v0, p0, Lcom/pingan/paphone/extension/http/AsyncHttpClient;->threadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/pingan/paphone/extension/http/AsyncHttpRequest;

    invoke-direct {v1, p1, p2, p3, p5}, Lcom/pingan/paphone/extension/http/AsyncHttpRequest;-><init>(Lorg/apache/http/impl/client/AbstractHttpClient;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/client/methods/HttpUriRequest;Lcom/pingan/paphone/extension/http/AsyncHttpResponseHandler;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    .line 702
    if-eqz p6, :cond_2

    .line 704
    iget-object v0, p0, Lcom/pingan/paphone/extension/http/AsyncHttpClient;->requestMap:Ljava/util/Map;

    .line 705
    invoke-interface {v0, p6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 706
    if-nez v0, :cond_1

    .line 707
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 708
    iget-object v2, p0, Lcom/pingan/paphone/extension/http/AsyncHttpClient;->requestMap:Ljava/util/Map;

    invoke-interface {v2, p6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 711
    :cond_1
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 715
    :cond_2
    return-void
.end method

.method public setBasicAuth(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 331
    sget-object v0, Lorg/apache/http/auth/AuthScope;->ANY:Lorg/apache/http/auth/AuthScope;

    .line 332
    invoke-virtual {p0, p1, p2, v0}, Lcom/pingan/paphone/extension/http/AsyncHttpClient;->setBasicAuth(Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/auth/AuthScope;)V

    .line 333
    return-void
.end method

.method public setBasicAuth(Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/auth/AuthScope;)V
    .locals 2

    .prologue
    .line 346
    new-instance v0, Lorg/apache/http/auth/UsernamePasswordCredentials;

    invoke-direct {v0, p1, p2}, Lorg/apache/http/auth/UsernamePasswordCredentials;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    iget-object v1, p0, Lcom/pingan/paphone/extension/http/AsyncHttpClient;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->getCredentialsProvider()Lorg/apache/http/client/CredentialsProvider;

    move-result-object v1

    invoke-interface {v1, p3, v0}, Lorg/apache/http/client/CredentialsProvider;->setCredentials(Lorg/apache/http/auth/AuthScope;Lorg/apache/http/auth/Credentials;)V

    .line 350
    return-void
.end method

.method public setCookieStore(Lorg/apache/http/client/CookieStore;)V
    .locals 2

    .prologue
    .line 264
    iget-object v0, p0, Lcom/pingan/paphone/extension/http/AsyncHttpClient;->httpContext:Lorg/apache/http/protocol/HttpContext;

    const-string v1, "http.cookie-store"

    invoke-interface {v0, v1, p1}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 265
    return-void
.end method

.method public setSSLSocketFactory(Lorg/apache/http/conn/ssl/SSLSocketFactory;)V
    .locals 4

    .prologue
    .line 308
    iget-object v0, p0, Lcom/pingan/paphone/extension/http/AsyncHttpClient;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->getSchemeRegistry()Lorg/apache/http/conn/scheme/SchemeRegistry;

    move-result-object v0

    new-instance v1, Lorg/apache/http/conn/scheme/Scheme;

    const-string v2, "https"

    const/16 v3, 0x1bb

    invoke-direct {v1, v2, p1, v3}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    .line 309
    invoke-virtual {v0, v1}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 310
    return-void
.end method

.method public setThreadPool(Ljava/util/concurrent/ThreadPoolExecutor;)V
    .locals 0

    .prologue
    .line 275
    iput-object p1, p0, Lcom/pingan/paphone/extension/http/AsyncHttpClient;->threadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 276
    return-void
.end method

.method public setTimeout(I)V
    .locals 4

    .prologue
    .line 295
    iget-object v0, p0, Lcom/pingan/paphone/extension/http/AsyncHttpClient;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    .line 296
    int-to-long v2, p1

    invoke-static {v0, v2, v3}, Lorg/apache/http/conn/params/ConnManagerParams;->setTimeout(Lorg/apache/http/params/HttpParams;J)V

    .line 297
    invoke-static {v0, p1}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 298
    invoke-static {v0, p1}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 299
    return-void
.end method

.method public setUserAgent(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 286
    iget-object v0, p0, Lcom/pingan/paphone/extension/http/AsyncHttpClient;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/apache/http/params/HttpProtocolParams;->setUserAgent(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 287
    return-void
.end method
