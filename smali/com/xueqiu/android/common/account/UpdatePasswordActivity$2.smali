.class final Lcom/xueqiu/android/common/account/UpdatePasswordActivity$2;
.super Ljava/lang/Object;
.source "UpdatePasswordActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/common/account/UpdatePasswordActivity;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/common/account/UpdatePasswordActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/common/account/UpdatePasswordActivity;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lcom/xueqiu/android/common/account/UpdatePasswordActivity$2;->a:Lcom/xueqiu/android/common/account/UpdatePasswordActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/xueqiu/android/common/account/UpdatePasswordActivity$2;->a:Lcom/xueqiu/android/common/account/UpdatePasswordActivity;

    invoke-static {v0}, Lcom/xueqiu/android/common/account/UpdatePasswordActivity;->a(Lcom/xueqiu/android/common/account/UpdatePasswordActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 83
    return-void
.end method
