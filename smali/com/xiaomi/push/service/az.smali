.class public final Lcom/xiaomi/push/service/az;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/util/regex/Pattern;

.field private static b:J

.field private static c:Ljava/util/concurrent/ThreadPoolExecutor;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v2, 0x1

    const-string v0, "([0-9]{1,3}\\.[0-9]{1,3}\\.[0-9]{1,3}\\.[0-9]{1,3})"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/push/service/az;->a:Ljava/util/regex/Pattern;

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/xiaomi/push/service/az;->b:J

    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v4, 0x14

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    move v3, v2

    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    sput-object v1, Lcom/xiaomi/push/service/az;->c:Ljava/util/concurrent/ThreadPoolExecutor;

    return-void
.end method

.method public static a()V
    .locals 6

    .prologue
    .line 0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-object v2, Lcom/xiaomi/push/service/az;->c:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v2}, Ljava/util/concurrent/ThreadPoolExecutor;->getActiveCount()I

    move-result v2

    if-lez v2, :cond_1

    sget-wide v2, Lcom/xiaomi/push/service/az;->b:J

    sub-long v2, v0, v2

    const-wide/32 v4, 0x1b7740

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    .line 1000
    :cond_1
    sget-object v2, Lcom/xiaomi/f/h;->a:Lcom/xiaomi/f/g;

    .line 2000
    iget-boolean v2, v2, Lcom/xiaomi/f/g;->a:Z

    .line 0
    if-eqz v2, :cond_0

    invoke-static {}, Lcom/xiaomi/push/service/t;->a()Lcom/xiaomi/push/service/t;

    move-result-object v2

    .line 3000
    iget-object v2, v2, Lcom/xiaomi/push/service/t;->a:Lcom/xiaomi/push/b/b;

    .line 0
    if-eqz v2, :cond_0

    .line 4000
    iget-object v3, v2, Lcom/xiaomi/push/b/b;->d:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    .line 0
    if-lez v3, :cond_0

    sput-wide v0, Lcom/xiaomi/push/service/az;->b:J

    .line 5000
    iget-object v0, v2, Lcom/xiaomi/push/b/b;->d:Ljava/util/List;

    .line 6000
    sget-object v1, Lcom/xiaomi/push/service/az;->c:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v2, Lcom/xiaomi/push/service/ba;

    invoke-direct {v2, v0}, Lcom/xiaomi/push/service/ba;-><init>(Ljava/util/List;)V

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method static synthetic a(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p0}, Lcom/xiaomi/push/service/az;->b(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static b(Ljava/lang/String;)Z
    .locals 6

    const/4 v0, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "ConnectivityTest: begin to connect to "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/a/a/b/c;->a(Ljava/lang/String;)V

    new-instance v1, Ljava/net/Socket;

    invoke-direct {v1}, Ljava/net/Socket;-><init>()V

    const/16 v4, 0x1466

    invoke-static {p0, v4}, Lcom/xiaomi/d/d;->b(Ljava/lang/String;I)Ljava/net/InetSocketAddress;

    move-result-object v4

    const/16 v5, 0x1388

    invoke-virtual {v1, v4, v5}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v2, v4, v2

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "ConnectivityTest: connect to "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaomi/a/a/b/c;->a(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ConnectivityTest: could not connect to:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " description: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/a/a/b/c;->d(Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0
.end method
