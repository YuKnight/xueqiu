.class final Lcom/xueqiu/android/message/client/a$28;
.super Ljava/lang/Object;
.source "CommandHandler.java"

# interfaces
.implements Lrx/c/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/message/client/a;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/c/f",
        "<",
        "Lcom/snowballfinance/messageplatform/data/MessageSession;",
        "Lcom/xueqiu/android/message/model/Talk;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/message/client/a;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/message/client/a;)V
    .locals 0

    .prologue
    .line 423
    iput-object p1, p0, Lcom/xueqiu/android/message/client/a$28;->a:Lcom/xueqiu/android/message/client/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 423
    check-cast p1, Lcom/snowballfinance/messageplatform/data/MessageSession;

    .line 1426
    invoke-static {p1}, Lcom/xueqiu/android/message/model/Talk;->wrapMessageSession(Lcom/snowballfinance/messageplatform/data/MessageSession;)Lcom/xueqiu/android/message/model/Talk;

    move-result-object v0

    .line 423
    return-object v0
.end method
