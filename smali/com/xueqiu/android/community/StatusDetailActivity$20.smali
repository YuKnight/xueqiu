.class final Lcom/xueqiu/android/community/StatusDetailActivity$20;
.super Ljava/lang/Object;
.source "StatusDetailActivity.java"

# interfaces
.implements Landroid/support/v4/view/cp;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/community/StatusDetailActivity;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/community/StatusDetailActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/StatusDetailActivity;)V
    .locals 0

    .prologue
    .line 1400
    iput-object p1, p0, Lcom/xueqiu/android/community/StatusDetailActivity$20;->a:Lcom/xueqiu/android/community/StatusDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(IFI)V
    .locals 2

    .prologue
    .line 1404
    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-lez v0, :cond_0

    .line 1405
    iget-object v0, p0, Lcom/xueqiu/android/community/StatusDetailActivity$20;->a:Lcom/xueqiu/android/community/StatusDetailActivity;

    .line 2267
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/xueqiu/android/common/b;->m:Z

    .line 1407
    :cond_0
    return-void
.end method

.method public final b(I)V
    .locals 2

    .prologue
    .line 1416
    iget-object v0, p0, Lcom/xueqiu/android/community/StatusDetailActivity$20;->a:Lcom/xueqiu/android/community/StatusDetailActivity;

    .line 4267
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/xueqiu/android/common/b;->m:Z

    .line 1417
    return-void
.end method

.method public final b_(I)V
    .locals 2

    .prologue
    .line 1411
    iget-object v0, p0, Lcom/xueqiu/android/community/StatusDetailActivity$20;->a:Lcom/xueqiu/android/community/StatusDetailActivity;

    .line 3267
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/xueqiu/android/common/b;->m:Z

    .line 1412
    return-void
.end method
