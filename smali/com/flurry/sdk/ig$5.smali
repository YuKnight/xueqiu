.class Lcom/flurry/sdk/ig$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/kb;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/ig;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/flurry/sdk/kb",
        "<",
        "Lcom/flurry/sdk/jh;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/ig;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/ig;)V
    .locals 0

    .prologue
    .line 139
    iput-object p1, p0, Lcom/flurry/sdk/ig$5;->a:Lcom/flurry/sdk/ig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/flurry/sdk/jh;)V
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/flurry/sdk/ig$5;->a:Lcom/flurry/sdk/ig;

    invoke-static {v0}, Lcom/flurry/sdk/ig;->a(Lcom/flurry/sdk/ig;)V

    .line 143
    return-void
.end method

.method public bridge synthetic a(Lcom/flurry/sdk/ka;)V
    .locals 0

    .prologue
    .line 139
    check-cast p1, Lcom/flurry/sdk/jh;

    invoke-virtual {p0, p1}, Lcom/flurry/sdk/ig$5;->a(Lcom/flurry/sdk/jh;)V

    return-void
.end method
