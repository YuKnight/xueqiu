.class public final enum Lcom/xiaomi/b/a/a/a/f;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/xiaomi/b/a/a/a/f;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/xiaomi/b/a/a/a/f;

.field public static final enum b:Lcom/xiaomi/b/a/a/a/f;

.field public static final enum c:Lcom/xiaomi/b/a/a/a/f;

.field public static final enum d:Lcom/xiaomi/b/a/a/a/f;

.field private static final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/xiaomi/b/a/a/a/f;",
            ">;"
        }
    .end annotation
.end field

.field private static final synthetic h:[Lcom/xiaomi/b/a/a/a/f;


# instance fields
.field private final f:S

.field private final g:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x0

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 0
    new-instance v0, Lcom/xiaomi/b/a/a/a/f;

    const-string v1, "COMMON"

    const-string v2, "common"

    invoke-direct {v0, v1, v6, v3, v2}, Lcom/xiaomi/b/a/a/a/f;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/b/a/a/a/f;->a:Lcom/xiaomi/b/a/a/a/f;

    new-instance v0, Lcom/xiaomi/b/a/a/a/f;

    const-string v1, "CATEGORY"

    const-string v2, "category"

    invoke-direct {v0, v1, v3, v4, v2}, Lcom/xiaomi/b/a/a/a/f;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/b/a/a/a/f;->b:Lcom/xiaomi/b/a/a/a/f;

    new-instance v0, Lcom/xiaomi/b/a/a/a/f;

    const-string v1, "HTTP_API"

    const-string v2, "httpApi"

    invoke-direct {v0, v1, v4, v5, v2}, Lcom/xiaomi/b/a/a/a/f;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/b/a/a/a/f;->c:Lcom/xiaomi/b/a/a/a/f;

    new-instance v0, Lcom/xiaomi/b/a/a/a/f;

    const-string v1, "PASSPORT"

    const-string v2, "passport"

    invoke-direct {v0, v1, v5, v7, v2}, Lcom/xiaomi/b/a/a/a/f;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/b/a/a/a/f;->d:Lcom/xiaomi/b/a/a/a/f;

    new-array v0, v7, [Lcom/xiaomi/b/a/a/a/f;

    sget-object v1, Lcom/xiaomi/b/a/a/a/f;->a:Lcom/xiaomi/b/a/a/a/f;

    aput-object v1, v0, v6

    sget-object v1, Lcom/xiaomi/b/a/a/a/f;->b:Lcom/xiaomi/b/a/a/a/f;

    aput-object v1, v0, v3

    sget-object v1, Lcom/xiaomi/b/a/a/a/f;->c:Lcom/xiaomi/b/a/a/a/f;

    aput-object v1, v0, v4

    sget-object v1, Lcom/xiaomi/b/a/a/a/f;->d:Lcom/xiaomi/b/a/a/a/f;

    aput-object v1, v0, v5

    sput-object v0, Lcom/xiaomi/b/a/a/a/f;->h:[Lcom/xiaomi/b/a/a/a/f;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/xiaomi/b/a/a/a/f;->e:Ljava/util/Map;

    const-class v0, Lcom/xiaomi/b/a/a/a/f;

    invoke-static {v0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/b/a/a/a/f;

    sget-object v2, Lcom/xiaomi/b/a/a/a/f;->e:Ljava/util/Map;

    .line 1000
    iget-object v3, v0, Lcom/xiaomi/b/a/a/a/f;->g:Ljava/lang/String;

    .line 0
    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ISLjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(S",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-short p3, p0, Lcom/xiaomi/b/a/a/a/f;->f:S

    iput-object p4, p0, Lcom/xiaomi/b/a/a/a/f;->g:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/b/a/a/a/f;
    .locals 1

    const-class v0, Lcom/xiaomi/b/a/a/a/f;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/b/a/a/a/f;

    return-object v0
.end method

.method public static values()[Lcom/xiaomi/b/a/a/a/f;
    .locals 1

    sget-object v0, Lcom/xiaomi/b/a/a/a/f;->h:[Lcom/xiaomi/b/a/a/a/f;

    invoke-virtual {v0}, [Lcom/xiaomi/b/a/a/a/f;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaomi/b/a/a/a/f;

    return-object v0
.end method
