.class final Lcom/xueqiu/android/community/c/q$2;
.super Ljava/lang/Object;
.source "ShareStatusFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/community/c/q;->b()Landroid/app/Dialog;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/community/c/q;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/c/q;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lcom/xueqiu/android/community/c/q$2;->a:Lcom/xueqiu/android/community/c/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 90
    iget-object v0, p0, Lcom/xueqiu/android/community/c/q$2;->a:Lcom/xueqiu/android/community/c/q;

    .line 1167
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/a/h;->a(Z)V

    .line 91
    return-void
.end method
