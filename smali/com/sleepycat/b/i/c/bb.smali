.class public final Lcom/sleepycat/b/i/c/bb;
.super Ljava/lang/Enum;
.source "TextProtocol.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sleepycat/b/i/c/bb;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:I

.field public static final enum b:I

.field public static final enum c:I

.field public static final enum d:I

.field public static final enum e:I

.field private static final synthetic f:[I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v0, 0x5

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 248
    sput v3, Lcom/sleepycat/b/i/c/bb;->a:I

    .line 249
    sput v4, Lcom/sleepycat/b/i/c/bb;->b:I

    .line 250
    sput v5, Lcom/sleepycat/b/i/c/bb;->c:I

    .line 251
    sput v6, Lcom/sleepycat/b/i/c/bb;->d:I

    .line 252
    sput v0, Lcom/sleepycat/b/i/c/bb;->e:I

    .line 247
    new-array v0, v0, [I

    const/4 v1, 0x0

    sget v2, Lcom/sleepycat/b/i/c/bb;->a:I

    aput v2, v0, v1

    sget v1, Lcom/sleepycat/b/i/c/bb;->b:I

    aput v1, v0, v3

    sget v1, Lcom/sleepycat/b/i/c/bb;->c:I

    aput v1, v0, v4

    sget v1, Lcom/sleepycat/b/i/c/bb;->d:I

    aput v1, v0, v5

    sget v1, Lcom/sleepycat/b/i/c/bb;->e:I

    aput v1, v0, v6

    sput-object v0, Lcom/sleepycat/b/i/c/bb;->f:[I

    return-void
.end method
