.class final Lcom/xueqiu/android/message/ChatActivity$37;
.super Lcom/xueqiu/android/base/b/p;
.source "ChatActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/message/ChatActivity;->onNewIntent(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xueqiu/android/base/b/p",
        "<",
        "Lcom/xueqiu/android/message/model/IMGroup;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/message/ChatActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/message/ChatActivity;Lcom/xueqiu/android/base/b/q;)V
    .locals 0

    .prologue
    .line 1092
    iput-object p1, p0, Lcom/xueqiu/android/message/ChatActivity$37;->a:Lcom/xueqiu/android/message/ChatActivity;

    invoke-direct {p0, p2}, Lcom/xueqiu/android/base/b/p;-><init>(Lcom/xueqiu/android/base/b/q;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/y;)V
    .locals 1

    .prologue
    .line 1095
    iget-object v0, p0, Lcom/xueqiu/android/message/ChatActivity$37;->a:Lcom/xueqiu/android/message/ChatActivity;

    invoke-virtual {v0}, Lcom/xueqiu/android/message/ChatActivity;->i()V

    .line 1096
    invoke-static {p1}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    .line 1097
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 5

    .prologue
    .line 1092
    check-cast p1, Lcom/xueqiu/android/message/model/IMGroup;

    .line 2101
    iget-object v0, p0, Lcom/xueqiu/android/message/ChatActivity$37;->a:Lcom/xueqiu/android/message/ChatActivity;

    invoke-virtual {v0}, Lcom/xueqiu/android/message/ChatActivity;->i()V

    .line 2102
    invoke-static {}, Lcom/xueqiu/android/base/storage/DBManager;->getInstance()Lcom/xueqiu/android/base/storage/DBManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xueqiu/android/base/storage/DBManager;->saveIMGroup(Lcom/xueqiu/android/message/model/IMGroup;)Z

    .line 2103
    iget-object v0, p0, Lcom/xueqiu/android/message/ChatActivity$37;->a:Lcom/xueqiu/android/message/ChatActivity;

    iget-object v1, p0, Lcom/xueqiu/android/message/ChatActivity$37;->a:Lcom/xueqiu/android/message/ChatActivity;

    invoke-virtual {p1}, Lcom/xueqiu/android/message/model/IMGroup;->getId()J

    move-result-wide v2

    const/4 v4, 0x1

    invoke-static {v1, v2, v3, v4}, Lcom/xueqiu/android/message/ChatActivity;->a(Lcom/xueqiu/android/message/ChatActivity;JZ)Lcom/xueqiu/android/message/model/Talk;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xueqiu/android/message/ChatActivity;->b(Lcom/xueqiu/android/message/ChatActivity;Lcom/xueqiu/android/message/model/Talk;)V

    .line 1092
    return-void
.end method
