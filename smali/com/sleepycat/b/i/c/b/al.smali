.class final Lcom/sleepycat/b/i/c/b/al;
.super Ljava/lang/Enum;
.source "Replica.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sleepycat/b/i/c/b/al;",
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

    .line 994
    sput v3, Lcom/sleepycat/b/i/c/b/al;->a:I

    .line 995
    sput v0, Lcom/sleepycat/b/i/c/b/al;->b:I

    .line 993
    new-array v0, v0, [I

    const/4 v1, 0x0

    sget v2, Lcom/sleepycat/b/i/c/b/al;->a:I

    aput v2, v0, v1

    sget v1, Lcom/sleepycat/b/i/c/b/al;->b:I

    aput v1, v0, v3

    sput-object v0, Lcom/sleepycat/b/i/c/b/al;->c:[I

    return-void
.end method
