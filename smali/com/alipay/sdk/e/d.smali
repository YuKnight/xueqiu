.class public final Lcom/alipay/sdk/e/d;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private b:Lcom/alipay/sdk/b/c;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/sdk/e/d;->a:I

    return-void
.end method

.method public constructor <init>(Lcom/alipay/sdk/b/c;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/sdk/e/d;->a:I

    iput-object p1, p0, Lcom/alipay/sdk/e/d;->b:Lcom/alipay/sdk/b/c;

    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/sdk/b/c;Lcom/alipay/sdk/b/f;)Ljava/lang/String;
    .locals 5

    const/4 v4, 0x0

    :try_start_0
    sget-object v0, Lcom/alipay/sdk/e/c;->a:Lcom/alipay/sdk/e/a;

    if-nez v0, :cond_2

    new-instance v0, Lcom/alipay/sdk/e/a;

    invoke-direct {v0, p1, p2}, Lcom/alipay/sdk/e/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v0, Lcom/alipay/sdk/e/c;->a:Lcom/alipay/sdk/e/a;

    :cond_0
    :goto_0
    if-eqz p4, :cond_3

    sget-object v0, Lcom/alipay/sdk/e/c;->a:Lcom/alipay/sdk/e/a;

    invoke-virtual {v0, p3, p4}, Lcom/alipay/sdk/e/a;->a(Ljava/lang/String;Lcom/alipay/sdk/b/c;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    iput v2, p5, Lcom/alipay/sdk/b/f;->a:I

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p5, Lcom/alipay/sdk/b/f;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/sdk/e/d;->b:Lcom/alipay/sdk/b/c;

    const-string v2, "Msp-Param"

    invoke-interface {v0, v2}, Lorg/apache/http/HttpResponse;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v2

    if-eqz v1, :cond_1

    array-length v3, v2

    if-lez v3, :cond_1

    iput-object v2, v1, Lcom/alipay/sdk/b/c;->a:[Lorg/apache/http/Header;

    :cond_1
    invoke-static {v0}, Lcom/alipay/sdk/e/c;->a(Lorg/apache/http/HttpResponse;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    sput-object v4, Lcom/alipay/sdk/e/c;->a:Lcom/alipay/sdk/e/a;

    return-object v0

    :cond_2
    :try_start_1
    sget-object v0, Lcom/alipay/sdk/e/c;->a:Lcom/alipay/sdk/e/a;

    iget-object v0, v0, Lcom/alipay/sdk/e/a;->a:Ljava/lang/String;

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/alipay/sdk/e/c;->a:Lcom/alipay/sdk/e/a;

    iput-object p2, v0, Lcom/alipay/sdk/e/a;->a:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    new-instance v0, Lcom/alipay/sdk/d/a;

    invoke-direct {v0}, Lcom/alipay/sdk/d/a;-><init>()V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    sput-object v4, Lcom/alipay/sdk/e/c;->a:Lcom/alipay/sdk/e/a;

    throw v0

    :cond_3
    :try_start_3
    sget-object v0, Lcom/alipay/sdk/e/c;->a:Lcom/alipay/sdk/e/a;

    const/4 v1, 0x0

    invoke-virtual {v0, p3, v1}, Lcom/alipay/sdk/e/a;->a(Ljava/lang/String;Lcom/alipay/sdk/b/c;)Lorg/apache/http/HttpResponse;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v0

    goto :goto_1
.end method

.method private a(Landroid/content/Context;Lcom/alipay/sdk/b/e;Lcom/alipay/sdk/b/f;)Lorg/json/JSONObject;
    .locals 11

    const/4 v10, 0x3

    const/4 v0, 0x0

    const-wide/high16 v8, 0x4039000000000000L    # 25.0

    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    :goto_0
    const/16 v3, 0x18

    if-ge v0, v3, :cond_0

    invoke-virtual {v1, v10}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :pswitch_0
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    mul-double/2addr v4, v8

    const-wide v6, 0x4050400000000000L    # 65.0

    add-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-int v3, v4

    int-to-char v3, v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :pswitch_1
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    mul-double/2addr v4, v8

    const-wide v6, 0x4058400000000000L    # 97.0

    add-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-int v3, v4

    int-to-char v3, v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :pswitch_2
    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    :try_start_0
    iget-object v0, p2, Lcom/alipay/sdk/b/e;->a:Lcom/alipay/sdk/b/a;

    iget-object v2, v0, Lcom/alipay/sdk/b/a;->a:Ljava/lang/String;

    invoke-virtual {p2, v6}, Lcom/alipay/sdk/b/e;->a(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p2, Lcom/alipay/sdk/b/e;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alipay/sdk/b/c;

    move-object v0, p0

    move-object v1, p1

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/alipay/sdk/e/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/sdk/b/c;Lcom/alipay/sdk/b/f;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    iput-wide v2, p3, Lcom/alipay/sdk/b/f;->c:J

    iget-boolean v1, p2, Lcom/alipay/sdk/b/e;->c:Z

    if-eqz v1, :cond_2

    invoke-static {v0, p3}, Lcom/alipay/sdk/e/d;->a(Ljava/lang/String;Lcom/alipay/sdk/b/f;)Lorg/json/JSONObject;

    move-result-object v0

    iget v1, p3, Lcom/alipay/sdk/b/f;->a:I

    const/16 v2, 0x3e8

    if-ne v1, v2, :cond_1

    iget v1, p0, Lcom/alipay/sdk/e/d;->a:I

    if-ge v1, v10, :cond_1

    iget v0, p0, Lcom/alipay/sdk/e/d;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alipay/sdk/e/d;->a:I

    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/sdk/e/d;->a(Landroid/content/Context;Lcom/alipay/sdk/b/e;Lcom/alipay/sdk/b/f;)Lorg/json/JSONObject;

    move-result-object v0

    :goto_2
    return-object v0

    :cond_1
    const/4 v1, 0x0

    iput v1, p0, Lcom/alipay/sdk/e/d;->a:I

    const-string v1, "res_data"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/alipay/sdk/c/e;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/alipay/sdk/d/a; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_2

    :catch_0
    move-exception v0

    throw v0

    :cond_2
    :try_start_1
    invoke-static {v0, p3}, Lcom/alipay/sdk/e/d;->a(Ljava/lang/String;Lcom/alipay/sdk/b/f;)Lorg/json/JSONObject;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "respData:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Lcom/alipay/sdk/d/a; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    new-instance v0, Lcom/alipay/sdk/d/a;

    invoke-direct {v0}, Lcom/alipay/sdk/d/a;-><init>()V

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static a(Ljava/lang/String;Lcom/alipay/sdk/b/f;)Lorg/json/JSONObject;
    .locals 3

    const/16 v2, 0x1f7

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "data"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "code"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p1, Lcom/alipay/sdk/b/f;->a:I

    const-string v1, "error_msg"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/alipay/sdk/b/f;->b:Ljava/lang/String;

    const-string v1, "params"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_2

    iget v1, p1, Lcom/alipay/sdk/b/f;->a:I

    const/16 v2, 0x3e8

    if-ne v1, v2, :cond_0

    const-string v1, "public_key"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/alipay/sdk/g/a;->a()Lcom/alipay/sdk/g/a;

    move-result-object v2

    iget-object v2, v2, Lcom/alipay/sdk/g/a;->b:Lcom/alipay/sdk/b/d;

    invoke-virtual {v2, v1}, Lcom/alipay/sdk/b/d;->a(Ljava/lang/String;)V

    :cond_0
    new-instance v1, Lcom/alipay/sdk/b/a;

    invoke-direct {v1}, Lcom/alipay/sdk/b/a;-><init>()V

    const-string v2, "next_api_name"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/alipay/sdk/b/a;->c:Ljava/lang/String;

    const-string v2, "next_api_version"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/alipay/sdk/b/a;->d:Ljava/lang/String;

    const-string v2, "next_namespace"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/alipay/sdk/b/a;->b:Ljava/lang/String;

    const-string v2, "next_request_url"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/alipay/sdk/b/a;->a:Ljava/lang/String;

    iput-object v1, p1, Lcom/alipay/sdk/b/f;->j:Lcom/alipay/sdk/b/a;

    :goto_0
    return-object v0

    :cond_1
    iput v2, p1, Lcom/alipay/sdk/b/f;->a:I

    const-string v0, ""

    iput-object v0, p1, Lcom/alipay/sdk/b/f;->b:Ljava/lang/String;

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcom/alipay/sdk/b/e;)Lcom/alipay/sdk/f/c;
    .locals 7

    new-instance v1, Lcom/alipay/sdk/b/f;

    invoke-direct {v1}, Lcom/alipay/sdk/b/f;-><init>()V

    invoke-direct {p0, p1, p2, v1}, Lcom/alipay/sdk/e/d;->a(Landroid/content/Context;Lcom/alipay/sdk/b/e;Lcom/alipay/sdk/b/f;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v0, "gzip"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "form"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v3, "quickpay"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "quickpay"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/sdk/c/a;->a(Ljava/lang/String;)[B

    move-result-object v0

    :try_start_0
    invoke-static {v0}, Lcom/alipay/sdk/b/b;->a([B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/sdk/c/c;->a([B)Ljava/lang/String;

    move-result-object v3

    const-string v4, "md5"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/String;

    const-string v4, "utf-8"

    invoke-direct {v3, v0, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    const-string v0, "form"

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :cond_0
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "responsestring decoded "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v0, Lcom/alipay/sdk/f/c;

    invoke-direct {v0, p2, v1}, Lcom/alipay/sdk/f/c;-><init>(Lcom/alipay/sdk/b/e;Lcom/alipay/sdk/b/f;)V

    invoke-virtual {v0, v2}, Lcom/alipay/sdk/f/c;->a(Lorg/json/JSONObject;)V

    new-instance v1, Lcom/alipay/sdk/f/d;

    invoke-direct {v1}, Lcom/alipay/sdk/f/d;-><init>()V

    invoke-static {v0}, Lcom/alipay/sdk/f/d;->a(Lcom/alipay/sdk/f/c;)Lcom/alipay/sdk/f/g;

    move-result-object v1

    if-nez v1, :cond_9

    :goto_1
    iget-object v2, v0, Lcom/alipay/sdk/f/c;->b:Lcom/alipay/sdk/b/f;

    iget-object v3, v0, Lcom/alipay/sdk/f/c;->c:Lorg/json/JSONObject;

    iget-object v1, v0, Lcom/alipay/sdk/f/c;->a:Lcom/alipay/sdk/b/e;

    iget-object v1, v1, Lcom/alipay/sdk/b/e;->a:Lcom/alipay/sdk/b/a;

    iget-object v4, v0, Lcom/alipay/sdk/f/c;->b:Lcom/alipay/sdk/b/f;

    iget-object v4, v4, Lcom/alipay/sdk/b/f;->j:Lcom/alipay/sdk/b/a;

    iget-object v5, v4, Lcom/alipay/sdk/b/a;->c:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, v1, Lcom/alipay/sdk/b/a;->c:Ljava/lang/String;

    iput-object v5, v4, Lcom/alipay/sdk/b/a;->c:Ljava/lang/String;

    :cond_1
    iget-object v5, v4, Lcom/alipay/sdk/b/a;->d:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, v1, Lcom/alipay/sdk/b/a;->d:Ljava/lang/String;

    iput-object v5, v4, Lcom/alipay/sdk/b/a;->d:Ljava/lang/String;

    :cond_2
    iget-object v5, v4, Lcom/alipay/sdk/b/a;->b:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, v1, Lcom/alipay/sdk/b/a;->b:Ljava/lang/String;

    iput-object v5, v4, Lcom/alipay/sdk/b/a;->b:Ljava/lang/String;

    :cond_3
    iget-object v5, v4, Lcom/alipay/sdk/b/a;->a:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v1, v1, Lcom/alipay/sdk/b/a;->a:Ljava/lang/String;

    iput-object v1, v4, Lcom/alipay/sdk/b/a;->a:Ljava/lang/String;

    :cond_4
    const-string v1, "session"

    const-string v4, "reflected_data"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    if-eqz v4, :cond_7

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "session = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, ""

    invoke-virtual {v4, v1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Lcom/alipay/sdk/f/c;->b:Lcom/alipay/sdk/b/f;

    iput-object v4, v1, Lcom/alipay/sdk/b/f;->g:Lorg/json/JSONObject;

    :cond_5
    :goto_2
    const-string v1, "end_code"

    const-string v4, "0"

    invoke-virtual {v3, v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/alipay/sdk/b/f;->d:Ljava/lang/String;

    const-string v1, "user_id"

    const-string v4, ""

    invoke-virtual {v3, v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/alipay/sdk/b/f;->h:Ljava/lang/String;

    const-string v1, "result"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :try_start_1
    const-string v4, "result"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "UTF-8"

    invoke-static {v4, v5}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    :goto_3
    iput-object v1, v2, Lcom/alipay/sdk/b/f;->e:Ljava/lang/String;

    const-string v1, "memo"

    const-string v4, ""

    invoke-virtual {v3, v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/alipay/sdk/b/f;->f:Ljava/lang/String;

    return-object v0

    :cond_6
    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/alipay/sdk/b/f;->i:Z

    goto/16 :goto_0

    :cond_7
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    :try_start_2
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {}, Lcom/alipay/sdk/h/b;->a()Lcom/alipay/sdk/h/b;

    move-result-object v1

    iget-object v1, v1, Lcom/alipay/sdk/h/b;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_8

    const-string v5, "tid"

    invoke-virtual {v4, v5, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_8
    iput-object v4, v2, Lcom/alipay/sdk/b/f;->g:Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v4

    goto :goto_3

    :catch_2
    move-exception v0

    goto/16 :goto_0

    :cond_9
    move-object v0, v1

    goto/16 :goto_1
.end method
