.class Lorg/apache/http/client/entity/DeflateDecompressingEntity$1;
.super Ljava/lang/Object;
.source "DeflateDecompressingEntity.java"

# interfaces
.implements Lorg/apache/http/client/entity/InputStreamFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/http/client/entity/DeflateDecompressingEntity;-><init>(Lorg/apache/http/HttpEntity;)V
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Ljava/io/InputStream;)Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 64
    new-instance v0, Lorg/apache/http/client/entity/DeflateInputStream;

    invoke-direct {v0, p1}, Lorg/apache/http/client/entity/DeflateInputStream;-><init>(Ljava/io/InputStream;)V

    return-object v0
.end method
