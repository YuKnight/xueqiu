.class Lcom/pingan/paphone/extension/http/SyncHttpClient$1;
.super Lcom/pingan/paphone/extension/http/AsyncHttpResponseHandler;
.source "SyncHttpClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pingan/paphone/extension/http/SyncHttpClient;
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pingan/paphone/extension/http/SyncHttpClient;


# direct methods
.method constructor <init>(Lcom/pingan/paphone/extension/http/SyncHttpClient;)V
    .locals 0

    .prologue
    .line 18
    iput-object p1, p0, Lcom/pingan/paphone/extension/http/SyncHttpClient$1;->this$0:Lcom/pingan/paphone/extension/http/SyncHttpClient;

    invoke-direct {p0}, Lcom/pingan/paphone/extension/http/AsyncHttpResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 44
    iget-object v0, p0, Lcom/pingan/paphone/extension/http/SyncHttpClient$1;->this$0:Lcom/pingan/paphone/extension/http/SyncHttpClient;

    iget-object v1, p0, Lcom/pingan/paphone/extension/http/SyncHttpClient$1;->this$0:Lcom/pingan/paphone/extension/http/SyncHttpClient;

    invoke-virtual {v1, p1, p2}, Lcom/pingan/paphone/extension/http/SyncHttpClient;->onRequestFailed(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/pingan/paphone/extension/http/SyncHttpClient;->result:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/pingan/paphone/extension/http/SyncHttpClient$1;->this$0:Lcom/pingan/paphone/extension/http/SyncHttpClient;

    iput-object p1, v0, Lcom/pingan/paphone/extension/http/SyncHttpClient;->result:Ljava/lang/String;

    .line 40
    return-void
.end method

.method protected sendMessage(Landroid/os/Message;)V
    .locals 0

    .prologue
    .line 34
    invoke-virtual {p0, p1}, Lcom/pingan/paphone/extension/http/SyncHttpClient$1;->handleMessage(Landroid/os/Message;)V

    .line 35
    return-void
.end method

.method sendResponseMessage(Lorg/apache/http/HttpResponse;)V
    .locals 2

    .prologue
    .line 22
    iget-object v0, p0, Lcom/pingan/paphone/extension/http/SyncHttpClient$1;->this$0:Lcom/pingan/paphone/extension/http/SyncHttpClient;

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    # setter for: Lcom/pingan/paphone/extension/http/SyncHttpClient;->responseCode:I
    invoke-static {v0, v1}, Lcom/pingan/paphone/extension/http/SyncHttpClient;->access$002(Lcom/pingan/paphone/extension/http/SyncHttpClient;I)I

    .line 23
    invoke-super {p0, p1}, Lcom/pingan/paphone/extension/http/AsyncHttpResponseHandler;->sendResponseMessage(Lorg/apache/http/HttpResponse;)V

    .line 24
    return-void
.end method
