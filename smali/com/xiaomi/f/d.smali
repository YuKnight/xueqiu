.class final Lcom/xiaomi/f/d;
.super Ljava/lang/Object;


# direct methods
.method static a(Ljava/lang/Exception;)V
    .locals 1

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    return-void
.end method
