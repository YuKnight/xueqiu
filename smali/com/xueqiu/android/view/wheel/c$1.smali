.class final Lcom/xueqiu/android/view/wheel/c$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "WheelScroller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/view/wheel/c;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/view/wheel/c;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/view/wheel/c;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/xueqiu/android/view/wheel/c$1;->a:Lcom/xueqiu/android/view/wheel/c;

    .line 159
    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 167
    iget-object v0, p0, Lcom/xueqiu/android/view/wheel/c$1;->a:Lcom/xueqiu/android/view/wheel/c;

    .line 1076
    iput v1, v0, Lcom/xueqiu/android/view/wheel/c;->e:I

    .line 170
    iget-object v0, p0, Lcom/xueqiu/android/view/wheel/c$1;->a:Lcom/xueqiu/android/view/wheel/c;

    .line 2075
    iget-object v0, v0, Lcom/xueqiu/android/view/wheel/c;->d:Landroid/widget/Scroller;

    .line 170
    iget-object v2, p0, Lcom/xueqiu/android/view/wheel/c$1;->a:Lcom/xueqiu/android/view/wheel/c;

    .line 2076
    iget v2, v2, Lcom/xueqiu/android/view/wheel/c;->e:I

    .line 170
    neg-float v3, p4

    float-to-int v4, v3

    const v7, -0x7fffffff

    const v8, 0x7fffffff

    move v3, v1

    move v5, v1

    move v6, v1

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 171
    iget-object v0, p0, Lcom/xueqiu/android/view/wheel/c$1;->a:Lcom/xueqiu/android/view/wheel/c;

    .line 2185
    invoke-virtual {v0, v1}, Lcom/xueqiu/android/view/wheel/c;->a(I)V

    .line 172
    const/4 v0, 0x1

    return v0
.end method

.method public final onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1

    .prologue
    .line 163
    const/4 v0, 0x1

    return v0
.end method
