.class final Lorg/apache/cordova/e$7;
.super Ljava/lang/Object;
.source "CordovaChromeClient.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/cordova/e;->onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
.end annotation


# instance fields
.field final synthetic a:Landroid/webkit/JsResult;

.field final synthetic b:Lorg/apache/cordova/e;


# direct methods
.method constructor <init>(Lorg/apache/cordova/e;Landroid/webkit/JsResult;)V
    .locals 0

    .prologue
    .line 178
    iput-object p1, p0, Lorg/apache/cordova/e$7;->b:Lorg/apache/cordova/e;

    iput-object p2, p0, Lorg/apache/cordova/e$7;->a:Landroid/webkit/JsResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 181
    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    .line 183
    iget-object v0, p0, Lorg/apache/cordova/e$7;->a:Landroid/webkit/JsResult;

    invoke-virtual {v0}, Landroid/webkit/JsResult;->cancel()V

    .line 184
    const/4 v0, 0x0

    .line 187
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
