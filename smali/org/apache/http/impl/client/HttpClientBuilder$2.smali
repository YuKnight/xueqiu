.class Lorg/apache/http/impl/client/HttpClientBuilder$2;
.super Ljava/lang/Object;
.source "HttpClientBuilder.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/http/impl/client/HttpClientBuilder;->build()Lorg/apache/http/impl/client/CloseableHttpClient;
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/http/impl/client/HttpClientBuilder;

.field final synthetic val$cm:Lorg/apache/http/conn/HttpClientConnectionManager;


# direct methods
.method constructor <init>(Lorg/apache/http/impl/client/HttpClientBuilder;Lorg/apache/http/conn/HttpClientConnectionManager;)V
    .locals 0

    .prologue
    .line 1210
    iput-object p1, p0, Lorg/apache/http/impl/client/HttpClientBuilder$2;->this$0:Lorg/apache/http/impl/client/HttpClientBuilder;

    iput-object p2, p0, Lorg/apache/http/impl/client/HttpClientBuilder$2;->val$cm:Lorg/apache/http/conn/HttpClientConnectionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 1214
    iget-object v0, p0, Lorg/apache/http/impl/client/HttpClientBuilder$2;->val$cm:Lorg/apache/http/conn/HttpClientConnectionManager;

    invoke-interface {v0}, Lorg/apache/http/conn/HttpClientConnectionManager;->shutdown()V

    .line 1215
    return-void
.end method
