.class final Lcom/xueqiu/android/common/imagepicker/c$1;
.super Ljava/lang/Object;
.source "ImageBucket.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/common/imagepicker/c;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/xueqiu/android/common/imagepicker/c;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2123
    new-instance v0, Lcom/xueqiu/android/common/imagepicker/c;

    invoke-direct {v0, p1}, Lcom/xueqiu/android/common/imagepicker/c;-><init>(Landroid/os/Parcel;)V

    .line 120
    return-object v0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 120
    .line 1128
    new-array v0, p1, [Lcom/xueqiu/android/common/imagepicker/c;

    .line 120
    return-object v0
.end method
