.class final Lcom/xueqiu/android/message/client/a$56;
.super Ljava/lang/Object;
.source "CommandHandler.java"

# interfaces
.implements Lrx/c/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/message/client/a;->a(Lcom/snowballfinance/messageplatform/a/e;)V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/c/f",
        "<",
        "Lcom/xueqiu/android/message/model/Message;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/message/client/a;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/message/client/a;)V
    .locals 0

    .prologue
    .line 200
    iput-object p1, p0, Lcom/xueqiu/android/message/client/a$56;->a:Lcom/xueqiu/android/message/client/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 200
    check-cast p1, Lcom/xueqiu/android/message/model/Message;

    .line 1203
    invoke-virtual {p1}, Lcom/xueqiu/android/message/model/Message;->getType()I

    move-result v2

    const/4 v3, 0x7

    if-ne v2, v3, :cond_2

    .line 1204
    invoke-virtual {p1}, Lcom/xueqiu/android/message/model/Message;->getSystemEvent()Lcom/snowballfinance/messageplatform/data/SystemEvent;

    move-result-object v2

    .line 2679
    invoke-virtual {v2}, Lcom/snowballfinance/messageplatform/data/SystemEvent;->getType()Lcom/snowballfinance/messageplatform/data/SystemEventType;

    move-result-object v3

    sget-object v4, Lcom/snowballfinance/messageplatform/data/SystemEventType;->BLOCKED:Lcom/snowballfinance/messageplatform/data/SystemEventType;

    invoke-virtual {v3, v4}, Lcom/snowballfinance/messageplatform/data/SystemEventType;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2680
    invoke-virtual {v2}, Lcom/snowballfinance/messageplatform/data/SystemEvent;->getType()Lcom/snowballfinance/messageplatform/data/SystemEventType;

    move-result-object v3

    sget-object v4, Lcom/snowballfinance/messageplatform/data/SystemEventType;->UNBLOCKED:Lcom/snowballfinance/messageplatform/data/SystemEventType;

    invoke-virtual {v3, v4}, Lcom/snowballfinance/messageplatform/data/SystemEventType;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2681
    invoke-virtual {v2}, Lcom/snowballfinance/messageplatform/data/SystemEvent;->getType()Lcom/snowballfinance/messageplatform/data/SystemEventType;

    move-result-object v3

    sget-object v4, Lcom/snowballfinance/messageplatform/data/SystemEventType;->FOLLOWED:Lcom/snowballfinance/messageplatform/data/SystemEventType;

    invoke-virtual {v3, v4}, Lcom/snowballfinance/messageplatform/data/SystemEventType;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2682
    invoke-virtual {v2}, Lcom/snowballfinance/messageplatform/data/SystemEvent;->getType()Lcom/snowballfinance/messageplatform/data/SystemEventType;

    move-result-object v2

    sget-object v3, Lcom/snowballfinance/messageplatform/data/SystemEventType;->UNFOLLOWED:Lcom/snowballfinance/messageplatform/data/SystemEventType;

    invoke-virtual {v2, v3}, Lcom/snowballfinance/messageplatform/data/SystemEventType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move v2, v0

    .line 1204
    :goto_0
    if-eqz v2, :cond_2

    .line 1203
    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 200
    return-object v0

    :cond_1
    move v2, v1

    .line 2682
    goto :goto_0

    :cond_2
    move v0, v1

    .line 1204
    goto :goto_1
.end method
