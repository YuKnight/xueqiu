.class Lcom/flurry/sdk/io$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/le;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/io;->e()V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/flurry/sdk/le",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/flurry/sdk/ip;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/io;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/io;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lcom/flurry/sdk/io$1;->a:Lcom/flurry/sdk/io;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)Lcom/flurry/sdk/lb;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/flurry/sdk/lb",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/sdk/ip;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 76
    new-instance v0, Lcom/flurry/sdk/la;

    new-instance v1, Lcom/flurry/sdk/ip$a;

    invoke-direct {v1}, Lcom/flurry/sdk/ip$a;-><init>()V

    invoke-direct {v0, v1}, Lcom/flurry/sdk/la;-><init>(Lcom/flurry/sdk/lb;)V

    return-object v0
.end method
