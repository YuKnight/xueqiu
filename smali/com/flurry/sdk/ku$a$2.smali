.class Lcom/flurry/sdk/ku$a$2;
.super Ljava/io/DataInputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/ku$a;->a(Ljava/io/InputStream;)Lcom/flurry/sdk/ku;
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/ku$a;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/ku$a;Ljava/io/InputStream;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lcom/flurry/sdk/ku$a$2;->a:Lcom/flurry/sdk/ku$a;

    invoke-direct {p0, p2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    .prologue
    .line 69
    return-void
.end method
