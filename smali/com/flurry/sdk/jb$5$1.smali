.class Lcom/flurry/sdk/jb$5$1;
.super Lcom/flurry/sdk/ly;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/jb$5;->a()V
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/jb$5;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/jb$5;)V
    .locals 0

    .prologue
    .line 386
    iput-object p1, p0, Lcom/flurry/sdk/jb$5$1;->a:Lcom/flurry/sdk/jb$5;

    invoke-direct {p0}, Lcom/flurry/sdk/ly;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 389
    invoke-static {}, Lcom/flurry/sdk/hl;->a()Lcom/flurry/sdk/hl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/hl;->e()Lcom/flurry/sdk/ii;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/ii;->d()V

    .line 390
    return-void
.end method
