.class final Lcom/xueqiu/android/base/util/ap$12;
.super Ljava/lang/Object;
.source "StatusUtil.java"

# interfaces
.implements Lrx/c/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/base/util/ap;->a(Landroid/content/Context;Lcom/xueqiu/android/base/b/ai;JLjava/lang/String;Ljava/lang/String;)Lrx/a;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/c/f",
        "<",
        "Ljava/lang/Throwable;",
        "Lrx/a",
        "<+",
        "Lcom/xueqiu/android/common/model/PhotoUploadResult;",
        ">;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 151
    check-cast p1, Ljava/lang/Throwable;

    .line 1154
    const-string v0, "StatusUtil"

    const-string v1, "upload image failed."

    invoke-static {v0, v1, p1}, Lcom/xueqiu/android/base/util/v;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1155
    const/4 v0, 0x0

    invoke-static {v0}, Lrx/a;->b(Ljava/lang/Object;)Lrx/a;

    move-result-object v0

    .line 151
    return-object v0
.end method
