.class final Lorg/apache/cordova/l$1;
.super Ljava/lang/Object;
.source "CordovaWebViewClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/cordova/l;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
.end annotation


# instance fields
.field final synthetic a:Lorg/apache/cordova/l;


# direct methods
.method constructor <init>(Lorg/apache/cordova/l;)V
    .locals 0

    .prologue
    .line 220
    iput-object p1, p0, Lorg/apache/cordova/l$1;->a:Lorg/apache/cordova/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 223
    const-wide/16 v0, 0x7d0

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 224
    iget-object v0, p0, Lorg/apache/cordova/l$1;->a:Lorg/apache/cordova/l;

    iget-object v0, v0, Lorg/apache/cordova/l;->cordova:Lorg/apache/cordova/f;

    invoke-interface {v0}, Lorg/apache/cordova/f;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lorg/apache/cordova/l$1$1;

    invoke-direct {v1, p0}, Lorg/apache/cordova/l$1$1;-><init>(Lorg/apache/cordova/l$1;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 231
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
