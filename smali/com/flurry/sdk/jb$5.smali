.class Lcom/flurry/sdk/jb$5;
.super Lcom/flurry/sdk/ly;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/jb;->a(J)V
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/jb;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/jb;)V
    .locals 0

    .prologue
    .line 370
    iput-object p1, p0, Lcom/flurry/sdk/jb$5;->a:Lcom/flurry/sdk/jb;

    invoke-direct {p0}, Lcom/flurry/sdk/ly;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 373
    iget-object v0, p0, Lcom/flurry/sdk/jb$5;->a:Lcom/flurry/sdk/jb;

    invoke-static {v0}, Lcom/flurry/sdk/jb;->g(Lcom/flurry/sdk/jb;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/flurry/sdk/hl;->a()Lcom/flurry/sdk/hl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/hl;->c()Lcom/flurry/sdk/ig;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 374
    invoke-static {}, Lcom/flurry/sdk/hl;->a()Lcom/flurry/sdk/hl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/hl;->c()Lcom/flurry/sdk/ig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/ig;->d()V

    .line 385
    :cond_0
    invoke-static {}, Lcom/flurry/sdk/hl;->a()Lcom/flurry/sdk/hl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/hl;->e()Lcom/flurry/sdk/ii;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 386
    invoke-static {}, Lcom/flurry/sdk/js;->a()Lcom/flurry/sdk/js;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/jb$5$1;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/jb$5$1;-><init>(Lcom/flurry/sdk/jb$5;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/js;->b(Ljava/lang/Runnable;)V

    .line 393
    :cond_1
    return-void
.end method
