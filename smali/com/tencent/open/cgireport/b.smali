.class final Lcom/tencent/open/cgireport/b;
.super Ljava/lang/Thread;
.source "ProGuard"


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Landroid/os/Bundle;

.field final synthetic d:Lcom/tencent/open/cgireport/ReportManager;


# direct methods
.method constructor <init>(Lcom/tencent/open/cgireport/ReportManager;Ljava/lang/String;Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 317
    iput-object p1, p0, Lcom/tencent/open/cgireport/b;->d:Lcom/tencent/open/cgireport/ReportManager;

    iput-object p2, p0, Lcom/tencent/open/cgireport/b;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/tencent/open/cgireport/b;->b:Landroid/content/Context;

    iput-object p4, p0, Lcom/tencent/open/cgireport/b;->c:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 319
    const-string v0, "cgi_report_debug"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "ReportManager doUploadItems Thread start, url = "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/tencent/open/cgireport/b;->a:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    iget-object v0, p0, Lcom/tencent/open/cgireport/b;->d:Lcom/tencent/open/cgireport/ReportManager;

    iget-object v2, p0, Lcom/tencent/open/cgireport/b;->b:Landroid/content/Context;

    invoke-static {v2, v5}, Lcom/tencent/open/OpenConfig;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/tencent/open/OpenConfig;

    move-result-object v2

    const-string v4, "Common_HttpRetryCount"

    invoke-virtual {v2, v4}, Lcom/tencent/open/OpenConfig;->b(Ljava/lang/String;)I

    move-result v2

    invoke-static {v0, v2}, Lcom/tencent/open/cgireport/ReportManager;->a(Lcom/tencent/open/cgireport/ReportManager;I)I

    .line 322
    iget-object v2, p0, Lcom/tencent/open/cgireport/b;->d:Lcom/tencent/open/cgireport/ReportManager;

    iget-object v0, p0, Lcom/tencent/open/cgireport/b;->d:Lcom/tencent/open/cgireport/ReportManager;

    invoke-static {v0}, Lcom/tencent/open/cgireport/ReportManager;->a(Lcom/tencent/open/cgireport/ReportManager;)I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x3

    :goto_0
    invoke-static {v2, v0}, Lcom/tencent/open/cgireport/ReportManager;->a(Lcom/tencent/open/cgireport/ReportManager;I)I

    move v0, v1

    move v2, v1

    .line 326
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 327
    const-string v4, "cgi_report_debug"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "ReportManager doUploadItems Thread request count = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    :try_start_0
    iget-object v4, p0, Lcom/tencent/open/cgireport/b;->b:Landroid/content/Context;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/tencent/open/cgireport/b;->a:Ljava/lang/String;

    invoke-static {v4, v5, v6}, Lcom/tencent/open/Util;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/client/HttpClient;

    move-result-object v4

    .line 335
    new-instance v5, Lorg/apache/http/client/methods/HttpPost;

    iget-object v6, p0, Lcom/tencent/open/cgireport/b;->a:Ljava/lang/String;

    invoke-direct {v5, v6}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 336
    const-string v6, "Accept-Encoding"

    const-string v7, "gzip"

    invoke-virtual {v5, v6, v7}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    const-string v6, "Content-Type"

    const-string v7, "application/x-www-form-urlencoded"

    invoke-virtual {v5, v6, v7}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    iget-object v6, p0, Lcom/tencent/open/cgireport/b;->c:Landroid/os/Bundle;

    invoke-static {v6}, Lcom/tencent/open/Util;->a(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v6

    .line 340
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    .line 341
    new-instance v7, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-direct {v7, v6}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    .line 342
    invoke-virtual {v5, v7}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 345
    invoke-interface {v4, v5}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v4

    .line 346
    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v4

    .line 347
    invoke-interface {v4}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v4

    .line 349
    const/16 v5, 0xc8

    if-eq v4, v5, :cond_2

    .line 350
    const-string v4, "cgi_report_debug"

    const-string v5, "ReportManager doUploadItems : HttpStatuscode != 200"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 371
    :goto_1
    iget-object v2, p0, Lcom/tencent/open/cgireport/b;->d:Lcom/tencent/open/cgireport/ReportManager;

    invoke-static {v2, v1}, Lcom/tencent/open/cgireport/ReportManager;->a(Lcom/tencent/open/cgireport/ReportManager;Z)Z

    .line 372
    const-string v1, "cgi_report_debug"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "ReportManager doUploadItems Thread end, url = "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/tencent/open/cgireport/b;->a:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    if-ne v0, v3, :cond_3

    .line 375
    const-string v0, "cgi_report_debug"

    const-string v1, "ReportManager doUploadItems Thread request success"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    :goto_2
    return-void

    .line 322
    :cond_1
    iget-object v0, p0, Lcom/tencent/open/cgireport/b;->d:Lcom/tencent/open/cgireport/ReportManager;

    invoke-static {v0}, Lcom/tencent/open/cgireport/ReportManager;->a(Lcom/tencent/open/cgireport/ReportManager;)I

    move-result v0

    goto/16 :goto_0

    .line 353
    :cond_2
    :try_start_1
    const-string v0, "cgi_report_debug"

    const-string v4, "ReportManager doUploadItems Thread success"

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    move v0, v3

    .line 355
    goto :goto_1

    .line 358
    :catch_0
    move-exception v4

    :goto_3
    invoke-virtual {v4}, Lorg/apache/http/conn/ConnectTimeoutException;->printStackTrace()V

    .line 359
    const-string v4, "cgi_report_debug"

    const-string v5, "ReportManager doUploadItems : ConnectTimeoutException"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    :goto_4
    iget-object v4, p0, Lcom/tencent/open/cgireport/b;->d:Lcom/tencent/open/cgireport/ReportManager;

    invoke-static {v4}, Lcom/tencent/open/cgireport/ReportManager;->a(Lcom/tencent/open/cgireport/ReportManager;)I

    move-result v4

    if-lt v2, v4, :cond_0

    goto :goto_1

    .line 361
    :catch_1
    move-exception v4

    :goto_5
    invoke-virtual {v4}, Ljava/net/SocketTimeoutException;->printStackTrace()V

    goto :goto_4

    .line 363
    :catch_2
    move-exception v2

    :goto_6
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 365
    const-string v2, "cgi_report_debug"

    const-string v4, "ReportManager doUploadItems : Exception"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 377
    :cond_3
    const-string v0, "cgi_report_debug"

    const-string v1, "ReportManager doUploadItems Thread request failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    iget-object v0, p0, Lcom/tencent/open/cgireport/b;->d:Lcom/tencent/open/cgireport/ReportManager;

    invoke-static {v0}, Lcom/tencent/open/cgireport/ReportManager;->c(Lcom/tencent/open/cgireport/ReportManager;)Lcom/tencent/open/cgireport/ReportDataModal;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/open/cgireport/b;->d:Lcom/tencent/open/cgireport/ReportManager;

    invoke-static {v1}, Lcom/tencent/open/cgireport/ReportManager;->b(Lcom/tencent/open/cgireport/ReportManager;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/open/cgireport/ReportDataModal;->a(Ljava/util/ArrayList;)I

    goto :goto_2

    .line 363
    :catch_3
    move-exception v0

    move-object v2, v0

    move v0, v3

    goto :goto_6

    .line 361
    :catch_4
    move-exception v0

    move-object v4, v0

    move v0, v3

    goto :goto_5

    .line 358
    :catch_5
    move-exception v0

    move-object v4, v0

    move v0, v3

    goto :goto_3
.end method
