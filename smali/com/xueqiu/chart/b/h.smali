.class public final Lcom/xueqiu/chart/b/h;
.super Ljava/lang/Enum;
.source "Legend.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/xueqiu/chart/b/h;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:I

.field public static final enum b:I

.field private static final synthetic c:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v0, 0x2

    const/4 v3, 0x1

    .line 17
    sput v3, Lcom/xueqiu/chart/b/h;->a:I

    sput v0, Lcom/xueqiu/chart/b/h;->b:I

    .line 16
    new-array v0, v0, [I

    const/4 v1, 0x0

    sget v2, Lcom/xueqiu/chart/b/h;->a:I

    aput v2, v0, v1

    sget v1, Lcom/xueqiu/chart/b/h;->b:I

    aput v1, v0, v3

    sput-object v0, Lcom/xueqiu/chart/b/h;->c:[I

    return-void
.end method

.method public static a()[I
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/xueqiu/chart/b/h;->c:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method
