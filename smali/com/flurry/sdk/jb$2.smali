.class Lcom/flurry/sdk/jb$2;
.super Lcom/flurry/sdk/ly;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/jb;->b(Landroid/content/Context;)V
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcom/flurry/sdk/jb;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/jb;J)V
    .locals 0

    .prologue
    .line 326
    iput-object p1, p0, Lcom/flurry/sdk/jb$2;->b:Lcom/flurry/sdk/jb;

    iput-wide p2, p0, Lcom/flurry/sdk/jb$2;->a:J

    invoke-direct {p0}, Lcom/flurry/sdk/ly;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    .line 329
    invoke-static {}, Lcom/flurry/sdk/hl;->a()Lcom/flurry/sdk/hl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/hl;->c()Lcom/flurry/sdk/ig;

    move-result-object v0

    iget-wide v2, p0, Lcom/flurry/sdk/jb$2;->a:J

    invoke-virtual {v0, v2, v3}, Lcom/flurry/sdk/ig;->a(J)V

    .line 330
    return-void
.end method
