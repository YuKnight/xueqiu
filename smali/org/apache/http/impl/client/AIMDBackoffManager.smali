.class public Lorg/apache/http/impl/client/AIMDBackoffManager;
.super Ljava/lang/Object;
.source "AIMDBackoffManager.java"

# interfaces
.implements Lorg/apache/http/client/BackoffManager;


# instance fields
.field private backoffFactor:D

.field private cap:I

.field private final clock:Lorg/apache/http/impl/client/Clock;

.field private final connPerRoute:Lorg/apache/http/pool/ConnPoolControl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/http/pool/ConnPoolControl",
            "<",
            "Lorg/apache/http/conn/routing/HttpRoute;",
            ">;"
        }
    .end annotation
.end field

.field private coolDown:J

.field private final lastRouteBackoffs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lorg/apache/http/conn/routing/HttpRoute;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final lastRouteProbes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lorg/apache/http/conn/routing/HttpRoute;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/apache/http/pool/ConnPoolControl;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/pool/ConnPoolControl",
            "<",
            "Lorg/apache/http/conn/routing/HttpRoute;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 75
    new-instance v0, Lorg/apache/http/impl/client/SystemClock;

    invoke-direct {v0}, Lorg/apache/http/impl/client/SystemClock;-><init>()V

    invoke-direct {p0, p1, v0}, Lorg/apache/http/impl/client/AIMDBackoffManager;-><init>(Lorg/apache/http/pool/ConnPoolControl;Lorg/apache/http/impl/client/Clock;)V

    .line 76
    return-void
.end method

.method constructor <init>(Lorg/apache/http/pool/ConnPoolControl;Lorg/apache/http/impl/client/Clock;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/pool/ConnPoolControl",
            "<",
            "Lorg/apache/http/conn/routing/HttpRoute;",
            ">;",
            "Lorg/apache/http/impl/client/Clock;",
            ")V"
        }
    .end annotation

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    const-wide/16 v0, 0x1388

    iput-wide v0, p0, Lorg/apache/http/impl/client/AIMDBackoffManager;->coolDown:J

    .line 64
    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    iput-wide v0, p0, Lorg/apache/http/impl/client/AIMDBackoffManager;->backoffFactor:D

    .line 65
    const/4 v0, 0x2

    iput v0, p0, Lorg/apache/http/impl/client/AIMDBackoffManager;->cap:I

    .line 79
    iput-object p2, p0, Lorg/apache/http/impl/client/AIMDBackoffManager;->clock:Lorg/apache/http/impl/client/Clock;

    .line 80
    iput-object p1, p0, Lorg/apache/http/impl/client/AIMDBackoffManager;->connPerRoute:Lorg/apache/http/pool/ConnPoolControl;

    .line 81
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/http/impl/client/AIMDBackoffManager;->lastRouteProbes:Ljava/util/Map;

    .line 82
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/http/impl/client/AIMDBackoffManager;->lastRouteBackoffs:Ljava/util/Map;

    .line 83
    return-void
.end method

.method private getBackedOffPoolSize(I)I
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 100
    if-gt p1, v0, :cond_0

    .line 103
    :goto_0
    return v0

    :cond_0
    iget-wide v0, p0, Lorg/apache/http/impl/client/AIMDBackoffManager;->backoffFactor:D

    int-to-double v2, p1

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    goto :goto_0
.end method

.method private getLastUpdate(Ljava/util/Map;Lorg/apache/http/conn/routing/HttpRoute;)Ljava/lang/Long;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lorg/apache/http/conn/routing/HttpRoute;",
            "Ljava/lang/Long;",
            ">;",
            "Lorg/apache/http/conn/routing/HttpRoute;",
            ")",
            "Ljava/lang/Long;"
        }
    .end annotation

    .prologue
    .line 123
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 124
    if-nez v0, :cond_0

    .line 125
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 127
    :cond_0
    return-object v0
.end method


# virtual methods
.method public backOff(Lorg/apache/http/conn/routing/HttpRoute;)V
    .locals 8

    .prologue
    .line 87
    iget-object v1, p0, Lorg/apache/http/impl/client/AIMDBackoffManager;->connPerRoute:Lorg/apache/http/pool/ConnPoolControl;

    monitor-enter v1

    .line 88
    :try_start_0
    iget-object v0, p0, Lorg/apache/http/impl/client/AIMDBackoffManager;->connPerRoute:Lorg/apache/http/pool/ConnPoolControl;

    invoke-interface {v0, p1}, Lorg/apache/http/pool/ConnPoolControl;->getMaxPerRoute(Ljava/lang/Object;)I

    move-result v0

    .line 89
    iget-object v2, p0, Lorg/apache/http/impl/client/AIMDBackoffManager;->lastRouteBackoffs:Ljava/util/Map;

    invoke-direct {p0, v2, p1}, Lorg/apache/http/impl/client/AIMDBackoffManager;->getLastUpdate(Ljava/util/Map;Lorg/apache/http/conn/routing/HttpRoute;)Ljava/lang/Long;

    move-result-object v2

    .line 90
    iget-object v3, p0, Lorg/apache/http/impl/client/AIMDBackoffManager;->clock:Lorg/apache/http/impl/client/Clock;

    invoke-interface {v3}, Lorg/apache/http/impl/client/Clock;->getCurrentTime()J

    move-result-wide v4

    .line 91
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long v2, v4, v2

    iget-wide v6, p0, Lorg/apache/http/impl/client/AIMDBackoffManager;->coolDown:J

    cmp-long v2, v2, v6

    if-gez v2, :cond_0

    .line 92
    monitor-exit v1

    .line 96
    :goto_0
    return-void

    .line 94
    :cond_0
    iget-object v2, p0, Lorg/apache/http/impl/client/AIMDBackoffManager;->connPerRoute:Lorg/apache/http/pool/ConnPoolControl;

    invoke-direct {p0, v0}, Lorg/apache/http/impl/client/AIMDBackoffManager;->getBackedOffPoolSize(I)I

    move-result v0

    invoke-interface {v2, p1, v0}, Lorg/apache/http/pool/ConnPoolControl;->setMaxPerRoute(Ljava/lang/Object;I)V

    .line 95
    iget-object v0, p0, Lorg/apache/http/impl/client/AIMDBackoffManager;->lastRouteBackoffs:Ljava/util/Map;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public probe(Lorg/apache/http/conn/routing/HttpRoute;)V
    .locals 10

    .prologue
    .line 108
    iget-object v1, p0, Lorg/apache/http/impl/client/AIMDBackoffManager;->connPerRoute:Lorg/apache/http/pool/ConnPoolControl;

    monitor-enter v1

    .line 109
    :try_start_0
    iget-object v0, p0, Lorg/apache/http/impl/client/AIMDBackoffManager;->connPerRoute:Lorg/apache/http/pool/ConnPoolControl;

    invoke-interface {v0, p1}, Lorg/apache/http/pool/ConnPoolControl;->getMaxPerRoute(Ljava/lang/Object;)I

    move-result v0

    .line 110
    iget v2, p0, Lorg/apache/http/impl/client/AIMDBackoffManager;->cap:I

    if-lt v0, v2, :cond_1

    iget v0, p0, Lorg/apache/http/impl/client/AIMDBackoffManager;->cap:I

    .line 111
    :goto_0
    iget-object v2, p0, Lorg/apache/http/impl/client/AIMDBackoffManager;->lastRouteProbes:Ljava/util/Map;

    invoke-direct {p0, v2, p1}, Lorg/apache/http/impl/client/AIMDBackoffManager;->getLastUpdate(Ljava/util/Map;Lorg/apache/http/conn/routing/HttpRoute;)Ljava/lang/Long;

    move-result-object v2

    .line 112
    iget-object v3, p0, Lorg/apache/http/impl/client/AIMDBackoffManager;->lastRouteBackoffs:Ljava/util/Map;

    invoke-direct {p0, v3, p1}, Lorg/apache/http/impl/client/AIMDBackoffManager;->getLastUpdate(Ljava/util/Map;Lorg/apache/http/conn/routing/HttpRoute;)Ljava/lang/Long;

    move-result-object v3

    .line 113
    iget-object v4, p0, Lorg/apache/http/impl/client/AIMDBackoffManager;->clock:Lorg/apache/http/impl/client/Clock;

    invoke-interface {v4}, Lorg/apache/http/impl/client/Clock;->getCurrentTime()J

    move-result-wide v4

    .line 114
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sub-long v6, v4, v6

    iget-wide v8, p0, Lorg/apache/http/impl/client/AIMDBackoffManager;->coolDown:J

    cmp-long v2, v6, v8

    if-ltz v2, :cond_0

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long v2, v4, v2

    iget-wide v6, p0, Lorg/apache/http/impl/client/AIMDBackoffManager;->coolDown:J

    cmp-long v2, v2, v6

    if-gez v2, :cond_2

    .line 115
    :cond_0
    monitor-exit v1

    .line 119
    :goto_1
    return-void

    .line 110
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 117
    :cond_2
    iget-object v2, p0, Lorg/apache/http/impl/client/AIMDBackoffManager;->connPerRoute:Lorg/apache/http/pool/ConnPoolControl;

    invoke-interface {v2, p1, v0}, Lorg/apache/http/pool/ConnPoolControl;->setMaxPerRoute(Ljava/lang/Object;I)V

    .line 118
    iget-object v0, p0, Lorg/apache/http/impl/client/AIMDBackoffManager;->lastRouteProbes:Ljava/util/Map;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setBackoffFactor(D)V
    .locals 3

    .prologue
    .line 140
    const-wide/16 v0, 0x0

    cmpl-double v0, p1, v0

    if-lez v0, :cond_0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpg-double v0, p1, v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "Backoff factor must be 0.0 < f < 1.0"

    invoke-static {v0, v1}, Lorg/apache/http/util/Args;->check(ZLjava/lang/String;)V

    .line 141
    iput-wide p1, p0, Lorg/apache/http/impl/client/AIMDBackoffManager;->backoffFactor:D

    .line 142
    return-void

    .line 140
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setCooldownMillis(J)V
    .locals 3

    .prologue
    .line 152
    iget-wide v0, p0, Lorg/apache/http/impl/client/AIMDBackoffManager;->coolDown:J

    const-string v2, "Cool down"

    invoke-static {v0, v1, v2}, Lorg/apache/http/util/Args;->positive(JLjava/lang/String;)J

    .line 153
    iput-wide p1, p0, Lorg/apache/http/impl/client/AIMDBackoffManager;->coolDown:J

    .line 154
    return-void
.end method

.method public setPerHostConnectionCap(I)V
    .locals 1

    .prologue
    .line 162
    const-string v0, "Per host connection cap"

    invoke-static {p1, v0}, Lorg/apache/http/util/Args;->positive(ILjava/lang/String;)I

    .line 163
    iput p1, p0, Lorg/apache/http/impl/client/AIMDBackoffManager;->cap:I

    .line 164
    return-void
.end method
