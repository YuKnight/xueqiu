.class Lcom/flurry/sdk/jb$14;
.super Lcom/flurry/sdk/ly;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/jb;->a(Lcom/flurry/sdk/lf;Landroid/content/Context;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/jb;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/jb;)V
    .locals 0

    .prologue
    .line 269
    iput-object p1, p0, Lcom/flurry/sdk/jb$14;->a:Lcom/flurry/sdk/jb;

    invoke-direct {p0}, Lcom/flurry/sdk/ly;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    .line 272
    iget-object v0, p0, Lcom/flurry/sdk/jb$14;->a:Lcom/flurry/sdk/jb;

    const/4 v1, 0x1

    invoke-static {}, Lcom/flurry/sdk/je;->a()Lcom/flurry/sdk/je;

    move-result-object v2

    invoke-virtual {v2}, Lcom/flurry/sdk/je;->d()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/flurry/sdk/jb;->a(Lcom/flurry/sdk/jb;ZJ)V

    .line 273
    return-void
.end method
