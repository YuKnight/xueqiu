.class Lcom/flurry/sdk/io$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/kn$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/io;->a([B)V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/flurry/sdk/kn$a",
        "<[B",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/io;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/io;)V
    .locals 0

    .prologue
    .line 246
    iput-object p1, p0, Lcom/flurry/sdk/io$2;->a:Lcom/flurry/sdk/io;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcom/flurry/sdk/kn;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 246
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/flurry/sdk/io$2;->a(Lcom/flurry/sdk/kn;Ljava/lang/Void;)V

    return-void
.end method

.method public a(Lcom/flurry/sdk/kn;Ljava/lang/Void;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/sdk/kn",
            "<[B",
            "Ljava/lang/Void;",
            ">;",
            "Ljava/lang/Void;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v4, 0x3

    .line 252
    invoke-virtual {p1}, Lcom/flurry/sdk/kn;->h()I

    move-result v0

    .line 254
    if-lez v0, :cond_1

    .line 256
    const/16 v1, 0xc8

    if-lt v0, v1, :cond_0

    const/16 v1, 0x12c

    if-ge v0, v1, :cond_0

    .line 257
    invoke-static {}, Lcom/flurry/sdk/io;->d()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Pulse logging report sent successfully HTTP response:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v1, v0}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 258
    iget-object v0, p0, Lcom/flurry/sdk/io$2;->a:Lcom/flurry/sdk/io;

    invoke-static {v0}, Lcom/flurry/sdk/io;->a(Lcom/flurry/sdk/io;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 259
    iget-object v0, p0, Lcom/flurry/sdk/io$2;->a:Lcom/flurry/sdk/io;

    invoke-static {v0}, Lcom/flurry/sdk/io;->b(Lcom/flurry/sdk/io;)Lcom/flurry/sdk/jz;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/sdk/io$2;->a:Lcom/flurry/sdk/io;

    invoke-static {v1}, Lcom/flurry/sdk/io;->a(Lcom/flurry/sdk/io;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/jz;->a(Ljava/lang/Object;)V

    .line 267
    :goto_0
    return-void

    .line 261
    :cond_0
    invoke-static {}, Lcom/flurry/sdk/io;->d()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Pulse logging report sent unsuccessfully, HTTP response:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v1, v0}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 265
    :cond_1
    invoke-static {}, Lcom/flurry/sdk/io;->d()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Server Error: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/flurry/sdk/kg;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
