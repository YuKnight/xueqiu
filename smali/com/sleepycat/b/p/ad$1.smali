.class final enum Lcom/sleepycat/b/p/ad$1;
.super Lcom/sleepycat/b/p/ad;
.source "PropUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/b/p/ad;
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 207
    invoke-direct {p0, p1, v0, v0}, Lcom/sleepycat/b/p/ad;-><init>(Ljava/lang/String;IB)V

    return-void
.end method


# virtual methods
.method final a(J)J
    .locals 3

    .prologue
    .line 1204
    sget-object v0, Lcom/sleepycat/b/p/ad;->g:Ljava/util/concurrent/TimeUnit;

    .line 209
    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p1, p2, v1}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method
