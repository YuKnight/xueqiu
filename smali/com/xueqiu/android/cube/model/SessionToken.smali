.class public Lcom/xueqiu/android/cube/model/SessionToken;
.super Ljava/lang/Object;
.source "SessionToken.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/xueqiu/android/cube/model/SessionToken;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private sessionToken:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    new-instance v0, Lcom/xueqiu/android/cube/model/SessionToken$1;

    invoke-direct {v0}, Lcom/xueqiu/android/cube/model/SessionToken$1;-><init>()V

    sput-object v0, Lcom/xueqiu/android/cube/model/SessionToken;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$002(Lcom/xueqiu/android/cube/model/SessionToken;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 18
    iput-object p1, p0, Lcom/xueqiu/android/cube/model/SessionToken;->sessionToken:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    return v0
.end method

.method public getSessionToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/xueqiu/android/cube/model/SessionToken;->sessionToken:Ljava/lang/String;

    return-object v0
.end method

.method public setSessionToken(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 28
    iput-object p1, p0, Lcom/xueqiu/android/cube/model/SessionToken;->sessionToken:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/xueqiu/android/cube/model/SessionToken;->sessionToken:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 39
    return-void
.end method
