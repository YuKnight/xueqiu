.class final Lcom/xueqiu/android/message/client/MessageService$8;
.super Ljava/lang/Object;
.source "MessageService.java"

# interfaces
.implements Lrx/c/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/message/client/MessageService;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/c/f",
        "<",
        "Lcom/xueqiu/android/message/model/Talk;",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/message/client/MessageService;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/message/client/MessageService;)V
    .locals 0

    .prologue
    .line 421
    iput-object p1, p0, Lcom/xueqiu/android/message/client/MessageService$8;->a:Lcom/xueqiu/android/message/client/MessageService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 421
    check-cast p1, Lcom/xueqiu/android/message/model/Talk;

    .line 1424
    invoke-virtual {p1}, Lcom/xueqiu/android/message/model/Talk;->getId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 421
    return-object v0
.end method
