.class final Lcom/xueqiu/android/stock/USETFRankActivity$1;
.super Ljava/lang/Object;
.source "USETFRankActivity.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnScrollChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/stock/USETFRankActivity;->j()V
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/xueqiu/android/stock/USETFRankActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/stock/USETFRankActivity;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 113
    iput-object p1, p0, Lcom/xueqiu/android/stock/USETFRankActivity$1;->b:Lcom/xueqiu/android/stock/USETFRankActivity;

    iput-object p2, p0, Lcom/xueqiu/android/stock/USETFRankActivity$1;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onScrollChanged()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 116
    iget-object v0, p0, Lcom/xueqiu/android/stock/USETFRankActivity$1;->b:Lcom/xueqiu/android/stock/USETFRankActivity;

    invoke-static {v0}, Lcom/xueqiu/android/stock/USETFRankActivity;->c(Lcom/xueqiu/android/stock/USETFRankActivity;)Lcom/viewpagerindicator/TabPageIndicator;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/viewpagerindicator/TabPageIndicator;->canScrollHorizontally(I)Z

    move-result v0

    .line 117
    iget-object v1, p0, Lcom/xueqiu/android/stock/USETFRankActivity$1;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    if-nez v0, :cond_1

    .line 118
    iget-object v0, p0, Lcom/xueqiu/android/stock/USETFRankActivity$1;->a:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 122
    :cond_0
    :goto_0
    return-void

    .line 119
    :cond_1
    iget-object v1, p0, Lcom/xueqiu/android/stock/USETFRankActivity$1;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-ne v1, v2, :cond_0

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/xueqiu/android/stock/USETFRankActivity$1;->a:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
