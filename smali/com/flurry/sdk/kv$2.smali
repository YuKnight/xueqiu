.class Lcom/flurry/sdk/kv$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/le;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/kv;->b(Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/flurry/sdk/le",
        "<",
        "Lcom/flurry/sdk/ku;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/kv;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/kv;)V
    .locals 0

    .prologue
    .line 197
    iput-object p1, p0, Lcom/flurry/sdk/kv$2;->a:Lcom/flurry/sdk/kv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)Lcom/flurry/sdk/lb;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/flurry/sdk/lb",
            "<",
            "Lcom/flurry/sdk/ku;",
            ">;"
        }
    .end annotation

    .prologue
    .line 200
    new-instance v0, Lcom/flurry/sdk/ku$a;

    invoke-direct {v0}, Lcom/flurry/sdk/ku$a;-><init>()V

    return-object v0
.end method
