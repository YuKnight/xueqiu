.class Lcom/flurry/sdk/kf$3;
.super Lcom/flurry/sdk/ly;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/kf;->a(Lcom/flurry/sdk/lz;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/lz;

.field final synthetic b:Lcom/flurry/sdk/kf;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/kf;Lcom/flurry/sdk/lz;)V
    .locals 0

    .prologue
    .line 172
    iput-object p1, p0, Lcom/flurry/sdk/kf$3;->b:Lcom/flurry/sdk/kf;

    iput-object p2, p0, Lcom/flurry/sdk/kf$3;->a:Lcom/flurry/sdk/lz;

    invoke-direct {p0}, Lcom/flurry/sdk/ly;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/flurry/sdk/kf$3;->a:Lcom/flurry/sdk/lz;

    invoke-virtual {v0}, Lcom/flurry/sdk/lz;->m()V

    .line 176
    return-void
.end method
