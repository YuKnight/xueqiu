.class final Landroid/support/v7/internal/widget/aj$1;
.super Ljava/lang/Object;
.source "SpinnerICS.java"

# interfaces
.implements Landroid/support/v7/internal/widget/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/internal/widget/aj;-><init>(Landroid/support/v7/internal/widget/ag;Landroid/content/Context;I)V
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/internal/widget/ag;

.field final synthetic b:Landroid/support/v7/internal/widget/aj;


# direct methods
.method constructor <init>(Landroid/support/v7/internal/widget/aj;Landroid/support/v7/internal/widget/ag;)V
    .locals 0

    .prologue
    .line 706
    iput-object p1, p0, Landroid/support/v7/internal/widget/aj$1;->b:Landroid/support/v7/internal/widget/aj;

    iput-object p2, p0, Landroid/support/v7/internal/widget/aj$1;->a:Landroid/support/v7/internal/widget/ag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;I)V
    .locals 2

    .prologue
    .line 708
    iget-object v0, p0, Landroid/support/v7/internal/widget/aj$1;->b:Landroid/support/v7/internal/widget/aj;

    iget-object v0, v0, Landroid/support/v7/internal/widget/aj;->i:Landroid/support/v7/internal/widget/ag;

    invoke-virtual {v0, p2}, Landroid/support/v7/internal/widget/ag;->a(I)V

    .line 709
    iget-object v0, p0, Landroid/support/v7/internal/widget/aj$1;->b:Landroid/support/v7/internal/widget/aj;

    iget-object v0, v0, Landroid/support/v7/internal/widget/aj;->i:Landroid/support/v7/internal/widget/ag;

    iget-object v0, v0, Landroid/support/v7/internal/widget/ag;->u:Landroid/support/v7/internal/widget/q;

    if-eqz v0, :cond_0

    .line 710
    iget-object v0, p0, Landroid/support/v7/internal/widget/aj$1;->b:Landroid/support/v7/internal/widget/aj;

    iget-object v0, v0, Landroid/support/v7/internal/widget/aj;->i:Landroid/support/v7/internal/widget/ag;

    iget-object v1, p0, Landroid/support/v7/internal/widget/aj$1;->b:Landroid/support/v7/internal/widget/aj;

    invoke-static {v1}, Landroid/support/v7/internal/widget/aj;->a(Landroid/support/v7/internal/widget/aj;)Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-interface {v1, p2}, Landroid/widget/ListAdapter;->getItemId(I)J

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/internal/widget/ag;->a(Landroid/view/View;I)Z

    .line 712
    :cond_0
    iget-object v0, p0, Landroid/support/v7/internal/widget/aj$1;->b:Landroid/support/v7/internal/widget/aj;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/aj;->c()V

    .line 713
    return-void
.end method
