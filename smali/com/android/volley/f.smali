.class public final Lcom/android/volley/f;
.super Ljava/lang/Object;
.source "ExecutorDelivery.java"

# interfaces
.implements Lcom/android/volley/u;


# instance fields
.field private final a:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Lcom/android/volley/f$1;

    invoke-direct {v0, p0, p1}, Lcom/android/volley/f$1;-><init>(Lcom/android/volley/f;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/volley/f;->a:Ljava/util/concurrent/Executor;

    .line 42
    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/n;Lcom/android/volley/r;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/n",
            "<*>;",
            "Lcom/android/volley/r",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 55
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/volley/f;->a(Lcom/android/volley/n;Lcom/android/volley/r;Ljava/lang/Runnable;)V

    .line 56
    return-void
.end method

.method public final a(Lcom/android/volley/n;Lcom/android/volley/r;Ljava/lang/Runnable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/n",
            "<*>;",
            "Lcom/android/volley/r",
            "<*>;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 60
    .line 1531
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/volley/n;->i:Z

    .line 61
    const-string v0, "post-response"

    invoke-virtual {p1, v0}, Lcom/android/volley/n;->a(Ljava/lang/String;)V

    .line 62
    iget-object v0, p0, Lcom/android/volley/f;->a:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/volley/g;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/volley/g;-><init>(Lcom/android/volley/f;Lcom/android/volley/n;Lcom/android/volley/r;Ljava/lang/Runnable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 63
    return-void
.end method

.method public final a(Lcom/android/volley/n;Lcom/android/volley/y;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/n",
            "<*>;",
            "Lcom/android/volley/y;",
            ")V"
        }
    .end annotation

    .prologue
    .line 67
    const-string v0, "post-error"

    invoke-virtual {p1, v0}, Lcom/android/volley/n;->a(Ljava/lang/String;)V

    .line 68
    invoke-static {p2}, Lcom/android/volley/r;->a(Lcom/android/volley/y;)Lcom/android/volley/r;

    move-result-object v0

    .line 69
    iget-object v1, p0, Lcom/android/volley/f;->a:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/android/volley/g;

    const/4 v3, 0x0

    invoke-direct {v2, p0, p1, v0, v3}, Lcom/android/volley/g;-><init>(Lcom/android/volley/f;Lcom/android/volley/n;Lcom/android/volley/r;Ljava/lang/Runnable;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 70
    return-void
.end method
