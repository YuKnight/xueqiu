.class final Lcom/xueqiu/android/trade/c/e$33;
.super Ljava/lang/Object;
.source "OrderFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/trade/c/e;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/trade/c/e;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/trade/c/e;)V
    .locals 0

    .prologue
    .line 360
    iput-object p1, p0, Lcom/xueqiu/android/trade/c/e$33;->a:Lcom/xueqiu/android/trade/c/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 363
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e$33;->a:Lcom/xueqiu/android/trade/c/e;

    invoke-static {v0}, Lcom/xueqiu/android/trade/c/e;->l(Lcom/xueqiu/android/trade/c/e;)Lcom/xueqiu/android/base/c;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/trade/b/b;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/xueqiu/android/trade/b/b;->b(I)V

    .line 364
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e$33;->a:Lcom/xueqiu/android/trade/c/e;

    invoke-static {v0}, Lcom/xueqiu/android/trade/c/e;->i(Lcom/xueqiu/android/trade/c/e;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1053
    invoke-static {}, Lcom/xueqiu/android/base/i;->a()Lcom/xueqiu/android/base/h;

    move-result-object v0

    .line 365
    new-instance v1, Lcom/xueqiu/android/common/model/SNBEvent;

    const/16 v2, 0x5e1

    const/4 v3, 0x7

    invoke-direct {v1, v2, v3}, Lcom/xueqiu/android/common/model/SNBEvent;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/base/h;->a(Lcom/xueqiu/android/common/model/SNBEvent;)V

    .line 369
    :goto_0
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e$33;->a:Lcom/xueqiu/android/trade/c/e;

    iget-object v1, p0, Lcom/xueqiu/android/trade/c/e$33;->a:Lcom/xueqiu/android/trade/c/e;

    invoke-static {v1}, Lcom/xueqiu/android/trade/c/e;->g(Lcom/xueqiu/android/trade/c/e;)Lcom/xueqiu/android/common/x;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xueqiu/android/trade/c/e;->a(Lcom/xueqiu/android/trade/c/e;Lcom/xueqiu/android/common/x;)V

    .line 370
    return-void

    .line 2053
    :cond_0
    invoke-static {}, Lcom/xueqiu/android/base/i;->a()Lcom/xueqiu/android/base/h;

    move-result-object v0

    .line 367
    new-instance v1, Lcom/xueqiu/android/common/model/SNBEvent;

    const/16 v2, 0x5ed

    const/16 v3, 0xc

    invoke-direct {v1, v2, v3}, Lcom/xueqiu/android/common/model/SNBEvent;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/base/h;->a(Lcom/xueqiu/android/common/model/SNBEvent;)V

    goto :goto_0
.end method
