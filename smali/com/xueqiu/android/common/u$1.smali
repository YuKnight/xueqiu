.class final Lcom/xueqiu/android/common/u$1;
.super Ljava/lang/Object;
.source "SNBWebChromeClient.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/common/u;->a(ZLjava/lang/String;Landroid/webkit/JsResult;)V
.end annotation


# instance fields
.field final synthetic a:Landroid/webkit/JsResult;

.field final synthetic b:Lcom/xueqiu/android/common/u;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/common/u;Landroid/webkit/JsResult;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/xueqiu/android/common/u$1;->b:Lcom/xueqiu/android/common/u;

    iput-object p2, p0, Lcom/xueqiu/android/common/u$1;->a:Landroid/webkit/JsResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/xueqiu/android/common/u$1;->a:Landroid/webkit/JsResult;

    invoke-virtual {v0}, Landroid/webkit/JsResult;->confirm()V

    .line 50
    return-void
.end method
