.class public final Lcom/tencent/bugly/proguard/u;
.super Ljava/lang/Object;
.source "BUGLY"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:I

.field private b:I

.field private final c:Landroid/content/Context;

.field private final d:I

.field private final e:[B

.field private final f:Lcom/tencent/bugly/crashreport/common/info/a;

.field private final g:Lcom/tencent/bugly/crashreport/common/strategy/a;

.field private final h:Lcom/tencent/bugly/proguard/r;

.field private final i:Lcom/tencent/bugly/proguard/t;

.field private final j:I

.field private final k:Lcom/tencent/bugly/proguard/s;

.field private final l:Lcom/tencent/bugly/proguard/s;

.field private m:Ljava/lang/String;

.field private n:I

.field private o:J

.field private p:J

.field private q:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;II[BLjava/lang/String;Lcom/tencent/bugly/proguard/s;Z)V
    .locals 10

    .prologue
    .line 82
    const/4 v8, 0x5

    const v9, 0xea60

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    invoke-direct/range {v0 .. v9}, Lcom/tencent/bugly/proguard/u;-><init>(Landroid/content/Context;II[BLjava/lang/String;Lcom/tencent/bugly/proguard/s;ZII)V

    .line 83
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;II[BLjava/lang/String;Lcom/tencent/bugly/proguard/s;ZII)V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x3

    iput v0, p0, Lcom/tencent/bugly/proguard/u;->a:I

    .line 40
    const/16 v0, 0x7530

    iput v0, p0, Lcom/tencent/bugly/proguard/u;->b:I

    .line 53
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/bugly/proguard/u;->m:Ljava/lang/String;

    .line 55
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/bugly/proguard/u;->n:I

    .line 56
    iput-wide v2, p0, Lcom/tencent/bugly/proguard/u;->o:J

    .line 57
    iput-wide v2, p0, Lcom/tencent/bugly/proguard/u;->p:J

    .line 60
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/bugly/proguard/u;->q:Z

    .line 99
    iput-object p1, p0, Lcom/tencent/bugly/proguard/u;->c:Landroid/content/Context;

    .line 100
    invoke-static {p1}, Lcom/tencent/bugly/crashreport/common/info/a;->a(Landroid/content/Context;)Lcom/tencent/bugly/crashreport/common/info/a;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/proguard/u;->f:Lcom/tencent/bugly/crashreport/common/info/a;

    .line 101
    iput-object p4, p0, Lcom/tencent/bugly/proguard/u;->e:[B

    .line 102
    invoke-static {}, Lcom/tencent/bugly/crashreport/common/strategy/a;->a()Lcom/tencent/bugly/crashreport/common/strategy/a;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/proguard/u;->g:Lcom/tencent/bugly/crashreport/common/strategy/a;

    .line 103
    invoke-static {p1}, Lcom/tencent/bugly/proguard/r;->a(Landroid/content/Context;)Lcom/tencent/bugly/proguard/r;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/proguard/u;->h:Lcom/tencent/bugly/proguard/r;

    .line 104
    invoke-static {}, Lcom/tencent/bugly/proguard/t;->a()Lcom/tencent/bugly/proguard/t;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/proguard/u;->i:Lcom/tencent/bugly/proguard/t;

    .line 105
    iput p2, p0, Lcom/tencent/bugly/proguard/u;->j:I

    .line 106
    iput-object p5, p0, Lcom/tencent/bugly/proguard/u;->m:Ljava/lang/String;

    .line 107
    iput-object p6, p0, Lcom/tencent/bugly/proguard/u;->k:Lcom/tencent/bugly/proguard/s;

    .line 108
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/bugly/proguard/u;->l:Lcom/tencent/bugly/proguard/s;

    .line 110
    iput-boolean p7, p0, Lcom/tencent/bugly/proguard/u;->q:Z

    .line 112
    if-eqz p7, :cond_0

    .line 113
    sparse-switch p3, :sswitch_data_0

    .line 120
    :cond_0
    :goto_0
    iput p3, p0, Lcom/tencent/bugly/proguard/u;->d:I

    .line 126
    const/4 v0, 0x5

    iput v0, p0, Lcom/tencent/bugly/proguard/u;->a:I

    .line 127
    const v0, 0xea60

    iput v0, p0, Lcom/tencent/bugly/proguard/u;->b:I

    .line 128
    return-void

    .line 115
    :sswitch_0
    const/16 p3, 0x33e

    .line 116
    goto :goto_0

    .line 119
    :sswitch_1
    const/16 p3, 0x348

    goto :goto_0

    .line 113
    nop

    :sswitch_data_0
    .sparse-switch
        0x1fe -> :sswitch_1
        0x276 -> :sswitch_0
        0x280 -> :sswitch_1
    .end sparse-switch
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/tencent/bugly/proguard/am;Ljava/lang/String;Lcom/tencent/bugly/proguard/s;Z)V
    .locals 8

    .prologue
    .line 69
    iget v3, p3, Lcom/tencent/bugly/proguard/am;->g:I

    invoke-static {p3}, Lcom/tencent/bugly/proguard/a;->a(Lcom/tencent/bugly/proguard/am;)[B

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v5, p4

    move-object v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/tencent/bugly/proguard/u;-><init>(Landroid/content/Context;II[BLjava/lang/String;Lcom/tencent/bugly/proguard/s;Z)V

    .line 71
    return-void
.end method

.method private a(Lcom/tencent/bugly/proguard/an;ZILjava/lang/String;I)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 160
    iget v0, p0, Lcom/tencent/bugly/proguard/u;->d:I

    sparse-switch v0, :sswitch_data_0

    .line 170
    iget v0, p0, Lcom/tencent/bugly/proguard/u;->d:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 172
    :goto_0
    if-eqz p2, :cond_4

    .line 173
    const-string v1, "[upload] success: %s"

    new-array v2, v4, [Ljava/lang/Object;

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/w;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 181
    :cond_0
    :goto_1
    iget-wide v0, p0, Lcom/tencent/bugly/proguard/u;->o:J

    iget-wide v2, p0, Lcom/tencent/bugly/proguard/u;->p:J

    add-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 182
    iget-object v0, p0, Lcom/tencent/bugly/proguard/u;->i:Lcom/tencent/bugly/proguard/t;

    invoke-virtual {v0}, Lcom/tencent/bugly/proguard/t;->b()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/tencent/bugly/proguard/u;->o:J

    add-long/2addr v0, v2

    iget-wide v2, p0, Lcom/tencent/bugly/proguard/u;->p:J

    add-long/2addr v0, v2

    .line 183
    iget-object v2, p0, Lcom/tencent/bugly/proguard/u;->i:Lcom/tencent/bugly/proguard/t;

    invoke-virtual {v2, v0, v1}, Lcom/tencent/bugly/proguard/t;->a(J)V

    .line 186
    :cond_1
    iget-object v0, p0, Lcom/tencent/bugly/proguard/u;->k:Lcom/tencent/bugly/proguard/s;

    if-eqz v0, :cond_2

    .line 187
    iget-object v0, p0, Lcom/tencent/bugly/proguard/u;->k:Lcom/tencent/bugly/proguard/s;

    invoke-interface {v0, p2}, Lcom/tencent/bugly/proguard/s;->a(Z)V

    .line 189
    :cond_2
    iget-object v0, p0, Lcom/tencent/bugly/proguard/u;->l:Lcom/tencent/bugly/proguard/s;

    if-eqz v0, :cond_3

    .line 190
    iget-object v0, p0, Lcom/tencent/bugly/proguard/u;->l:Lcom/tencent/bugly/proguard/s;

    invoke-interface {v0, p2}, Lcom/tencent/bugly/proguard/s;->a(Z)V

    .line 192
    :cond_3
    return-void

    .line 163
    :sswitch_0
    const-string v0, "crash"

    goto :goto_0

    .line 167
    :sswitch_1
    const-string v0, "userinfo"

    goto :goto_0

    .line 175
    :cond_4
    const-string v1, "[upload] fail! %s %d %s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v4

    const/4 v0, 0x2

    aput-object p4, v2, v0

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/w;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 176
    iget-boolean v0, p0, Lcom/tencent/bugly/proguard/u;->q:Z

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/tencent/bugly/proguard/u;->i:Lcom/tencent/bugly/proguard/t;

    const/4 v1, 0x0

    invoke-virtual {v0, p5, v1}, Lcom/tencent/bugly/proguard/t;->a(ILcom/tencent/bugly/proguard/an;)V

    goto :goto_1

    .line 160
    nop

    :sswitch_data_0
    .sparse-switch
        0x276 -> :sswitch_0
        0x280 -> :sswitch_1
        0x33e -> :sswitch_0
        0x348 -> :sswitch_1
    .end sparse-switch
.end method

.method private static a(Lcom/tencent/bugly/proguard/an;Lcom/tencent/bugly/crashreport/common/info/a;Lcom/tencent/bugly/crashreport/common/strategy/a;)Z
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 199
    if-nez p0, :cond_0

    .line 200
    const-string v0, "resp == null!"

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/w;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    move v0, v6

    .line 247
    :goto_0
    return v0

    .line 204
    :cond_0
    iget-byte v0, p0, Lcom/tencent/bugly/proguard/an;->a:B

    if-eqz v0, :cond_1

    .line 205
    const-string v0, "resp result error %d"

    new-array v1, v7, [Ljava/lang/Object;

    iget-byte v2, p0, Lcom/tencent/bugly/proguard/an;->a:B

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/w;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    move v0, v6

    .line 206
    goto :goto_0

    .line 209
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/tencent/bugly/proguard/an;->d:Ljava/lang/String;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_4

    move v0, v6

    :goto_1
    if-nez v0, :cond_2

    invoke-static {}, Lcom/tencent/bugly/crashreport/common/info/a;->a()Lcom/tencent/bugly/crashreport/common/info/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/bugly/crashreport/common/info/a;->h()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/bugly/proguard/an;->d:Ljava/lang/String;

    if-eq v0, v1, :cond_2

    .line 211
    invoke-static {}, Lcom/tencent/bugly/proguard/o;->a()Lcom/tencent/bugly/proguard/o;

    move-result-object v0

    sget v1, Lcom/tencent/bugly/crashreport/common/strategy/a;->a:I

    const-string v2, "key_ip"

    iget-object v3, p0, Lcom/tencent/bugly/proguard/an;->d:Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/tencent/bugly/proguard/o;->a(ILjava/lang/String;[BLcom/tencent/bugly/proguard/n;Z)Z

    .line 214
    iget-object v0, p0, Lcom/tencent/bugly/proguard/an;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/tencent/bugly/crashreport/common/info/a;->d(Ljava/lang/String;)V

    .line 216
    :cond_2
    iget-object v0, p0, Lcom/tencent/bugly/proguard/an;->g:Ljava/lang/String;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_5

    move v0, v6

    :goto_2
    if-nez v0, :cond_3

    invoke-static {}, Lcom/tencent/bugly/crashreport/common/info/a;->a()Lcom/tencent/bugly/crashreport/common/info/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/bugly/crashreport/common/info/a;->i()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/bugly/proguard/an;->g:Ljava/lang/String;

    if-eq v0, v1, :cond_3

    .line 218
    invoke-static {}, Lcom/tencent/bugly/proguard/o;->a()Lcom/tencent/bugly/proguard/o;

    move-result-object v0

    sget v1, Lcom/tencent/bugly/crashreport/common/strategy/a;->a:I

    const-string v2, "key_imei"

    iget-object v3, p0, Lcom/tencent/bugly/proguard/an;->g:Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/tencent/bugly/proguard/o;->a(ILjava/lang/String;[BLcom/tencent/bugly/proguard/n;Z)Z

    .line 220
    iget-object v0, p0, Lcom/tencent/bugly/proguard/an;->g:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/tencent/bugly/crashreport/common/info/a;->e(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 225
    :cond_3
    :goto_3
    iget-wide v0, p0, Lcom/tencent/bugly/proguard/an;->e:J

    iput-wide v0, p1, Lcom/tencent/bugly/crashreport/common/info/a;->h:J

    .line 228
    iget v0, p0, Lcom/tencent/bugly/proguard/an;->b:I

    const/16 v1, 0x1fe

    if-ne v0, v1, :cond_8

    .line 229
    iget-object v0, p0, Lcom/tencent/bugly/proguard/an;->c:[B

    if-nez v0, :cond_6

    .line 230
    const-string v0, "remote data is miss! %d"

    new-array v1, v7, [Ljava/lang/Object;

    iget v2, p0, Lcom/tencent/bugly/proguard/an;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/w;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    move v0, v6

    .line 231
    goto/16 :goto_0

    :cond_4
    move v0, v7

    .line 209
    goto :goto_1

    :cond_5
    move v0, v7

    .line 216
    goto :goto_2

    .line 234
    :cond_6
    iget-object v0, p0, Lcom/tencent/bugly/proguard/an;->c:[B

    const-class v1, Lcom/tencent/bugly/proguard/ap;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/a;->a([BLjava/lang/Class;)Lcom/tencent/bugly/proguard/j;

    move-result-object v0

    check-cast v0, Lcom/tencent/bugly/proguard/ap;

    .line 236
    if-nez v0, :cond_7

    .line 237
    const-string v0, "remote data is error! %d"

    new-array v1, v7, [Ljava/lang/Object;

    iget v2, p0, Lcom/tencent/bugly/proguard/an;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/w;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    move v0, v6

    .line 238
    goto/16 :goto_0

    .line 241
    :cond_7
    const-string v2, "en:%b qu:%b uin:%b vm:%d"

    const/4 v1, 0x4

    new-array v3, v1, [Ljava/lang/Object;

    iget-boolean v1, v0, Lcom/tencent/bugly/proguard/ap;->a:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v3, v6

    iget-boolean v1, v0, Lcom/tencent/bugly/proguard/ap;->c:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v3, v7

    const/4 v1, 0x2

    iget-boolean v4, v0, Lcom/tencent/bugly/proguard/ap;->b:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v4, 0x3

    iget-object v1, v0, Lcom/tencent/bugly/proguard/ap;->g:Ljava/util/Map;

    if-nez v1, :cond_9

    const/4 v1, -0x1

    :goto_4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Lcom/tencent/bugly/proguard/w;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 244
    invoke-virtual {p2, v0}, Lcom/tencent/bugly/crashreport/common/strategy/a;->a(Lcom/tencent/bugly/proguard/ap;)V

    :cond_8
    move v0, v7

    .line 247
    goto/16 :goto_0

    .line 241
    :cond_9
    iget-object v1, v0, Lcom/tencent/bugly/proguard/ap;->g:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    goto :goto_4

    :catch_0
    move-exception v0

    goto :goto_3
.end method


# virtual methods
.method public final a(J)V
    .locals 3

    .prologue
    .line 463
    iget v0, p0, Lcom/tencent/bugly/proguard/u;->n:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tencent/bugly/proguard/u;->n:I

    .line 464
    iget-wide v0, p0, Lcom/tencent/bugly/proguard/u;->o:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/tencent/bugly/proguard/u;->o:J

    .line 465
    return-void
.end method

.method public final b(J)V
    .locals 3

    .prologue
    .line 468
    iget-wide v0, p0, Lcom/tencent/bugly/proguard/u;->p:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/tencent/bugly/proguard/u;->p:J

    .line 469
    return-void
.end method

.method public final run()V
    .locals 11

    .prologue
    .line 253
    :try_start_0
    iget-object v0, p0, Lcom/tencent/bugly/proguard/u;->e:[B

    .line 254
    const/4 v1, 0x0

    iput v1, p0, Lcom/tencent/bugly/proguard/u;->n:I

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/tencent/bugly/proguard/u;->o:J

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/tencent/bugly/proguard/u;->p:J

    iget-object v1, p0, Lcom/tencent/bugly/proguard/u;->i:Lcom/tencent/bugly/proguard/t;

    iget v2, p0, Lcom/tencent/bugly/proguard/u;->j:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Lcom/tencent/bugly/proguard/t;->a(IJ)V

    .line 257
    iget-object v1, p0, Lcom/tencent/bugly/proguard/u;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/tencent/bugly/proguard/a;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 258
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string v4, "network is not availiable!"

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/tencent/bugly/proguard/u;->a(Lcom/tencent/bugly/proguard/an;ZILjava/lang/String;I)V

    .line 460
    :cond_0
    :goto_0
    return-void

    .line 261
    :cond_1
    if-eqz v0, :cond_2

    array-length v1, v0

    if-nez v1, :cond_3

    .line 262
    :cond_2
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string v4, "[upload] fail, request package is empty!"

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/tencent/bugly/proguard/u;->a(Lcom/tencent/bugly/proguard/an;ZILjava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 456
    :catch_0
    move-exception v0

    .line 457
    invoke-static {v0}, Lcom/tencent/bugly/proguard/w;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 458
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 266
    :cond_3
    :try_start_1
    iget-object v1, p0, Lcom/tencent/bugly/proguard/u;->i:Lcom/tencent/bugly/proguard/t;

    invoke-virtual {v1}, Lcom/tencent/bugly/proguard/t;->b()J

    move-result-wide v2

    .line 267
    array-length v1, v0

    int-to-long v4, v1

    add-long/2addr v4, v2

    const-wide/32 v6, 0x200000

    cmp-long v1, v4, v6

    if-ltz v1, :cond_4

    .line 269
    const-string v0, "up too much wait to next time ! %d %d "

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v4

    const/4 v2, 0x1

    const-wide/32 v4, 0x200000

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/w;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 270
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string v4, "[upload] fail, over net consume: 2048K"

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/tencent/bugly/proguard/u;->a(Lcom/tencent/bugly/proguard/an;ZILjava/lang/String;I)V

    goto :goto_0

    .line 275
    :cond_4
    const-string v1, "do upload task %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/tencent/bugly/proguard/u;->d:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/w;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 277
    iget-object v1, p0, Lcom/tencent/bugly/proguard/u;->c:Landroid/content/Context;

    if-eqz v1, :cond_5

    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/tencent/bugly/proguard/u;->f:Lcom/tencent/bugly/crashreport/common/info/a;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/tencent/bugly/proguard/u;->g:Lcom/tencent/bugly/crashreport/common/strategy/a;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/tencent/bugly/proguard/u;->h:Lcom/tencent/bugly/proguard/r;

    if-nez v1, :cond_6

    .line 279
    :cond_5
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string v4, "[upload] fail, illegal access error!"

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/tencent/bugly/proguard/u;->a(Lcom/tencent/bugly/proguard/an;ZILjava/lang/String;I)V

    goto :goto_0

    .line 284
    :cond_6
    iget-object v1, p0, Lcom/tencent/bugly/proguard/u;->g:Lcom/tencent/bugly/crashreport/common/strategy/a;

    invoke-virtual {v1}, Lcom/tencent/bugly/crashreport/common/strategy/a;->c()Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;

    move-result-object v4

    .line 285
    if-nez v4, :cond_7

    .line 286
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string v4, "[upload] fail, illegal local strategy!"

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/tencent/bugly/proguard/u;->a(Lcom/tencent/bugly/proguard/an;ZILjava/lang/String;I)V

    goto/16 :goto_0

    .line 291
    :cond_7
    const/4 v3, 0x0

    .line 293
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 294
    const-string v1, "prodId"

    iget-object v2, p0, Lcom/tencent/bugly/proguard/u;->f:Lcom/tencent/bugly/crashreport/common/info/a;

    invoke-virtual {v2}, Lcom/tencent/bugly/crashreport/common/info/a;->e()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v6, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    const-string v1, "bundleId"

    iget-object v2, p0, Lcom/tencent/bugly/proguard/u;->f:Lcom/tencent/bugly/crashreport/common/info/a;

    iget-object v2, v2, Lcom/tencent/bugly/crashreport/common/info/a;->c:Ljava/lang/String;

    invoke-interface {v6, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    const-string v1, "appVer"

    iget-object v2, p0, Lcom/tencent/bugly/proguard/u;->f:Lcom/tencent/bugly/crashreport/common/info/a;

    iget-object v2, v2, Lcom/tencent/bugly/crashreport/common/info/a;->i:Ljava/lang/String;

    invoke-interface {v6, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    iget-boolean v1, p0, Lcom/tencent/bugly/proguard/u;->q:Z

    if-eqz v1, :cond_a

    .line 301
    const-string v1, "cmd"

    iget v2, p0, Lcom/tencent/bugly/proguard/u;->d:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v6, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    const-string v1, "platformId"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Byte;->toString(B)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v6, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    const-string v1, "sdkVer"

    iget-object v2, p0, Lcom/tencent/bugly/proguard/u;->f:Lcom/tencent/bugly/crashreport/common/info/a;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "2.1.9"

    invoke-interface {v6, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    const-string v1, "strategylastUpdateTime"

    iget-wide v8, v4, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->l:J

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v6, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    iget-object v1, p0, Lcom/tencent/bugly/proguard/u;->i:Lcom/tencent/bugly/proguard/t;

    invoke-virtual {v1, v6}, Lcom/tencent/bugly/proguard/t;->a(Ljava/util/Map;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 309
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string v4, "[upload] fail, failed to add security info to HTTP headers"

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/tencent/bugly/proguard/u;->a(Lcom/tencent/bugly/proguard/an;ZILjava/lang/String;I)V

    goto/16 :goto_0

    .line 314
    :cond_8
    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/a;->a([BI)[B

    move-result-object v0

    .line 315
    if-nez v0, :cond_9

    .line 316
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string v4, "[upload] fail, failed to zip request body"

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/tencent/bugly/proguard/u;->a(Lcom/tencent/bugly/proguard/an;ZILjava/lang/String;I)V

    goto/16 :goto_0

    .line 321
    :cond_9
    iget-object v1, p0, Lcom/tencent/bugly/proguard/u;->i:Lcom/tencent/bugly/proguard/t;

    invoke-virtual {v1, v0}, Lcom/tencent/bugly/proguard/t;->a([B)[B

    move-result-object v0

    .line 322
    if-nez v0, :cond_a

    .line 323
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string v4, "[upload] fail, failed to encrypt request body"

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/tencent/bugly/proguard/u;->a(Lcom/tencent/bugly/proguard/an;ZILjava/lang/String;I)V

    goto/16 :goto_0

    :cond_a
    move-object v1, v0

    .line 329
    const/4 v5, -0x1

    .line 330
    const/4 v0, 0x0

    .line 331
    :goto_1
    iget v2, p0, Lcom/tencent/bugly/proguard/u;->a:I

    if-ge v0, v2, :cond_1d

    .line 332
    add-int/lit8 v3, v0, 0x1

    if-eqz v0, :cond_b

    .line 333
    const-string v0, "failed to upload last time, wait and try(%d) again"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v2, v7

    invoke-static {v0, v2}, Lcom/tencent/bugly/proguard/w;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 334
    iget v0, p0, Lcom/tencent/bugly/proguard/u;->b:I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    int-to-long v8, v0

    :try_start_2
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 337
    :cond_b
    :goto_2
    :try_start_3
    const-string v0, "send %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v7, 0x0

    array-length v8, v1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v2, v7

    invoke-static {v0, v2}, Lcom/tencent/bugly/proguard/w;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 340
    iget-object v0, p0, Lcom/tencent/bugly/proguard/u;->m:Ljava/lang/String;

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_d

    const/4 v0, 0x0

    :goto_3
    if-eqz v0, :cond_c

    .line 341
    iget-boolean v0, p0, Lcom/tencent/bugly/proguard/u;->q:Z

    if-eqz v0, :cond_f

    .line 343
    iget v0, p0, Lcom/tencent/bugly/proguard/u;->d:I

    const/16 v2, 0x33e

    if-ne v0, v2, :cond_e

    .line 344
    iget-object v0, v4, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->o:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/bugly/proguard/u;->m:Ljava/lang/String;

    .line 353
    :cond_c
    :goto_4
    const-string v0, "do upload to %s with cmd %d (pid=%d | tid=%d)"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/tencent/bugly/proguard/u;->m:Ljava/lang/String;

    aput-object v8, v2, v7

    const/4 v7, 0x1

    iget v8, p0, Lcom/tencent/bugly/proguard/u;->d:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v2, v7

    const/4 v7, 0x2

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v2, v7

    const/4 v7, 0x3

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v2, v7

    invoke-static {v0, v2}, Lcom/tencent/bugly/proguard/w;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 355
    iget-object v0, p0, Lcom/tencent/bugly/proguard/u;->h:Lcom/tencent/bugly/proguard/r;

    iget-object v2, p0, Lcom/tencent/bugly/proguard/u;->m:Ljava/lang/String;

    invoke-virtual {v0, v2, v1, p0, v6}, Lcom/tencent/bugly/proguard/r;->a(Ljava/lang/String;[BLcom/tencent/bugly/proguard/u;Ljava/util/Map;)[B

    move-result-object v2

    .line 356
    if-nez v2, :cond_10

    .line 357
    const-string v0, "upload fail, no response!"

    const-string v2, "try upload fail! %d %s"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget v9, p0, Lcom/tencent/bugly/proguard/u;->d:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    aput-object v0, v7, v8

    invoke-static {v2, v7}, Lcom/tencent/bugly/proguard/w;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 358
    const/4 v0, 0x1

    move v10, v3

    move v3, v0

    move v0, v10

    .line 359
    goto/16 :goto_1

    .line 334
    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_2

    .line 340
    :cond_d
    const/4 v0, 0x1

    goto :goto_3

    .line 346
    :cond_e
    iget-object v0, v4, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->n:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/bugly/proguard/u;->m:Ljava/lang/String;

    goto :goto_4

    .line 350
    :cond_f
    iget-object v0, v4, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->p:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/bugly/proguard/u;->m:Ljava/lang/String;

    goto :goto_4

    .line 362
    :cond_10
    iget-object v0, p0, Lcom/tencent/bugly/proguard/u;->h:Lcom/tencent/bugly/proguard/r;

    iget-object v0, v0, Lcom/tencent/bugly/proguard/r;->a:Ljava/util/Map;

    .line 363
    iget-boolean v7, p0, Lcom/tencent/bugly/proguard/u;->q:Z

    if-eqz v7, :cond_15

    .line 364
    if-eqz v0, :cond_11

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v7

    if-eqz v7, :cond_11

    const-string v7, "status"

    invoke-interface {v0, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_12

    .line 366
    :cond_11
    const-string v0, "no headers from server, just try again (pid=%d | tid=%d)"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v2, v7

    const/4 v7, 0x1

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v2, v7

    invoke-static {v0, v2}, Lcom/tencent/bugly/proguard/w;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 368
    const-string v0, "upload fail, no status header"

    const-string v2, "try upload fail! %d %s"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget v9, p0, Lcom/tencent/bugly/proguard/u;->d:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    aput-object v0, v7, v8

    invoke-static {v2, v7}, Lcom/tencent/bugly/proguard/w;->e(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    .line 369
    const/4 v0, 0x1

    move v10, v3

    move v3, v0

    move v0, v10

    .line 370
    goto/16 :goto_1

    .line 374
    :cond_12
    :try_start_4
    const-string v7, "status"

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 377
    const-string v0, "status from server is %d (pid=%d | tid=%d)"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v0, v7}, Lcom/tencent/bugly/proguard/w;->c(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    .line 389
    if-eqz v5, :cond_15

    .line 391
    const/4 v0, 0x2

    if-ne v5, v0, :cond_14

    .line 393
    :try_start_5
    iget-wide v0, p0, Lcom/tencent/bugly/proguard/u;->o:J

    iget-wide v2, p0, Lcom/tencent/bugly/proguard/u;->p:J

    add-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_13

    .line 394
    iget-object v0, p0, Lcom/tencent/bugly/proguard/u;->i:Lcom/tencent/bugly/proguard/t;

    invoke-virtual {v0}, Lcom/tencent/bugly/proguard/t;->b()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/tencent/bugly/proguard/u;->o:J

    add-long/2addr v0, v2

    iget-wide v2, p0, Lcom/tencent/bugly/proguard/u;->p:J

    add-long/2addr v0, v2

    .line 395
    iget-object v2, p0, Lcom/tencent/bugly/proguard/u;->i:Lcom/tencent/bugly/proguard/t;

    invoke-virtual {v2, v0, v1}, Lcom/tencent/bugly/proguard/t;->a(J)V

    .line 398
    :cond_13
    iget-object v0, p0, Lcom/tencent/bugly/proguard/u;->i:Lcom/tencent/bugly/proguard/t;

    const/4 v1, 0x0

    invoke-virtual {v0, v5, v1}, Lcom/tencent/bugly/proguard/t;->a(ILcom/tencent/bugly/proguard/an;)V

    .line 400
    const-string v0, "Session ID is invalid, will try again immediately (pid=%d | tid=%d)"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/w;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 402
    iget-object v0, p0, Lcom/tencent/bugly/proguard/u;->i:Lcom/tencent/bugly/proguard/t;

    iget v1, p0, Lcom/tencent/bugly/proguard/u;->j:I

    iget v2, p0, Lcom/tencent/bugly/proguard/u;->d:I

    iget-object v3, p0, Lcom/tencent/bugly/proguard/u;->e:[B

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/tencent/bugly/proguard/u;->l:Lcom/tencent/bugly/proguard/s;

    invoke-virtual/range {v0 .. v5}, Lcom/tencent/bugly/proguard/t;->a(II[BLjava/lang/String;Lcom/tencent/bugly/proguard/s;)V

    goto/16 :goto_0

    .line 381
    :catch_2
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "upload fail, format of status header is invalid: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "try upload fail! %d %s"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget v9, p0, Lcom/tencent/bugly/proguard/u;->d:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    aput-object v0, v7, v8

    invoke-static {v2, v7}, Lcom/tencent/bugly/proguard/w;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 385
    const/4 v0, 0x1

    move v10, v3

    move v3, v0

    move v0, v10

    .line 386
    goto/16 :goto_1

    .line 404
    :cond_14
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "upload fail, status: "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/tencent/bugly/proguard/u;->a(Lcom/tencent/bugly/proguard/an;ZILjava/lang/String;I)V

    goto/16 :goto_0

    .line 411
    :cond_15
    const-string v0, "recv %d"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    array-length v4, v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/w;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 413
    iget-boolean v0, p0, Lcom/tencent/bugly/proguard/u;->q:Z

    if-eqz v0, :cond_17

    .line 415
    iget-object v0, p0, Lcom/tencent/bugly/proguard/u;->i:Lcom/tencent/bugly/proguard/t;

    invoke-virtual {v0, v2}, Lcom/tencent/bugly/proguard/t;->b([B)[B

    move-result-object v0

    .line 416
    if-nez v0, :cond_16

    .line 417
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v4, "upload fail, failed to decrypt response from server"

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/tencent/bugly/proguard/u;->a(Lcom/tencent/bugly/proguard/an;ZILjava/lang/String;I)V

    goto/16 :goto_0

    .line 422
    :cond_16
    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/a;->b([BI)[B

    move-result-object v0

    .line 423
    if-nez v0, :cond_18

    .line 424
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v4, "upload fail, failed to unzip(gzip) response from server"

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/tencent/bugly/proguard/u;->a(Lcom/tencent/bugly/proguard/an;ZILjava/lang/String;I)V

    goto/16 :goto_0

    :cond_17
    move-object v0, v2

    .line 430
    :cond_18
    iget-boolean v1, p0, Lcom/tencent/bugly/proguard/u;->q:Z

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/a;->a([BZ)Lcom/tencent/bugly/proguard/an;

    move-result-object v1

    .line 434
    if-nez v1, :cond_19

    .line 435
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v4, "upload fail, resp null!"

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/tencent/bugly/proguard/u;->a(Lcom/tencent/bugly/proguard/an;ZILjava/lang/String;I)V

    goto/16 :goto_0

    .line 439
    :cond_19
    iget-boolean v0, p0, Lcom/tencent/bugly/proguard/u;->q:Z

    if-eqz v0, :cond_1a

    .line 441
    iget-object v0, p0, Lcom/tencent/bugly/proguard/u;->i:Lcom/tencent/bugly/proguard/t;

    invoke-virtual {v0, v5, v1}, Lcom/tencent/bugly/proguard/t;->a(ILcom/tencent/bugly/proguard/an;)V

    .line 444
    :cond_1a
    const-string v2, "response %d %d"

    const/4 v0, 0x2

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    iget v4, v1, Lcom/tencent/bugly/proguard/an;->b:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v4, 0x1

    iget-object v0, v1, Lcom/tencent/bugly/proguard/an;->c:[B

    if-nez v0, :cond_1b

    const/4 v0, 0x0

    :goto_5
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Lcom/tencent/bugly/proguard/w;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 446
    iget-object v0, p0, Lcom/tencent/bugly/proguard/u;->f:Lcom/tencent/bugly/crashreport/common/info/a;

    iget-object v2, p0, Lcom/tencent/bugly/proguard/u;->g:Lcom/tencent/bugly/crashreport/common/strategy/a;

    invoke-static {v1, v0, v2}, Lcom/tencent/bugly/proguard/u;->a(Lcom/tencent/bugly/proguard/an;Lcom/tencent/bugly/crashreport/common/info/a;Lcom/tencent/bugly/crashreport/common/strategy/a;)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 447
    const/4 v2, 0x0

    const/4 v3, 0x2

    iget-object v4, v1, Lcom/tencent/bugly/proguard/an;->f:Ljava/lang/String;

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/tencent/bugly/proguard/u;->a(Lcom/tencent/bugly/proguard/an;ZILjava/lang/String;I)V

    goto/16 :goto_0

    .line 444
    :cond_1b
    iget-object v0, v1, Lcom/tencent/bugly/proguard/an;->c:[B

    array-length v0, v0

    goto :goto_5

    .line 451
    :cond_1c
    const/4 v2, 0x1

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/tencent/bugly/proguard/u;->a(Lcom/tencent/bugly/proguard/an;ZILjava/lang/String;I)V

    goto/16 :goto_0

    .line 455
    :cond_1d
    const/4 v1, 0x0

    const/4 v2, 0x0

    const-string v4, "try OT Fail!"

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/tencent/bugly/proguard/u;->a(Lcom/tencent/bugly/proguard/an;ZILjava/lang/String;I)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_0
.end method
