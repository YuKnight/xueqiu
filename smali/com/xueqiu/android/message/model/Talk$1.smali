.class final Lcom/xueqiu/android/message/model/Talk$1;
.super Ljava/lang/Object;
.source "Talk.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/message/model/Talk;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/xueqiu/android/message/model/Talk;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 200
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Lcom/xueqiu/android/message/model/Talk;
    .locals 1

    .prologue
    .line 203
    new-instance v0, Lcom/xueqiu/android/message/model/Talk;

    invoke-direct {v0, p1}, Lcom/xueqiu/android/message/model/Talk;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public final bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 200
    invoke-virtual {p0, p1}, Lcom/xueqiu/android/message/model/Talk$1;->createFromParcel(Landroid/os/Parcel;)Lcom/xueqiu/android/message/model/Talk;

    move-result-object v0

    return-object v0
.end method

.method public final newArray(I)[Lcom/xueqiu/android/message/model/Talk;
    .locals 1

    .prologue
    .line 208
    new-array v0, p1, [Lcom/xueqiu/android/message/model/Talk;

    return-object v0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 200
    invoke-virtual {p0, p1}, Lcom/xueqiu/android/message/model/Talk$1;->newArray(I)[Lcom/xueqiu/android/message/model/Talk;

    move-result-object v0

    return-object v0
.end method
