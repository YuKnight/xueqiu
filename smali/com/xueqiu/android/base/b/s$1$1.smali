.class final Lcom/xueqiu/android/base/b/s$1$1;
.super Lcom/xueqiu/android/base/b/p;
.source "RxHttpClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/base/b/s$1;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xueqiu/android/base/b/p",
        "<",
        "Lcom/xueqiu/android/common/model/RequestResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lrx/i;

.field final synthetic b:Lcom/xueqiu/android/base/b/s$1;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/base/b/s$1;Lrx/i;)V
    .locals 0

    .prologue
    .line 24
    iput-object p1, p0, Lcom/xueqiu/android/base/b/s$1$1;->b:Lcom/xueqiu/android/base/b/s$1;

    iput-object p2, p0, Lcom/xueqiu/android/base/b/s$1$1;->a:Lrx/i;

    invoke-direct {p0}, Lcom/xueqiu/android/base/b/p;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/y;)V
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/xueqiu/android/base/b/s$1$1;->a:Lrx/i;

    invoke-virtual {v0, p1}, Lrx/i;->a(Ljava/lang/Throwable;)V

    .line 28
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 24
    check-cast p1, Lcom/xueqiu/android/common/model/RequestResult;

    .line 1032
    iget-object v0, p0, Lcom/xueqiu/android/base/b/s$1$1;->a:Lrx/i;

    invoke-virtual {p1}, Lcom/xueqiu/android/common/model/RequestResult;->isSuccess()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/i;->a(Ljava/lang/Object;)V

    .line 1033
    iget-object v0, p0, Lcom/xueqiu/android/base/b/s$1$1;->a:Lrx/i;

    invoke-virtual {v0}, Lrx/i;->a()V

    .line 24
    return-void
.end method
