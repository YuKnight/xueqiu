.class final Lcom/d/a/a/a/a/a/a$1;
.super Ljava/lang/Object;
.source "DiskLruCache.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/d/a/a/a/a/a/a;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/d/a/a/a/a/a/a;


# direct methods
.method constructor <init>(Lcom/d/a/a/a/a/a/a;)V
    .locals 0

    .prologue
    .line 165
    iput-object p1, p0, Lcom/d/a/a/a/a/a/a$1;->a:Lcom/d/a/a/a/a/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a()Ljava/lang/Void;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 167
    iget-object v1, p0, Lcom/d/a/a/a/a/a/a$1;->a:Lcom/d/a/a/a/a/a/a;

    monitor-enter v1

    .line 168
    :try_start_0
    iget-object v0, p0, Lcom/d/a/a/a/a/a/a$1;->a:Lcom/d/a/a/a/a/a/a;

    invoke-static {v0}, Lcom/d/a/a/a/a/a/a;->a(Lcom/d/a/a/a/a/a/a;)Ljava/io/Writer;

    move-result-object v0

    if-nez v0, :cond_0

    .line 169
    monitor-exit v1

    .line 178
    :goto_0
    return-object v2

    .line 171
    :cond_0
    iget-object v0, p0, Lcom/d/a/a/a/a/a/a$1;->a:Lcom/d/a/a/a/a/a/a;

    invoke-static {v0}, Lcom/d/a/a/a/a/a/a;->b(Lcom/d/a/a/a/a/a/a;)V

    .line 172
    iget-object v0, p0, Lcom/d/a/a/a/a/a/a$1;->a:Lcom/d/a/a/a/a/a/a;

    invoke-static {v0}, Lcom/d/a/a/a/a/a/a;->c(Lcom/d/a/a/a/a/a/a;)V

    .line 173
    iget-object v0, p0, Lcom/d/a/a/a/a/a/a$1;->a:Lcom/d/a/a/a/a/a/a;

    invoke-static {v0}, Lcom/d/a/a/a/a/a/a;->d(Lcom/d/a/a/a/a/a/a;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 174
    iget-object v0, p0, Lcom/d/a/a/a/a/a/a$1;->a:Lcom/d/a/a/a/a/a/a;

    invoke-static {v0}, Lcom/d/a/a/a/a/a/a;->e(Lcom/d/a/a/a/a/a/a;)V

    .line 175
    iget-object v0, p0, Lcom/d/a/a/a/a/a/a$1;->a:Lcom/d/a/a/a/a/a/a;

    invoke-static {v0}, Lcom/d/a/a/a/a/a/a;->f(Lcom/d/a/a/a/a/a/a;)I

    .line 177
    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 165
    invoke-direct {p0}, Lcom/d/a/a/a/a/a/a$1;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
