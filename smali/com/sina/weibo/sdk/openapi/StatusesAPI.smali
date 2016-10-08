.class public Lcom/sina/weibo/sdk/openapi/StatusesAPI;
.super Lcom/sina/weibo/sdk/openapi/AbsOpenAPI;
.source "StatusesAPI.java"


# static fields
.field private static final API_BASE_URL:Ljava/lang/String; = "https://api.weibo.com/2/statuses"

.field public static final AUTHOR_FILTER_ALL:I = 0x0

.field public static final AUTHOR_FILTER_ATTENTIONS:I = 0x1

.field public static final AUTHOR_FILTER_STRANGER:I = 0x2

.field public static final FEATURE_ALL:I = 0x0

.field public static final FEATURE_MUSICE:I = 0x4

.field public static final FEATURE_ORIGINAL:I = 0x1

.field public static final FEATURE_PICTURE:I = 0x2

.field public static final FEATURE_VIDEO:I = 0x3

.field private static final READ_API_FRIENDS_TIMELINE:I = 0x0

.field private static final READ_API_MENTIONS:I = 0x1

.field public static final SRC_FILTER_ALL:I = 0x0

.field public static final SRC_FILTER_WEIBO:I = 0x1

.field public static final SRC_FILTER_WEIQUN:I = 0x2

.field public static final TYPE_FILTER_ALL:I = 0x0

.field public static final TYPE_FILTER_ORIGAL:I = 0x1

.field private static final WRITE_API_REPOST:I = 0x3

.field private static final WRITE_API_UPDATE:I = 0x2

.field private static final WRITE_API_UPLOAD:I = 0x4

.field private static final WRITE_API_UPLOAD_URL_TEXT:I = 0x5

.field private static final sAPIList:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 75
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 77
    sput-object v0, Lcom/sina/weibo/sdk/openapi/StatusesAPI;->sAPIList:Landroid/util/SparseArray;

    const/4 v1, 0x0

    const-string v2, "https://api.weibo.com/2/statuses/friends_timeline.json"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 78
    sget-object v0, Lcom/sina/weibo/sdk/openapi/StatusesAPI;->sAPIList:Landroid/util/SparseArray;

    const/4 v1, 0x1

    const-string v2, "https://api.weibo.com/2/statuses/mentions.json"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 79
    sget-object v0, Lcom/sina/weibo/sdk/openapi/StatusesAPI;->sAPIList:Landroid/util/SparseArray;

    const/4 v1, 0x3

    const-string v2, "https://api.weibo.com/2/statuses/repost.json"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 80
    sget-object v0, Lcom/sina/weibo/sdk/openapi/StatusesAPI;->sAPIList:Landroid/util/SparseArray;

    const/4 v1, 0x2

    const-string v2, "https://api.weibo.com/2/statuses/update.json"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 81
    sget-object v0, Lcom/sina/weibo/sdk/openapi/StatusesAPI;->sAPIList:Landroid/util/SparseArray;

    const/4 v1, 0x4

    const-string v2, "https://api.weibo.com/2/statuses/upload.json"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 82
    sget-object v0, Lcom/sina/weibo/sdk/openapi/StatusesAPI;->sAPIList:Landroid/util/SparseArray;

    const/4 v1, 0x5

    const-string v2, "https://api.weibo.com/2/statuses/upload_url_text.json"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 83
    return-void
.end method

.method public constructor <init>(Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;)V
    .locals 0

    .prologue
    .line 91
    invoke-direct {p0, p1}, Lcom/sina/weibo/sdk/openapi/AbsOpenAPI;-><init>(Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;)V

    .line 92
    return-void
.end method

.method private buildMentionsParams(JJIIIIIZ)Lcom/sina/weibo/sdk/net/WeiboParameters;
    .locals 3

    .prologue
    .line 274
    new-instance v1, Lcom/sina/weibo/sdk/net/WeiboParameters;

    invoke-direct {v1}, Lcom/sina/weibo/sdk/net/WeiboParameters;-><init>()V

    .line 275
    const-string v0, "since_id"

    invoke-virtual {v1, v0, p1, p2}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;J)V

    .line 276
    const-string v0, "max_id"

    invoke-virtual {v1, v0, p3, p4}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;J)V

    .line 277
    const-string v0, "count"

    invoke-virtual {v1, v0, p5}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;I)V

    .line 278
    const-string v0, "page"

    invoke-virtual {v1, v0, p6}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;I)V

    .line 279
    const-string v0, "filter_by_author"

    invoke-virtual {v1, v0, p7}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;I)V

    .line 280
    const-string v0, "filter_by_source"

    invoke-virtual {v1, v0, p8}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;I)V

    .line 281
    const-string v0, "filter_by_type"

    invoke-virtual {v1, v0, p9}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;I)V

    .line 282
    const-string v2, "trim_user"

    if-eqz p10, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v2, v0}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;I)V

    .line 284
    return-object v1

    .line 282
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private buildTimeLineParamsBase(JJIIZZI)Lcom/sina/weibo/sdk/net/WeiboParameters;
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 248
    new-instance v3, Lcom/sina/weibo/sdk/net/WeiboParameters;

    invoke-direct {v3}, Lcom/sina/weibo/sdk/net/WeiboParameters;-><init>()V

    .line 249
    const-string v0, "since_id"

    invoke-virtual {v3, v0, p1, p2}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;J)V

    .line 250
    const-string v0, "max_id"

    invoke-virtual {v3, v0, p3, p4}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;J)V

    .line 251
    const-string v0, "count"

    invoke-virtual {v3, v0, p5}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;I)V

    .line 252
    const-string v0, "page"

    invoke-virtual {v3, v0, p6}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;I)V

    .line 253
    const-string v4, "base_app"

    if-eqz p7, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v4, v0}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;I)V

    .line 254
    const-string v0, "trim_user"

    if-eqz p8, :cond_1

    :goto_1
    invoke-virtual {v3, v0, v1}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;I)V

    .line 255
    const-string v0, "feature"

    invoke-virtual {v3, v0, p9}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;I)V

    .line 256
    return-object v3

    :cond_0
    move v0, v2

    .line 253
    goto :goto_0

    :cond_1
    move v1, v2

    .line 254
    goto :goto_1
.end method

.method private buildUpdateParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sina/weibo/sdk/net/WeiboParameters;
    .locals 2

    .prologue
    .line 261
    new-instance v0, Lcom/sina/weibo/sdk/net/WeiboParameters;

    invoke-direct {v0}, Lcom/sina/weibo/sdk/net/WeiboParameters;-><init>()V

    .line 262
    const-string v1, "status"

    invoke-virtual {v0, v1, p1}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 264
    const-string v1, "long"

    invoke-virtual {v0, v1, p3}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 267
    const-string v1, "lat"

    invoke-virtual {v0, v1, p2}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    :cond_1
    return-object v0
.end method


# virtual methods
.method public friendsTimeline(JJIIZIZLcom/sina/weibo/sdk/net/RequestListener;)V
    .locals 13

    .prologue
    .line 114
    move-object v3, p0

    move-wide v4, p1

    move-wide/from16 v6, p3

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p9

    move/from16 v12, p8

    invoke-direct/range {v3 .. v12}, Lcom/sina/weibo/sdk/openapi/StatusesAPI;->buildTimeLineParamsBase(JJIIZZI)Lcom/sina/weibo/sdk/net/WeiboParameters;

    move-result-object v3

    .line 115
    sget-object v2, Lcom/sina/weibo/sdk/openapi/StatusesAPI;->sAPIList:Landroid/util/SparseArray;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v4, "GET"

    move-object/from16 v0, p10

    invoke-virtual {p0, v2, v3, v4, v0}, Lcom/sina/weibo/sdk/openapi/StatusesAPI;->requestAsync(Ljava/lang/String;Lcom/sina/weibo/sdk/net/WeiboParameters;Ljava/lang/String;Lcom/sina/weibo/sdk/net/RequestListener;)V

    .line 116
    return-void
.end method

.method public friendsTimelineSync(JJIIZIZ)Ljava/lang/String;
    .locals 11

    .prologue
    .line 198
    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p9

    move/from16 v10, p8

    invoke-direct/range {v1 .. v10}, Lcom/sina/weibo/sdk/openapi/StatusesAPI;->buildTimeLineParamsBase(JJIIZZI)Lcom/sina/weibo/sdk/net/WeiboParameters;

    move-result-object v1

    .line 200
    sget-object v0, Lcom/sina/weibo/sdk/openapi/StatusesAPI;->sAPIList:Landroid/util/SparseArray;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "GET"

    invoke-virtual {p0, v0, v1, v2}, Lcom/sina/weibo/sdk/openapi/StatusesAPI;->requestSync(Ljava/lang/String;Lcom/sina/weibo/sdk/net/WeiboParameters;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public mentions(JJIIIIIZLcom/sina/weibo/sdk/net/RequestListener;)V
    .locals 3

    .prologue
    .line 141
    invoke-direct/range {p0 .. p10}, Lcom/sina/weibo/sdk/openapi/StatusesAPI;->buildMentionsParams(JJIIIIIZ)Lcom/sina/weibo/sdk/net/WeiboParameters;

    move-result-object v1

    .line 142
    sget-object v0, Lcom/sina/weibo/sdk/openapi/StatusesAPI;->sAPIList:Landroid/util/SparseArray;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "GET"

    invoke-virtual {p0, v0, v1, v2, p11}, Lcom/sina/weibo/sdk/openapi/StatusesAPI;->requestAsync(Ljava/lang/String;Lcom/sina/weibo/sdk/net/WeiboParameters;Ljava/lang/String;Lcom/sina/weibo/sdk/net/RequestListener;)V

    .line 143
    return-void
.end method

.method public mentionsSync(JJIIIIIZ)Ljava/lang/String;
    .locals 3

    .prologue
    .line 214
    invoke-direct/range {p0 .. p10}, Lcom/sina/weibo/sdk/openapi/StatusesAPI;->buildMentionsParams(JJIIIIIZ)Lcom/sina/weibo/sdk/net/WeiboParameters;

    move-result-object v1

    .line 215
    sget-object v0, Lcom/sina/weibo/sdk/openapi/StatusesAPI;->sAPIList:Landroid/util/SparseArray;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "GET"

    invoke-virtual {p0, v0, v1, v2}, Lcom/sina/weibo/sdk/openapi/StatusesAPI;->requestSync(Ljava/lang/String;Lcom/sina/weibo/sdk/net/WeiboParameters;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public update(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sina/weibo/sdk/net/RequestListener;)V
    .locals 3

    .prologue
    .line 154
    invoke-direct {p0, p1, p2, p3}, Lcom/sina/weibo/sdk/openapi/StatusesAPI;->buildUpdateParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sina/weibo/sdk/net/WeiboParameters;

    move-result-object v1

    .line 155
    sget-object v0, Lcom/sina/weibo/sdk/openapi/StatusesAPI;->sAPIList:Landroid/util/SparseArray;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "POST"

    invoke-virtual {p0, v0, v1, v2, p4}, Lcom/sina/weibo/sdk/openapi/StatusesAPI;->requestAsync(Ljava/lang/String;Lcom/sina/weibo/sdk/net/WeiboParameters;Ljava/lang/String;Lcom/sina/weibo/sdk/net/RequestListener;)V

    .line 156
    return-void
.end method

.method public updateSync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 222
    invoke-direct {p0, p1, p2, p3}, Lcom/sina/weibo/sdk/openapi/StatusesAPI;->buildUpdateParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sina/weibo/sdk/net/WeiboParameters;

    move-result-object v1

    .line 223
    sget-object v0, Lcom/sina/weibo/sdk/openapi/StatusesAPI;->sAPIList:Landroid/util/SparseArray;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "POST"

    invoke-virtual {p0, v0, v1, v2}, Lcom/sina/weibo/sdk/openapi/StatusesAPI;->requestSync(Ljava/lang/String;Lcom/sina/weibo/sdk/net/WeiboParameters;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public upload(Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Lcom/sina/weibo/sdk/net/RequestListener;)V
    .locals 3

    .prologue
    .line 168
    invoke-direct {p0, p1, p3, p4}, Lcom/sina/weibo/sdk/openapi/StatusesAPI;->buildUpdateParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sina/weibo/sdk/net/WeiboParameters;

    move-result-object v1

    .line 169
    const-string v0, "pic"

    invoke-virtual {v1, v0, p2}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 170
    sget-object v0, Lcom/sina/weibo/sdk/openapi/StatusesAPI;->sAPIList:Landroid/util/SparseArray;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "POST"

    invoke-virtual {p0, v0, v1, v2, p5}, Lcom/sina/weibo/sdk/openapi/StatusesAPI;->requestAsync(Ljava/lang/String;Lcom/sina/weibo/sdk/net/WeiboParameters;Ljava/lang/String;Lcom/sina/weibo/sdk/net/RequestListener;)V

    .line 171
    return-void
.end method

.method public uploadSync(Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 230
    invoke-direct {p0, p1, p3, p4}, Lcom/sina/weibo/sdk/openapi/StatusesAPI;->buildUpdateParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sina/weibo/sdk/net/WeiboParameters;

    move-result-object v1

    .line 231
    const-string v0, "pic"

    invoke-virtual {v1, v0, p2}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 232
    sget-object v0, Lcom/sina/weibo/sdk/openapi/StatusesAPI;->sAPIList:Landroid/util/SparseArray;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "POST"

    invoke-virtual {p0, v0, v1, v2}, Lcom/sina/weibo/sdk/openapi/StatusesAPI;->requestSync(Ljava/lang/String;Lcom/sina/weibo/sdk/net/WeiboParameters;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public uploadUrlText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sina/weibo/sdk/net/RequestListener;)V
    .locals 3

    .prologue
    .line 187
    invoke-direct {p0, p1, p4, p5}, Lcom/sina/weibo/sdk/openapi/StatusesAPI;->buildUpdateParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sina/weibo/sdk/net/WeiboParameters;

    move-result-object v1

    .line 188
    const-string v0, "url"

    invoke-virtual {v1, v0, p2}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    const-string v0, "pic_id"

    invoke-virtual {v1, v0, p3}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    sget-object v0, Lcom/sina/weibo/sdk/openapi/StatusesAPI;->sAPIList:Landroid/util/SparseArray;

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "POST"

    invoke-virtual {p0, v0, v1, v2, p6}, Lcom/sina/weibo/sdk/openapi/StatusesAPI;->requestAsync(Ljava/lang/String;Lcom/sina/weibo/sdk/net/WeiboParameters;Ljava/lang/String;Lcom/sina/weibo/sdk/net/RequestListener;)V

    .line 191
    return-void
.end method

.method public uploadUrlTextSync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 239
    invoke-direct {p0, p1, p4, p5}, Lcom/sina/weibo/sdk/openapi/StatusesAPI;->buildUpdateParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sina/weibo/sdk/net/WeiboParameters;

    move-result-object v1

    .line 240
    const-string v0, "url"

    invoke-virtual {v1, v0, p2}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    const-string v0, "pic_id"

    invoke-virtual {v1, v0, p3}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    sget-object v0, Lcom/sina/weibo/sdk/openapi/StatusesAPI;->sAPIList:Landroid/util/SparseArray;

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "POST"

    invoke-virtual {p0, v0, v1, v2}, Lcom/sina/weibo/sdk/openapi/StatusesAPI;->requestSync(Ljava/lang/String;Lcom/sina/weibo/sdk/net/WeiboParameters;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
