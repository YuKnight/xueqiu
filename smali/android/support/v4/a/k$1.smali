.class final Landroid/support/v4/a/k$1;
.super Landroid/os/Handler;
.source "FragmentActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/a/k;
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v4/a/k;


# direct methods
.method constructor <init>(Landroid/support/v4/a/k;)V
    .locals 0

    .prologue
    .line 92
    iput-object p1, p0, Landroid/support/v4/a/k$1;->a:Landroid/support/v4/a/k;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2

    .prologue
    .line 95
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 106
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 108
    :cond_0
    :goto_0
    return-void

    .line 97
    :pswitch_0
    iget-object v0, p0, Landroid/support/v4/a/k$1;->a:Landroid/support/v4/a/k;

    iget-boolean v0, v0, Landroid/support/v4/a/k;->e:Z

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Landroid/support/v4/a/k$1;->a:Landroid/support/v4/a/k;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/a/k;->a(Z)V

    goto :goto_0

    .line 102
    :pswitch_1
    iget-object v0, p0, Landroid/support/v4/a/k$1;->a:Landroid/support/v4/a/k;

    invoke-virtual {v0}, Landroid/support/v4/a/k;->A_()V

    .line 103
    iget-object v0, p0, Landroid/support/v4/a/k$1;->a:Landroid/support/v4/a/k;

    iget-object v0, v0, Landroid/support/v4/a/k;->b:Landroid/support/v4/a/o;

    invoke-virtual {v0}, Landroid/support/v4/a/o;->c()Z

    goto :goto_0

    .line 95
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
