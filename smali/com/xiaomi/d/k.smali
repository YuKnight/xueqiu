.class public abstract Lcom/xiaomi/d/k;
.super Ljava/lang/Object;


# direct methods
.method private static a(Lcom/xiaomi/d/j;Ljava/lang/String;Ljava/lang/String;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaomi/d/j;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .prologue
    .line 0
    .line 2000
    iget v0, p0, Lcom/xiaomi/d/j;->a:I

    .line 0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {p2}, Lcom/xiaomi/d/k;->a(Ljava/lang/String;)I

    move-result v1

    .line 3000
    add-int/lit16 v2, v1, 0xf3

    div-int/lit16 v2, v2, 0x5a8

    mul-int/lit16 v2, v2, 0x84

    add-int/lit16 v2, v2, 0x438

    add-int/2addr v0, v2

    add-int/2addr v0, v1

    .line 0
    :goto_0
    return v0

    .line 4000
    :cond_0
    iget v0, p0, Lcom/xiaomi/d/j;->a:I

    .line 0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    .line 5000
    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/a/a/d/c;

    invoke-interface {v0}, Lcom/xiaomi/a/a/d/c;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-interface {v0}, Lcom/xiaomi/a/a/d/c;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v1, v3

    :cond_2
    invoke-interface {v0}, Lcom/xiaomi/a/a/d/c;->b()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-interface {v0}, Lcom/xiaomi/a/a/d/c;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v1, v0

    goto :goto_1

    :cond_3
    mul-int/lit8 v0, v1, 0x2

    .line 0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {p2}, Lcom/xiaomi/d/k;->a(Ljava/lang/String;)I

    move-result v2

    .line 6000
    add-int/lit16 v3, v0, 0xc8

    div-int/lit16 v3, v3, 0x5a8

    mul-int/lit16 v3, v3, 0x84

    add-int/lit16 v3, v3, 0x3f3

    add-int/2addr v0, v3

    add-int/2addr v0, v1

    add-int/2addr v0, v2

    .line 0
    goto :goto_0

    :cond_4
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    :try_start_0
    const-string v1, "UTF-8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    array-length v0, v1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Lcom/xiaomi/d/j;)Ljava/lang/String;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/xiaomi/d/j;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 0
    invoke-static {p0}, Lcom/xiaomi/a/a/d/d;->a(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_6

    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/xiaomi/d/f;->a()Lcom/xiaomi/d/f;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/xiaomi/d/f;->a(Ljava/lang/String;)Lcom/xiaomi/d/b;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2, p1}, Lcom/xiaomi/d/b;->a(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    :cond_0
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    const/4 v10, 0x0

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    move-object v4, v10

    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/lang/String;

    move-object v9, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-wide v12

    :try_start_1
    move-object/from16 v0, p2

    invoke-virtual {v0, p0, v9}, Lcom/xiaomi/d/j;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v10

    :try_start_2
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    if-eqz v2, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v12

    move-object/from16 v0, p2

    invoke-static {v0, v9, v10}, Lcom/xiaomi/d/k;->a(Lcom/xiaomi/d/j;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v3

    int-to-long v6, v3

    .line 1000
    :try_start_3
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, v9}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {v2 .. v7}, Lcom/xiaomi/d/b;->a(Ljava/lang/String;JJ)V
    :try_end_3
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    move-object v2, v10

    .line 0
    :goto_1
    return-object v2

    :catch_0
    move-exception v2

    :cond_2
    move-object v2, v10

    goto :goto_1

    :cond_3
    if-eqz v2, :cond_4

    :try_start_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v12

    move-object/from16 v0, p2

    invoke-static {v0, v9, v10}, Lcom/xiaomi/d/k;->a(Lcom/xiaomi/d/j;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    int-to-long v6, v3

    const/4 v8, 0x0

    move-object v3, v9

    invoke-virtual/range {v2 .. v8}, Lcom/xiaomi/d/b;->a(Ljava/lang/String;JJLjava/lang/Exception;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/net/MalformedURLException; {:try_start_4 .. :try_end_4} :catch_2

    :cond_4
    move-object v4, v10

    goto :goto_0

    :catch_1
    move-exception v8

    :goto_2
    if-eqz v2, :cond_5

    :try_start_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v12

    move-object/from16 v0, p2

    invoke-static {v0, v9, v10}, Lcom/xiaomi/d/k;->a(Lcom/xiaomi/d/j;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    int-to-long v6, v3

    move-object v3, v9

    invoke-virtual/range {v2 .. v8}, Lcom/xiaomi/d/b;->a(Ljava/lang/String;JJLjava/lang/Exception;)V

    :cond_5
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catch Ljava/net/MalformedURLException; {:try_start_5 .. :try_end_5} :catch_2

    move-object v4, v10

    goto :goto_0

    :catch_2
    move-exception v2

    invoke-virtual {v2}, Ljava/net/MalformedURLException;->printStackTrace()V

    :cond_6
    const/4 v2, 0x0

    goto :goto_1

    :catch_3
    move-exception v8

    move-object v10, v4

    goto :goto_2

    :cond_7
    move-object v2, v4

    goto :goto_1
.end method
