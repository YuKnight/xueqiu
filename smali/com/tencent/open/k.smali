.class final Lcom/tencent/open/k;
.super Ljava/lang/Thread;
.source "ProGuard"


# instance fields
.field final synthetic a:Landroid/os/Bundle;

.field final synthetic b:Lcom/tencent/open/OpenConfig;


# direct methods
.method constructor <init>(Lcom/tencent/open/OpenConfig;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 186
    iput-object p1, p0, Lcom/tencent/open/k;->b:Lcom/tencent/open/OpenConfig;

    iput-object p2, p0, Lcom/tencent/open/k;->a:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 190
    :try_start_0
    iget-object v0, p0, Lcom/tencent/open/k;->b:Lcom/tencent/open/OpenConfig;

    invoke-static {v0}, Lcom/tencent/open/OpenConfig;->a(Lcom/tencent/open/OpenConfig;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "http://cgi.connect.qq.com/qqconnectopen/openapi/policy_conf"

    const-string v2, "GET"

    iget-object v3, p0, Lcom/tencent/open/k;->a:Landroid/os/Bundle;

    invoke-static {v0, v1, v2, v3}, Lcom/tencent/open/Util;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lcom/tencent/open/Util$Statistic;

    move-result-object v0

    .line 192
    iget-object v0, v0, Lcom/tencent/open/Util$Statistic;->a:Ljava/lang/String;

    .line 200
    invoke-static {v0}, Lcom/tencent/open/Util;->d(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 201
    iget-object v1, p0, Lcom/tencent/open/k;->b:Lcom/tencent/open/OpenConfig;

    invoke-static {v1, v0}, Lcom/tencent/open/OpenConfig;->a(Lcom/tencent/open/OpenConfig;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 205
    :goto_0
    iget-object v0, p0, Lcom/tencent/open/k;->b:Lcom/tencent/open/OpenConfig;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/tencent/open/OpenConfig;->a(Lcom/tencent/open/OpenConfig;I)I

    .line 206
    return-void

    .line 203
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
