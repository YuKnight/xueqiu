.class public Landroid/support/v7/internal/widget/ActionBarContextView;
.super Landroid/support/v7/internal/widget/a;
.source "ActionBarContextView.java"


# instance fields
.field private g:Ljava/lang/CharSequence;

.field private h:Ljava/lang/CharSequence;

.field private i:Landroid/view/View;

.field private j:Landroid/view/View;

.field private k:Landroid/widget/LinearLayout;

.field private l:Landroid/widget/TextView;

.field private m:Landroid/widget/TextView;

.field private n:I

.field private o:I

.field private p:Landroid/graphics/drawable/Drawable;

.field private q:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v7/internal/widget/ActionBarContextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 59
    sget v0, Landroid/support/v7/b/c;->actionModeStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/internal/widget/ActionBarContextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 63
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/internal/widget/a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 65
    sget-object v0, Landroid/support/v7/b/k;->ActionMode:[I

    invoke-virtual {p1, p2, v0, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 66
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/support/v7/internal/widget/ActionBarContextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 68
    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->n:I

    .line 70
    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->o:I

    .line 73
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v1

    iput v1, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->f:I

    .line 76
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->p:Landroid/graphics/drawable/Drawable;

    .line 79
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 80
    return-void
.end method

.method private g()V
    .locals 6

    .prologue
    const/16 v4, 0x8

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 167
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->k:Landroid/widget/LinearLayout;

    if-nez v0, :cond_1

    .line 168
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 169
    sget v3, Landroid/support/v7/b/h;->abc_action_bar_title_item:I

    invoke-virtual {v0, v3, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 170
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarContextView;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ActionBarContextView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->k:Landroid/widget/LinearLayout;

    .line 171
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->k:Landroid/widget/LinearLayout;

    sget v3, Landroid/support/v7/b/f;->action_bar_title:I

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->l:Landroid/widget/TextView;

    .line 172
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->k:Landroid/widget/LinearLayout;

    sget v3, Landroid/support/v7/b/f;->action_bar_subtitle:I

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->m:Landroid/widget/TextView;

    .line 173
    iget v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->n:I

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->l:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v3

    iget v5, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->n:I

    invoke-virtual {v0, v3, v5}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 176
    :cond_0
    iget v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->o:I

    if-eqz v0, :cond_1

    .line 177
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->m:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v3

    iget v5, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->o:I

    invoke-virtual {v0, v3, v5}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 181
    :cond_1
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->l:Landroid/widget/TextView;

    iget-object v3, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->g:Ljava/lang/CharSequence;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 182
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->m:Landroid/widget/TextView;

    iget-object v3, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->h:Ljava/lang/CharSequence;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 184
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->g:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    move v0, v1

    .line 185
    :goto_0
    iget-object v3, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->h:Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 186
    :goto_1
    iget-object v5, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->m:Landroid/widget/TextView;

    if-eqz v1, :cond_7

    move v3, v2

    :goto_2
    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 187
    iget-object v3, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->k:Landroid/widget/LinearLayout;

    if-nez v0, :cond_2

    if-eqz v1, :cond_3

    :cond_2
    move v4, v2

    :cond_3
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 188
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->k:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_4

    .line 189
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->k:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ActionBarContextView;->addView(Landroid/view/View;)V

    .line 191
    :cond_4
    return-void

    :cond_5
    move v0, v2

    .line 184
    goto :goto_0

    :cond_6
    move v1, v2

    .line 185
    goto :goto_1

    :cond_7
    move v3, v4

    .line 186
    goto :goto_2
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->b:Landroid/support/v7/internal/view/menu/c;

    if-eqz v0, :cond_0

    .line 259
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->b:Landroid/support/v7/internal/view/menu/c;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/c;->c()Z

    move-result v0

    .line 261
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final bridge synthetic b()V
    .locals 0

    .prologue
    .line 37
    invoke-super {p0}, Landroid/support/v7/internal/widget/a;->b()V

    return-void
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->b:Landroid/support/v7/internal/view/menu/c;

    if-eqz v0, :cond_0

    .line 267
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->b:Landroid/support/v7/internal/view/menu/c;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/c;->d()Z

    move-result v0

    .line 269
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->b:Landroid/support/v7/internal/view/menu/c;

    if-eqz v0, :cond_0

    .line 275
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->b:Landroid/support/v7/internal/view/menu/c;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/c;->g()Z

    move-result v0

    .line 277
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final bridge synthetic e()Z
    .locals 1

    .prologue
    .line 37
    invoke-super {p0}, Landroid/support/v7/internal/widget/a;->e()Z

    move-result v0

    return v0
.end method

.method public final bridge synthetic f()V
    .locals 0

    .prologue
    .line 37
    invoke-super {p0}, Landroid/support/v7/internal/widget/a;->f()V

    return-void
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 3

    .prologue
    .line 284
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .prologue
    .line 290
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public bridge synthetic getAnimatedVisibility()I
    .locals 1

    .prologue
    .line 37
    invoke-super {p0}, Landroid/support/v7/internal/widget/a;->getAnimatedVisibility()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getContentHeight()I
    .locals 1

    .prologue
    .line 37
    invoke-super {p0}, Landroid/support/v7/internal/widget/a;->getContentHeight()I

    move-result v0

    return v0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->h:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->g:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 84
    invoke-super {p0}, Landroid/support/v7/internal/widget/a;->onDetachedFromWindow()V

    .line 85
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->b:Landroid/support/v7/internal/view/menu/c;

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->b:Landroid/support/v7/internal/view/menu/c;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/c;->d()Z

    .line 87
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->b:Landroid/support/v7/internal/view/menu/c;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/c;->f()Z

    .line 89
    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 6

    .prologue
    const/16 v5, 0x8

    .line 378
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarContextView;->getPaddingLeft()I

    move-result v1

    .line 379
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarContextView;->getPaddingTop()I

    move-result v2

    .line 380
    sub-int v0, p5, p3

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarContextView;->getPaddingTop()I

    move-result v3

    sub-int/2addr v0, v3

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarContextView;->getPaddingBottom()I

    move-result v3

    sub-int v3, v0, v3

    .line 382
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->i:Landroid/view/View;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->i:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v5, :cond_3

    .line 383
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->i:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 385
    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v1, v4

    .line 386
    iget-object v4, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->i:Landroid/view/View;

    invoke-static {v4, v1, v2, v3}, Landroid/support/v7/internal/widget/ActionBarContextView;->a(Landroid/view/View;III)I

    move-result v4

    add-int/2addr v1, v4

    .line 387
    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v0, v1

    .line 391
    :goto_0
    iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->k:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->j:Landroid/view/View;

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->k:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    if-eq v1, v5, :cond_0

    .line 392
    iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->k:Landroid/widget/LinearLayout;

    invoke-static {v1, v0, v2, v3}, Landroid/support/v7/internal/widget/ActionBarContextView;->a(Landroid/view/View;III)I

    move-result v1

    add-int/2addr v0, v1

    .line 395
    :cond_0
    iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->j:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 396
    iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->j:Landroid/view/View;

    invoke-static {v1, v0, v2, v3}, Landroid/support/v7/internal/widget/ActionBarContextView;->a(Landroid/view/View;III)I

    .line 399
    :cond_1
    sub-int v0, p4, p2

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarContextView;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    .line 401
    iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->a:Landroid/support/v7/internal/view/menu/ActionMenuView;

    if-eqz v1, :cond_2

    .line 402
    iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->a:Landroid/support/v7/internal/view/menu/ActionMenuView;

    invoke-static {v1, v0, v2, v3}, Landroid/support/v7/internal/widget/ActionBarContextView;->b(Landroid/view/View;III)I

    .line 404
    :cond_2
    return-void

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 12

    .prologue
    const/4 v11, -0x2

    const/high16 v4, 0x40000000    # 2.0f

    const/high16 v5, -0x80000000

    const/4 v3, 0x0

    .line 295
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 296
    if-eq v0, v4, :cond_0

    .line 297
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " can only be used with android:layout_width=\"FILL_PARENT\" (or fill_parent)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 301
    :cond_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 302
    if-nez v0, :cond_1

    .line 303
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " can only be used with android:layout_height=\"wrap_content\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 307
    :cond_1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v7

    .line 309
    iget v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->f:I

    if-lez v0, :cond_8

    iget v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->f:I

    move v1, v0

    .line 312
    :goto_0
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarContextView;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarContextView;->getPaddingBottom()I

    move-result v2

    add-int v8, v0, v2

    .line 313
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarContextView;->getPaddingLeft()I

    move-result v0

    sub-int v0, v7, v0

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarContextView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v0, v2

    .line 314
    sub-int v6, v1, v8

    .line 315
    invoke-static {v6, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 318
    iget-object v9, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->i:Landroid/view/View;

    if-eqz v9, :cond_2

    .line 319
    iget-object v9, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->i:Landroid/view/View;

    invoke-static {v9, v0, v2}, Landroid/support/v7/internal/widget/ActionBarContextView;->a(Landroid/view/View;II)I

    move-result v9

    .line 320
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->i:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 322
    iget v10, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v0, v10

    sub-int v0, v9, v0

    .line 325
    :cond_2
    iget-object v9, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->a:Landroid/support/v7/internal/view/menu/ActionMenuView;

    if-eqz v9, :cond_3

    iget-object v9, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->a:Landroid/support/v7/internal/view/menu/ActionMenuView;

    invoke-virtual {v9}, Landroid/support/v7/internal/view/menu/ActionMenuView;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    if-ne v9, p0, :cond_3

    .line 326
    iget-object v9, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->a:Landroid/support/v7/internal/view/menu/ActionMenuView;

    invoke-static {v9, v0, v2}, Landroid/support/v7/internal/widget/ActionBarContextView;->a(Landroid/view/View;II)I

    move-result v0

    .line 330
    :cond_3
    iget-object v9, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->k:Landroid/widget/LinearLayout;

    if-eqz v9, :cond_5

    iget-object v9, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->j:Landroid/view/View;

    if-nez v9, :cond_5

    .line 331
    iget-boolean v9, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->q:Z

    if-eqz v9, :cond_b

    .line 332
    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    .line 334
    iget-object v10, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->k:Landroid/widget/LinearLayout;

    invoke-virtual {v10, v9, v2}, Landroid/widget/LinearLayout;->measure(II)V

    .line 335
    iget-object v2, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->k:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v9

    .line 336
    if-gt v9, v0, :cond_9

    const/4 v2, 0x1

    .line 337
    :goto_1
    if-eqz v2, :cond_4

    .line 338
    sub-int/2addr v0, v9

    .line 340
    :cond_4
    iget-object v9, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->k:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_a

    move v2, v3

    :goto_2
    invoke-virtual {v9, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 346
    :cond_5
    :goto_3
    iget-object v2, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->j:Landroid/view/View;

    if-eqz v2, :cond_7

    .line 347
    iget-object v2, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->j:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    .line 348
    iget v2, v9, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-eq v2, v11, :cond_c

    move v2, v4

    .line 350
    :goto_4
    iget v10, v9, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ltz v10, :cond_6

    iget v10, v9, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v10, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 352
    :cond_6
    iget v10, v9, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v10, v11, :cond_d

    .line 354
    :goto_5
    iget v5, v9, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ltz v5, :cond_e

    iget v5, v9, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 356
    :goto_6
    iget-object v6, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->j:Landroid/view/View;

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-static {v5, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v6, v0, v2}, Landroid/view/View;->measure(II)V

    .line 360
    :cond_7
    iget v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->f:I

    if-gtz v0, :cond_10

    .line 362
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarContextView;->getChildCount()I

    move-result v2

    move v1, v3

    .line 363
    :goto_7
    if-ge v3, v2, :cond_f

    .line 364
    invoke-virtual {p0, v3}, Landroid/support/v7/internal/widget/ActionBarContextView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 365
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    add-int/2addr v0, v8

    .line 366
    if-le v0, v1, :cond_11

    .line 363
    :goto_8
    add-int/lit8 v3, v3, 0x1

    move v1, v0

    goto :goto_7

    .line 309
    :cond_8
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    move v1, v0

    goto/16 :goto_0

    :cond_9
    move v2, v3

    .line 336
    goto :goto_1

    .line 340
    :cond_a
    const/16 v2, 0x8

    goto :goto_2

    .line 342
    :cond_b
    iget-object v9, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->k:Landroid/widget/LinearLayout;

    invoke-static {v9, v0, v2}, Landroid/support/v7/internal/widget/ActionBarContextView;->a(Landroid/view/View;II)I

    move-result v0

    goto :goto_3

    :cond_c
    move v2, v5

    .line 348
    goto :goto_4

    :cond_d
    move v4, v5

    .line 352
    goto :goto_5

    :cond_e
    move v5, v6

    .line 354
    goto :goto_6

    .line 370
    :cond_f
    invoke-virtual {p0, v7, v1}, Landroid/support/v7/internal/widget/ActionBarContextView;->setMeasuredDimension(II)V

    .line 374
    :goto_9
    return-void

    .line 372
    :cond_10
    invoke-virtual {p0, v7, v1}, Landroid/support/v7/internal/widget/ActionBarContextView;->setMeasuredDimension(II)V

    goto :goto_9

    :cond_11
    move v0, v1

    goto :goto_8
.end method

.method public setContentHeight(I)V
    .locals 0

    .prologue
    .line 130
    iput p1, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->f:I

    .line 131
    return-void
.end method

.method public setCustomView(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->j:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->j:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ActionBarContextView;->removeView(Landroid/view/View;)V

    .line 137
    :cond_0
    iput-object p1, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->j:Landroid/view/View;

    .line 138
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->k:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    .line 139
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->k:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ActionBarContextView;->removeView(Landroid/view/View;)V

    .line 140
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->k:Landroid/widget/LinearLayout;

    .line 142
    :cond_1
    if-eqz p1, :cond_2

    .line 143
    invoke-virtual {p0, p1}, Landroid/support/v7/internal/widget/ActionBarContextView;->addView(Landroid/view/View;)V

    .line 145
    :cond_2
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarContextView;->requestLayout()V

    .line 146
    return-void
.end method

.method public setSplitActionBar(Z)V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 93
    iget-boolean v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->d:Z

    if-eq v0, p1, :cond_2

    .line 94
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->b:Landroid/support/v7/internal/view/menu/c;

    if-eqz v0, :cond_1

    .line 96
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v0, -0x2

    invoke-direct {v1, v0, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 99
    if-nez p1, :cond_3

    .line 100
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->b:Landroid/support/v7/internal/view/menu/c;

    invoke-virtual {v0, p0}, Landroid/support/v7/internal/view/menu/c;->a(Landroid/view/ViewGroup;)Landroid/support/v7/internal/view/menu/af;

    move-result-object v0

    check-cast v0, Landroid/support/v7/internal/view/menu/ActionMenuView;

    iput-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->a:Landroid/support/v7/internal/view/menu/ActionMenuView;

    .line 101
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->a:Landroid/support/v7/internal/view/menu/ActionMenuView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/support/v7/internal/view/menu/ActionMenuView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 102
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->a:Landroid/support/v7/internal/view/menu/ActionMenuView;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/ActionMenuView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 103
    if-eqz v0, :cond_0

    .line 104
    iget-object v2, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->a:Landroid/support/v7/internal/view/menu/ActionMenuView;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 106
    :cond_0
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->a:Landroid/support/v7/internal/view/menu/ActionMenuView;

    invoke-virtual {p0, v0, v1}, Landroid/support/v7/internal/widget/ActionBarContextView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 125
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/support/v7/internal/widget/a;->setSplitActionBar(Z)V

    .line 127
    :cond_2
    return-void

    .line 109
    :cond_3
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->b:Landroid/support/v7/internal/view/menu/c;

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v0, v2}, Landroid/support/v7/internal/view/menu/c;->a(I)V

    .line 112
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->b:Landroid/support/v7/internal/view/menu/c;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/c;->b()V

    .line 114
    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 115
    iget v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->f:I

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 116
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->b:Landroid/support/v7/internal/view/menu/c;

    invoke-virtual {v0, p0}, Landroid/support/v7/internal/view/menu/c;->a(Landroid/view/ViewGroup;)Landroid/support/v7/internal/view/menu/af;

    move-result-object v0

    check-cast v0, Landroid/support/v7/internal/view/menu/ActionMenuView;

    iput-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->a:Landroid/support/v7/internal/view/menu/ActionMenuView;

    .line 117
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->a:Landroid/support/v7/internal/view/menu/ActionMenuView;

    iget-object v2, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->p:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/support/v7/internal/view/menu/ActionMenuView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 118
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->a:Landroid/support/v7/internal/view/menu/ActionMenuView;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/ActionMenuView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 119
    if-eqz v0, :cond_4

    .line 120
    iget-object v2, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->a:Landroid/support/v7/internal/view/menu/ActionMenuView;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 122
    :cond_4
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->c:Landroid/support/v7/internal/widget/ActionBarContainer;

    iget-object v2, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->a:Landroid/support/v7/internal/view/menu/ActionMenuView;

    invoke-virtual {v0, v2, v1}, Landroid/support/v7/internal/widget/ActionBarContainer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public bridge synthetic setSplitView(Landroid/support/v7/internal/widget/ActionBarContainer;)V
    .locals 0

    .prologue
    .line 37
    invoke-super {p0, p1}, Landroid/support/v7/internal/widget/a;->setSplitView(Landroid/support/v7/internal/widget/ActionBarContainer;)V

    return-void
.end method

.method public bridge synthetic setSplitWhenNarrow(Z)V
    .locals 0

    .prologue
    .line 37
    invoke-super {p0, p1}, Landroid/support/v7/internal/widget/a;->setSplitWhenNarrow(Z)V

    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 154
    iput-object p1, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->h:Ljava/lang/CharSequence;

    .line 155
    invoke-direct {p0}, Landroid/support/v7/internal/widget/ActionBarContextView;->g()V

    .line 156
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 149
    iput-object p1, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->g:Ljava/lang/CharSequence;

    .line 150
    invoke-direct {p0}, Landroid/support/v7/internal/widget/ActionBarContextView;->g()V

    .line 151
    return-void
.end method

.method public setTitleOptional(Z)V
    .locals 1

    .prologue
    .line 407
    iget-boolean v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->q:Z

    if-eq p1, v0, :cond_0

    .line 408
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarContextView;->requestLayout()V

    .line 410
    :cond_0
    iput-boolean p1, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->q:Z

    .line 411
    return-void
.end method

.method public bridge synthetic setVisibility(I)V
    .locals 0

    .prologue
    .line 37
    invoke-super {p0, p1}, Landroid/support/v7/internal/widget/a;->setVisibility(I)V

    return-void
.end method
