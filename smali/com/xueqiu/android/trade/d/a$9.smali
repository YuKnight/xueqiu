.class final Lcom/xueqiu/android/trade/d/a$9;
.super Lcom/xueqiu/android/base/b/p;
.source "OrderFragmentPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/trade/d/a;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xueqiu/android/base/b/p",
        "<",
        "Lcom/google/gson/JsonObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/trade/d/a;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/trade/d/a;Lcom/xueqiu/android/base/b/q;)V
    .locals 0

    .prologue
    .line 1024
    iput-object p1, p0, Lcom/xueqiu/android/trade/d/a$9;->a:Lcom/xueqiu/android/trade/d/a;

    invoke-direct {p0, p2}, Lcom/xueqiu/android/base/b/p;-><init>(Lcom/xueqiu/android/base/b/q;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/y;)V
    .locals 3

    .prologue
    .line 1027
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;Z)V

    .line 1028
    iget-object v0, p0, Lcom/xueqiu/android/trade/d/a$9;->a:Lcom/xueqiu/android/trade/d/a;

    .line 1069
    iget-object v0, v0, Lcom/xueqiu/android/trade/d/a;->b:Lcom/xueqiu/android/trade/b/c;

    .line 1028
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/xueqiu/android/trade/b/c;->a(ILjava/lang/String;)V

    .line 1029
    return-void
.end method

.method public final bridge synthetic a(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 1024
    .line 2033
    iget-object v0, p0, Lcom/xueqiu/android/trade/d/a$9;->a:Lcom/xueqiu/android/trade/d/a;

    .line 2069
    iget-object v0, v0, Lcom/xueqiu/android/trade/d/a;->b:Lcom/xueqiu/android/trade/b/c;

    .line 2033
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/xueqiu/android/trade/b/c;->a(ILjava/lang/String;)V

    .line 1024
    return-void
.end method
