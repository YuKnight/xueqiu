.class public Lme/grantland/widget/AutofitLayout;
.super Landroid/widget/FrameLayout;
.source "AutofitLayout.java"


# instance fields
.field private a:Z

.field private b:F

.field private c:F

.field private d:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/view/View;",
            "Lme/grantland/widget/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, -0x1

    const/high16 v0, -0x40800000    # -1.0f

    .line 40
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 27
    new-instance v3, Ljava/util/WeakHashMap;

    invoke-direct {v3}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v3, p0, Lme/grantland/widget/AutofitLayout;->d:Ljava/util/WeakHashMap;

    .line 1049
    if-eqz p2, :cond_0

    .line 1050
    sget-object v3, Lme/grantland/widget/e;->AutofitTextView:[I

    const/4 v4, 0x0

    invoke-virtual {p1, p2, v3, p3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 1055
    sget v4, Lme/grantland/widget/e;->AutofitTextView_sizeToFit:I

    invoke-virtual {v3, v4, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    .line 1056
    sget v4, Lme/grantland/widget/e;->AutofitTextView_minTextSize:I

    invoke-virtual {v3, v4, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    .line 1058
    sget v4, Lme/grantland/widget/e;->AutofitTextView_precision:I

    invoke-virtual {v3, v4, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    .line 1059
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 1062
    :cond_0
    iput-boolean v2, p0, Lme/grantland/widget/AutofitLayout;->a:Z

    .line 1063
    int-to-float v1, v1

    iput v1, p0, Lme/grantland/widget/AutofitLayout;->b:F

    .line 1064
    iput v0, p0, Lme/grantland/widget/AutofitLayout;->c:F

    .line 42
    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 69
    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 70
    check-cast p1, Landroid/widget/TextView;

    .line 2046
    const/4 v0, 0x0

    invoke-static {p1, v0, v3}, Lme/grantland/widget/a;->a(Landroid/widget/TextView;Landroid/util/AttributeSet;I)Lme/grantland/widget/a;

    move-result-object v0

    .line 71
    iget-boolean v1, p0, Lme/grantland/widget/AutofitLayout;->a:Z

    invoke-virtual {v0, v1}, Lme/grantland/widget/a;->a(Z)Lme/grantland/widget/a;

    move-result-object v0

    .line 73
    iget v1, p0, Lme/grantland/widget/AutofitLayout;->c:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    .line 74
    iget v1, p0, Lme/grantland/widget/AutofitLayout;->c:F

    invoke-virtual {v0, v1}, Lme/grantland/widget/a;->a(F)Lme/grantland/widget/a;

    .line 76
    :cond_0
    iget v1, p0, Lme/grantland/widget/AutofitLayout;->b:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    .line 77
    iget v1, p0, Lme/grantland/widget/AutofitLayout;->b:F

    invoke-virtual {v0, v3, v1}, Lme/grantland/widget/a;->a(IF)Lme/grantland/widget/a;

    .line 79
    :cond_1
    iget-object v1, p0, Lme/grantland/widget/AutofitLayout;->d:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    return-void
.end method
