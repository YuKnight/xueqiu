.class final Lcom/xueqiu/android/cube/CubeRbHistoryActivity$5$1;
.super Lcom/xueqiu/android/base/b/p;
.source "CubeRbHistoryActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/cube/CubeRbHistoryActivity$5;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xueqiu/android/base/b/p",
        "<",
        "Lcom/xueqiu/android/common/model/PagedList",
        "<",
        "Lcom/xueqiu/android/cube/model/Rebalancing;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lrx/i;

.field final synthetic b:Lcom/xueqiu/android/cube/CubeRbHistoryActivity$5;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/cube/CubeRbHistoryActivity$5;Lcom/xueqiu/android/base/b/q;Lrx/i;)V
    .locals 0

    .prologue
    .line 180
    iput-object p1, p0, Lcom/xueqiu/android/cube/CubeRbHistoryActivity$5$1;->b:Lcom/xueqiu/android/cube/CubeRbHistoryActivity$5;

    iput-object p3, p0, Lcom/xueqiu/android/cube/CubeRbHistoryActivity$5$1;->a:Lrx/i;

    invoke-direct {p0, p2}, Lcom/xueqiu/android/base/b/p;-><init>(Lcom/xueqiu/android/base/b/q;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/y;)V
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeRbHistoryActivity$5$1;->a:Lrx/i;

    invoke-virtual {v0, p1}, Lrx/i;->a(Ljava/lang/Throwable;)V

    .line 184
    return-void
.end method

.method public final bridge synthetic a(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 180
    check-cast p1, Lcom/xueqiu/android/common/model/PagedList;

    .line 1188
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeRbHistoryActivity$5$1;->a:Lrx/i;

    invoke-virtual {v0, p1}, Lrx/i;->a(Ljava/lang/Object;)V

    .line 1189
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeRbHistoryActivity$5$1;->a:Lrx/i;

    invoke-virtual {v0}, Lrx/i;->a()V

    .line 180
    return-void
.end method
