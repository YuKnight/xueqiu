.class final Lcom/xueqiu/android/community/WriteStatusActivity$35;
.super Lrx/i;
.source "WriteStatusActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/community/WriteStatusActivity;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/i",
        "<",
        "Lcom/xueqiu/android/community/model/Comment;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/community/WriteStatusActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/WriteStatusActivity;)V
    .locals 0

    .prologue
    .line 1802
    iput-object p1, p0, Lcom/xueqiu/android/community/WriteStatusActivity$35;->a:Lcom/xueqiu/android/community/WriteStatusActivity;

    invoke-direct {p0}, Lrx/i;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .prologue
    .line 1806
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 1802
    .line 2815
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity$35;->a:Lcom/xueqiu/android/community/WriteStatusActivity;

    const-string v1, "success"

    invoke-static {v0, v1}, Lcom/xueqiu/android/community/WriteStatusActivity;->c(Lcom/xueqiu/android/community/WriteStatusActivity;Ljava/lang/String;)V

    .line 1802
    return-void
.end method

.method public final a(Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 1810
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity$35;->a:Lcom/xueqiu/android/community/WriteStatusActivity;

    const-string v1, "erro"

    invoke-static {v0, v1}, Lcom/xueqiu/android/community/WriteStatusActivity;->c(Lcom/xueqiu/android/community/WriteStatusActivity;Ljava/lang/String;)V

    .line 1811
    return-void
.end method
