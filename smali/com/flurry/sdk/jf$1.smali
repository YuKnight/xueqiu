.class Lcom/flurry/sdk/jf$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/kb;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/jf;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/flurry/sdk/kb",
        "<",
        "Lcom/flurry/sdk/lg;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/jf;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/jf;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lcom/flurry/sdk/jf$1;->a:Lcom/flurry/sdk/jf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcom/flurry/sdk/ka;)V
    .locals 0

    .prologue
    .line 73
    check-cast p1, Lcom/flurry/sdk/lg;

    invoke-virtual {p0, p1}, Lcom/flurry/sdk/jf$1;->a(Lcom/flurry/sdk/lg;)V

    return-void
.end method

.method public a(Lcom/flurry/sdk/lg;)V
    .locals 2

    .prologue
    .line 76
    sget-object v0, Lcom/flurry/sdk/jf$4;->a:[I

    iget-object v1, p1, Lcom/flurry/sdk/lg;->c:Lcom/flurry/sdk/lg$a;

    invoke-virtual {v1}, Lcom/flurry/sdk/lg$a;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 89
    :cond_0
    :goto_0
    return-void

    .line 79
    :pswitch_0
    iget-object v0, p0, Lcom/flurry/sdk/jf$1;->a:Lcom/flurry/sdk/jf;

    invoke-virtual {v0}, Lcom/flurry/sdk/jf;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    invoke-static {}, Lcom/flurry/sdk/js;->a()Lcom/flurry/sdk/js;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/jf$1$1;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/jf$1$1;-><init>(Lcom/flurry/sdk/jf$1;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/js;->b(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 76
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
