.class Lorg/apache/http/client/entity/LazyDecompressingInputStream;
.super Ljava/io/InputStream;
.source "LazyDecompressingInputStream.java"


# annotations
.annotation build Lorg/apache/http/annotation/NotThreadSafe;
.end annotation


# instance fields
.field private final inputStreamFactory:Lorg/apache/http/client/entity/InputStreamFactory;

.field private final wrappedStream:Ljava/io/InputStream;

.field private wrapperStream:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lorg/apache/http/client/entity/InputStreamFactory;)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 48
    iput-object p1, p0, Lorg/apache/http/client/entity/LazyDecompressingInputStream;->wrappedStream:Ljava/io/InputStream;

    .line 49
    iput-object p2, p0, Lorg/apache/http/client/entity/LazyDecompressingInputStream;->inputStreamFactory:Lorg/apache/http/client/entity/InputStreamFactory;

    .line 50
    return-void
.end method

.method private initWrapper()V
    .locals 2

    .prologue
    .line 53
    iget-object v0, p0, Lorg/apache/http/client/entity/LazyDecompressingInputStream;->wrapperStream:Ljava/io/InputStream;

    if-nez v0, :cond_0

    .line 54
    iget-object v0, p0, Lorg/apache/http/client/entity/LazyDecompressingInputStream;->inputStreamFactory:Lorg/apache/http/client/entity/InputStreamFactory;

    iget-object v1, p0, Lorg/apache/http/client/entity/LazyDecompressingInputStream;->wrappedStream:Ljava/io/InputStream;

    invoke-interface {v0, v1}, Lorg/apache/http/client/entity/InputStreamFactory;->create(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/client/entity/LazyDecompressingInputStream;->wrapperStream:Ljava/io/InputStream;

    .line 56
    :cond_0
    return-void
.end method


# virtual methods
.method public available()I
    .locals 1

    .prologue
    .line 89
    invoke-direct {p0}, Lorg/apache/http/client/entity/LazyDecompressingInputStream;->initWrapper()V

    .line 90
    iget-object v0, p0, Lorg/apache/http/client/entity/LazyDecompressingInputStream;->wrapperStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    return v0
.end method

.method public close()V
    .locals 2

    .prologue
    .line 96
    :try_start_0
    iget-object v0, p0, Lorg/apache/http/client/entity/LazyDecompressingInputStream;->wrapperStream:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lorg/apache/http/client/entity/LazyDecompressingInputStream;->wrapperStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    :cond_0
    iget-object v0, p0, Lorg/apache/http/client/entity/LazyDecompressingInputStream;->wrappedStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 101
    return-void

    .line 100
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/http/client/entity/LazyDecompressingInputStream;->wrappedStream:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    throw v0
.end method

.method public markSupported()Z
    .locals 1

    .prologue
    .line 84
    const/4 v0, 0x0

    return v0
.end method

.method public read()I
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Lorg/apache/http/client/entity/LazyDecompressingInputStream;->initWrapper()V

    .line 61
    iget-object v0, p0, Lorg/apache/http/client/entity/LazyDecompressingInputStream;->wrapperStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    return v0
.end method

.method public read([B)I
    .locals 1

    .prologue
    .line 66
    invoke-direct {p0}, Lorg/apache/http/client/entity/LazyDecompressingInputStream;->initWrapper()V

    .line 67
    iget-object v0, p0, Lorg/apache/http/client/entity/LazyDecompressingInputStream;->wrapperStream:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 1

    .prologue
    .line 72
    invoke-direct {p0}, Lorg/apache/http/client/entity/LazyDecompressingInputStream;->initWrapper()V

    .line 73
    iget-object v0, p0, Lorg/apache/http/client/entity/LazyDecompressingInputStream;->wrapperStream:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public skip(J)J
    .locals 3

    .prologue
    .line 78
    invoke-direct {p0}, Lorg/apache/http/client/entity/LazyDecompressingInputStream;->initWrapper()V

    .line 79
    iget-object v0, p0, Lorg/apache/http/client/entity/LazyDecompressingInputStream;->wrapperStream:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v0

    return-wide v0
.end method
