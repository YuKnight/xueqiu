.class final Lc/o$1;
.super Ljava/io/InputStream;
.source "RealBufferedSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/o;->e()Ljava/io/InputStream;
.end annotation


# instance fields
.field final synthetic a:Lc/o;


# direct methods
.method constructor <init>(Lc/o;)V
    .locals 0

    .prologue
    .line 323
    iput-object p1, p0, Lc/o$1;->a:Lc/o;

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    return-void
.end method


# virtual methods
.method public final available()I
    .locals 4

    .prologue
    .line 346
    iget-object v0, p0, Lc/o$1;->a:Lc/o;

    .line 3025
    iget-boolean v0, v0, Lc/o;->c:Z

    .line 346
    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 347
    :cond_0
    iget-object v0, p0, Lc/o$1;->a:Lc/o;

    iget-object v0, v0, Lc/o;->a:Lc/d;

    iget-wide v0, v0, Lc/d;->b:J

    const-wide/32 v2, 0x7fffffff

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public final close()V
    .locals 1

    .prologue
    .line 351
    iget-object v0, p0, Lc/o$1;->a:Lc/o;

    invoke-virtual {v0}, Lc/o;->close()V

    .line 352
    return-void
.end method

.method public final read()I
    .locals 4

    .prologue
    .line 325
    iget-object v0, p0, Lc/o$1;->a:Lc/o;

    .line 1025
    iget-boolean v0, v0, Lc/o;->c:Z

    .line 325
    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 326
    :cond_0
    iget-object v0, p0, Lc/o$1;->a:Lc/o;

    iget-object v0, v0, Lc/o;->a:Lc/d;

    iget-wide v0, v0, Lc/d;->b:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 327
    iget-object v0, p0, Lc/o$1;->a:Lc/o;

    iget-object v0, v0, Lc/o;->b:Lc/s;

    iget-object v1, p0, Lc/o$1;->a:Lc/o;

    iget-object v1, v1, Lc/o;->a:Lc/d;

    const-wide/16 v2, 0x800

    invoke-interface {v0, v1, v2, v3}, Lc/s;->read(Lc/d;J)J

    move-result-wide v0

    .line 328
    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    const/4 v0, -0x1

    .line 330
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lc/o$1;->a:Lc/o;

    iget-object v0, v0, Lc/o;->a:Lc/d;

    invoke-virtual {v0}, Lc/d;->f()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    goto :goto_0
.end method

.method public final read([BII)I
    .locals 6

    .prologue
    .line 334
    iget-object v0, p0, Lc/o$1;->a:Lc/o;

    .line 2025
    iget-boolean v0, v0, Lc/o;->c:Z

    .line 334
    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 335
    :cond_0
    array-length v0, p1

    int-to-long v0, v0

    int-to-long v2, p2

    int-to-long v4, p3

    invoke-static/range {v0 .. v5}, Lc/u;->a(JJJ)V

    .line 337
    iget-object v0, p0, Lc/o$1;->a:Lc/o;

    iget-object v0, v0, Lc/o;->a:Lc/d;

    iget-wide v0, v0, Lc/d;->b:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 338
    iget-object v0, p0, Lc/o$1;->a:Lc/o;

    iget-object v0, v0, Lc/o;->b:Lc/s;

    iget-object v1, p0, Lc/o$1;->a:Lc/o;

    iget-object v1, v1, Lc/o;->a:Lc/d;

    const-wide/16 v2, 0x800

    invoke-interface {v0, v1, v2, v3}, Lc/s;->read(Lc/d;J)J

    move-result-wide v0

    .line 339
    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    const/4 v0, -0x1

    .line 342
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lc/o$1;->a:Lc/o;

    iget-object v0, v0, Lc/o;->a:Lc/d;

    invoke-virtual {v0, p1, p2, p3}, Lc/d;->a([BII)I

    move-result v0

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 355
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lc/o$1;->a:Lc/o;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".inputStream()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
