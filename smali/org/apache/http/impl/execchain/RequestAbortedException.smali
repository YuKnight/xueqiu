.class public Lorg/apache/http/impl/execchain/RequestAbortedException;
.super Ljava/io/InterruptedIOException;
.source "RequestAbortedException.java"


# annotations
.annotation build Lorg/apache/http/annotation/Immutable;
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x4506aa3106436180L


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0, p1}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0, p1}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    .line 50
    if-eqz p2, :cond_0

    .line 51
    invoke-virtual {p0, p2}, Lorg/apache/http/impl/execchain/RequestAbortedException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 53
    :cond_0
    return-void
.end method
