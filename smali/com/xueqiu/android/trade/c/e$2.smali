.class final Lcom/xueqiu/android/trade/c/e$2;
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
    .line 386
    iput-object p1, p0, Lcom/xueqiu/android/trade/c/e$2;->a:Lcom/xueqiu/android/trade/c/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 389
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e$2;->a:Lcom/xueqiu/android/trade/c/e;

    invoke-static {v0}, Lcom/xueqiu/android/trade/c/e;->n(Lcom/xueqiu/android/trade/c/e;)Lcom/xueqiu/android/base/c;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/trade/b/b;

    invoke-interface {v0}, Lcom/xueqiu/android/trade/b/b;->g()V

    .line 390
    return-void
.end method
