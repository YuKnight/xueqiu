.class public final Lc/k;
.super Ljava/lang/Object;
.source "GzipSource.java"

# interfaces
.implements Lc/s;


# instance fields
.field private a:I

.field private final b:Lc/f;

.field private final c:Ljava/util/zip/Inflater;

.field private final d:Lc/l;

.field private final e:Ljava/util/zip/CRC32;


# direct methods
.method public constructor <init>(Lc/s;)V
    .locals 3

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput v0, p0, Lc/k;->a:I

    .line 58
    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    iput-object v0, p0, Lc/k;->e:Ljava/util/zip/CRC32;

    .line 61
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "source == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 62
    :cond_0
    new-instance v0, Ljava/util/zip/Inflater;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/zip/Inflater;-><init>(Z)V

    iput-object v0, p0, Lc/k;->c:Ljava/util/zip/Inflater;

    .line 63
    invoke-static {p1}, Lc/m;->a(Lc/s;)Lc/f;

    move-result-object v0

    iput-object v0, p0, Lc/k;->b:Lc/f;

    .line 64
    new-instance v0, Lc/l;

    iget-object v1, p0, Lc/k;->b:Lc/f;

    iget-object v2, p0, Lc/k;->c:Ljava/util/zip/Inflater;

    invoke-direct {v0, v1, v2}, Lc/l;-><init>(Lc/f;Ljava/util/zip/Inflater;)V

    iput-object v0, p0, Lc/k;->d:Lc/l;

    .line 65
    return-void
.end method

.method private a(Lc/d;JJ)V
    .locals 8

    .prologue
    const-wide/16 v2, 0x0

    .line 188
    iget-object v0, p1, Lc/d;->a:Lc/p;

    .line 189
    :goto_0
    iget v1, v0, Lc/p;->c:I

    iget v4, v0, Lc/p;->b:I

    sub-int/2addr v1, v4

    int-to-long v4, v1

    cmp-long v1, p2, v4

    if-ltz v1, :cond_0

    .line 190
    iget v1, v0, Lc/p;->c:I

    iget v4, v0, Lc/p;->b:I

    sub-int/2addr v1, v4

    int-to-long v4, v1

    sub-long/2addr p2, v4

    .line 189
    iget-object v0, v0, Lc/p;->f:Lc/p;

    goto :goto_0

    .line 194
    :cond_0
    :goto_1
    cmp-long v1, p4, v2

    if-lez v1, :cond_1

    .line 195
    iget v1, v0, Lc/p;->b:I

    int-to-long v4, v1

    add-long/2addr v4, p2

    long-to-int v1, v4

    .line 196
    iget v4, v0, Lc/p;->c:I

    sub-int/2addr v4, v1

    int-to-long v4, v4

    invoke-static {v4, v5, p4, p5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-int v4, v4

    .line 197
    iget-object v5, p0, Lc/k;->e:Ljava/util/zip/CRC32;

    iget-object v6, v0, Lc/p;->a:[B

    invoke-virtual {v5, v6, v1, v4}, Ljava/util/zip/CRC32;->update([BII)V

    .line 198
    int-to-long v4, v4

    sub-long/2addr p4, v4

    .line 194
    iget-object v0, v0, Lc/p;->f:Lc/p;

    move-wide p2, v2

    goto :goto_1

    .line 201
    :cond_1
    return-void
.end method

.method private static a(Ljava/lang/String;II)V
    .locals 5

    .prologue
    .line 204
    if-eq p2, p1, :cond_0

    .line 205
    new-instance v0, Ljava/io/IOException;

    const-string v1, "%s: actual 0x%08x != expected 0x%08x"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 208
    :cond_0
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lc/k;->d:Lc/l;

    invoke-virtual {v0}, Lc/l;->close()V

    .line 183
    return-void
.end method

.method public final read(Lc/d;J)J
    .locals 10

    .prologue
    .line 68
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "byteCount < 0: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-nez v0, :cond_1

    const-wide/16 v4, 0x0

    .line 104
    :goto_0
    return-wide v4

    .line 72
    :cond_1
    iget v0, p0, Lc/k;->a:I

    if-nez v0, :cond_e

    .line 1114
    iget-object v0, p0, Lc/k;->b:Lc/f;

    const-wide/16 v2, 0xa

    invoke-interface {v0, v2, v3}, Lc/f;->a(J)V

    .line 1115
    iget-object v0, p0, Lc/k;->b:Lc/f;

    invoke-interface {v0}, Lc/f;->a()Lc/d;

    move-result-object v0

    const-wide/16 v2, 0x3

    invoke-virtual {v0, v2, v3}, Lc/d;->b(J)B

    move-result v7

    .line 1116
    shr-int/lit8 v0, v7, 0x1

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    const/4 v0, 0x1

    move v6, v0

    .line 1117
    :goto_1
    if-eqz v6, :cond_2

    iget-object v0, p0, Lc/k;->b:Lc/f;

    invoke-interface {v0}, Lc/f;->a()Lc/d;

    move-result-object v1

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0xa

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lc/k;->a(Lc/d;JJ)V

    .line 1119
    :cond_2
    iget-object v0, p0, Lc/k;->b:Lc/f;

    invoke-interface {v0}, Lc/f;->g()S

    move-result v0

    .line 1120
    const-string v1, "ID1ID2"

    const/16 v2, 0x1f8b

    invoke-static {v1, v2, v0}, Lc/k;->a(Ljava/lang/String;II)V

    .line 1121
    iget-object v0, p0, Lc/k;->b:Lc/f;

    const-wide/16 v2, 0x8

    invoke-interface {v0, v2, v3}, Lc/f;->f(J)V

    .line 1127
    shr-int/lit8 v0, v7, 0x2

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    .line 1128
    iget-object v0, p0, Lc/k;->b:Lc/f;

    const-wide/16 v2, 0x2

    invoke-interface {v0, v2, v3}, Lc/f;->a(J)V

    .line 1129
    if-eqz v6, :cond_3

    iget-object v0, p0, Lc/k;->b:Lc/f;

    invoke-interface {v0}, Lc/f;->a()Lc/d;

    move-result-object v1

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x2

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lc/k;->a(Lc/d;JJ)V

    .line 1130
    :cond_3
    iget-object v0, p0, Lc/k;->b:Lc/f;

    invoke-interface {v0}, Lc/f;->a()Lc/d;

    move-result-object v0

    invoke-virtual {v0}, Lc/d;->i()S

    move-result v8

    .line 1131
    iget-object v0, p0, Lc/k;->b:Lc/f;

    int-to-long v2, v8

    invoke-interface {v0, v2, v3}, Lc/f;->a(J)V

    .line 1132
    if-eqz v6, :cond_4

    iget-object v0, p0, Lc/k;->b:Lc/f;

    invoke-interface {v0}, Lc/f;->a()Lc/d;

    move-result-object v1

    const-wide/16 v2, 0x0

    int-to-long v4, v8

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lc/k;->a(Lc/d;JJ)V

    .line 1133
    :cond_4
    iget-object v0, p0, Lc/k;->b:Lc/f;

    int-to-long v2, v8

    invoke-interface {v0, v2, v3}, Lc/f;->f(J)V

    .line 1140
    :cond_5
    shr-int/lit8 v0, v7, 0x3

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_9

    .line 1141
    iget-object v0, p0, Lc/k;->b:Lc/f;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lc/f;->a(B)J

    move-result-wide v8

    .line 1142
    const-wide/16 v0, -0x1

    cmp-long v0, v8, v0

    if-nez v0, :cond_7

    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 1116
    :cond_6
    const/4 v0, 0x0

    move v6, v0

    goto/16 :goto_1

    .line 1143
    :cond_7
    if-eqz v6, :cond_8

    iget-object v0, p0, Lc/k;->b:Lc/f;

    invoke-interface {v0}, Lc/f;->a()Lc/d;

    move-result-object v1

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x1

    add-long/2addr v4, v8

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lc/k;->a(Lc/d;JJ)V

    .line 1144
    :cond_8
    iget-object v0, p0, Lc/k;->b:Lc/f;

    const-wide/16 v2, 0x1

    add-long/2addr v2, v8

    invoke-interface {v0, v2, v3}, Lc/f;->f(J)V

    .line 1151
    :cond_9
    shr-int/lit8 v0, v7, 0x4

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_c

    .line 1152
    iget-object v0, p0, Lc/k;->b:Lc/f;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lc/f;->a(B)J

    move-result-wide v8

    .line 1153
    const-wide/16 v0, -0x1

    cmp-long v0, v8, v0

    if-nez v0, :cond_a

    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 1154
    :cond_a
    if-eqz v6, :cond_b

    iget-object v0, p0, Lc/k;->b:Lc/f;

    invoke-interface {v0}, Lc/f;->a()Lc/d;

    move-result-object v1

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x1

    add-long/2addr v4, v8

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lc/k;->a(Lc/d;JJ)V

    .line 1155
    :cond_b
    iget-object v0, p0, Lc/k;->b:Lc/f;

    const-wide/16 v2, 0x1

    add-long/2addr v2, v8

    invoke-interface {v0, v2, v3}, Lc/f;->f(J)V

    .line 1162
    :cond_c
    if-eqz v6, :cond_d

    .line 1163
    const-string v0, "FHCRC"

    iget-object v1, p0, Lc/k;->b:Lc/f;

    invoke-interface {v1}, Lc/f;->i()S

    move-result v1

    iget-object v2, p0, Lc/k;->e:Ljava/util/zip/CRC32;

    invoke-virtual {v2}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v2

    long-to-int v2, v2

    int-to-short v2, v2

    invoke-static {v0, v1, v2}, Lc/k;->a(Ljava/lang/String;II)V

    .line 1164
    iget-object v0, p0, Lc/k;->e:Ljava/util/zip/CRC32;

    invoke-virtual {v0}, Ljava/util/zip/CRC32;->reset()V

    .line 74
    :cond_d
    const/4 v0, 0x1

    iput v0, p0, Lc/k;->a:I

    .line 78
    :cond_e
    iget v0, p0, Lc/k;->a:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_10

    .line 79
    iget-wide v2, p1, Lc/d;->b:J

    .line 80
    iget-object v0, p0, Lc/k;->d:Lc/l;

    invoke-virtual {v0, p1, p2, p3}, Lc/l;->read(Lc/d;J)J

    move-result-wide v4

    .line 81
    const-wide/16 v0, -0x1

    cmp-long v0, v4, v0

    if-eqz v0, :cond_f

    move-object v0, p0

    move-object v1, p1

    .line 82
    invoke-direct/range {v0 .. v5}, Lc/k;->a(Lc/d;JJ)V

    goto/16 :goto_0

    .line 85
    :cond_f
    const/4 v0, 0x2

    iput v0, p0, Lc/k;->a:I

    .line 91
    :cond_10
    iget v0, p0, Lc/k;->a:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_11

    .line 1173
    const-string v0, "CRC"

    iget-object v1, p0, Lc/k;->b:Lc/f;

    invoke-interface {v1}, Lc/f;->j()I

    move-result v1

    iget-object v2, p0, Lc/k;->e:Ljava/util/zip/CRC32;

    invoke-virtual {v2}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-static {v0, v1, v2}, Lc/k;->a(Ljava/lang/String;II)V

    .line 1174
    const-string v0, "ISIZE"

    iget-object v1, p0, Lc/k;->b:Lc/f;

    invoke-interface {v1}, Lc/f;->j()I

    move-result v1

    iget-object v2, p0, Lc/k;->c:Ljava/util/zip/Inflater;

    invoke-virtual {v2}, Ljava/util/zip/Inflater;->getTotalOut()I

    move-result v2

    invoke-static {v0, v1, v2}, Lc/k;->a(Ljava/lang/String;II)V

    .line 93
    const/4 v0, 0x3

    iput v0, p0, Lc/k;->a:I

    .line 99
    iget-object v0, p0, Lc/k;->b:Lc/f;

    invoke-interface {v0}, Lc/f;->d()Z

    move-result v0

    if-nez v0, :cond_11

    .line 100
    new-instance v0, Ljava/io/IOException;

    const-string v1, "gzip finished without exhausting source"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 104
    :cond_11
    const-wide/16 v4, -0x1

    goto/16 :goto_0
.end method

.method public final timeout()Lc/t;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lc/k;->b:Lc/f;

    invoke-interface {v0}, Lc/f;->timeout()Lc/t;

    move-result-object v0

    return-object v0
.end method
