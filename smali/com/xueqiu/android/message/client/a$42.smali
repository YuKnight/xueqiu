.class final Lcom/xueqiu/android/message/client/a$42;
.super Ljava/lang/Object;
.source "CommandHandler.java"

# interfaces
.implements Lrx/c/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/message/client/a;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/c/b",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/xueqiu/android/community/model/User;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/message/client/a;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/message/client/a;)V
    .locals 0

    .prologue
    .line 538
    iput-object p1, p0, Lcom/xueqiu/android/message/client/a$42;->a:Lcom/xueqiu/android/message/client/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 538
    check-cast p1, Ljava/util/List;

    .line 1541
    invoke-static {}, Lcom/xueqiu/android/base/storage/DBManager;->getInstance()Lcom/xueqiu/android/base/storage/DBManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xueqiu/android/base/storage/DBManager;->saveSimpleUsers(Ljava/util/List;)V

    .line 538
    return-void
.end method
