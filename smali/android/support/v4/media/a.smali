.class public final Landroid/support/v4/media/a;
.super Ljava/lang/Object;
.source "MediaDescriptionCompat.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/support/v4/media/a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/CharSequence;

.field private final c:Ljava/lang/CharSequence;

.field private final d:Ljava/lang/CharSequence;

.field private final e:Landroid/graphics/Bitmap;

.field private final f:Landroid/net/Uri;

.field private final g:Landroid/os/Bundle;

.field private final h:Landroid/net/Uri;

.field private i:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 263
    new-instance v0, Landroid/support/v4/media/a$1;

    invoke-direct {v0}, Landroid/support/v4/media/a$1;-><init>()V

    sput-object v0, Landroid/support/v4/media/a;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/media/a;->a:Ljava/lang/String;

    .line 85
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/support/v4/media/a;->b:Ljava/lang/CharSequence;

    .line 86
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/support/v4/media/a;->c:Ljava/lang/CharSequence;

    .line 87
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/support/v4/media/a;->d:Ljava/lang/CharSequence;

    .line 88
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Landroid/support/v4/media/a;->e:Landroid/graphics/Bitmap;

    .line 89
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Landroid/support/v4/media/a;->f:Landroid/net/Uri;

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/media/a;->g:Landroid/os/Bundle;

    .line 91
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Landroid/support/v4/media/a;->h:Landroid/net/Uri;

    .line 92
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;B)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0, p1}, Landroid/support/v4/media/a;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/Bitmap;Landroid/net/Uri;Landroid/os/Bundle;Landroid/net/Uri;)V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p1, p0, Landroid/support/v4/media/a;->a:Ljava/lang/String;

    .line 74
    iput-object p2, p0, Landroid/support/v4/media/a;->b:Ljava/lang/CharSequence;

    .line 75
    iput-object p3, p0, Landroid/support/v4/media/a;->c:Ljava/lang/CharSequence;

    .line 76
    iput-object p4, p0, Landroid/support/v4/media/a;->d:Ljava/lang/CharSequence;

    .line 77
    iput-object p5, p0, Landroid/support/v4/media/a;->e:Landroid/graphics/Bitmap;

    .line 78
    iput-object p6, p0, Landroid/support/v4/media/a;->f:Landroid/net/Uri;

    .line 79
    iput-object p7, p0, Landroid/support/v4/media/a;->g:Landroid/os/Bundle;

    .line 80
    iput-object p8, p0, Landroid/support/v4/media/a;->h:Landroid/net/Uri;

    .line 81
    return-void
.end method

.method private synthetic constructor <init>(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/Bitmap;Landroid/net/Uri;Landroid/os/Bundle;Landroid/net/Uri;B)V
    .locals 0

    .prologue
    .line 32
    invoke-direct/range {p0 .. p8}, Landroid/support/v4/media/a;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/Bitmap;Landroid/net/Uri;Landroid/os/Bundle;Landroid/net/Uri;)V

    return-void
.end method

.method public static a(Ljava/lang/Object;)Landroid/support/v4/media/a;
    .locals 10

    .prologue
    .line 242
    if-eqz p0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_1

    .line 243
    :cond_0
    const/4 v0, 0x0

    .line 260
    :goto_0
    return-object v0

    .line 246
    :cond_1
    new-instance v8, Landroid/support/v4/media/b;

    invoke-direct {v8}, Landroid/support/v4/media/b;-><init>()V

    move-object v0, p0

    .line 5027
    check-cast v0, Landroid/media/MediaDescription;

    invoke-virtual {v0}, Landroid/media/MediaDescription;->getMediaId()Ljava/lang/String;

    move-result-object v0

    .line 5306
    iput-object v0, v8, Landroid/support/v4/media/b;->a:Ljava/lang/String;

    move-object v0, p0

    .line 6031
    check-cast v0, Landroid/media/MediaDescription;

    invoke-virtual {v0}, Landroid/media/MediaDescription;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    .line 6317
    iput-object v0, v8, Landroid/support/v4/media/b;->b:Ljava/lang/CharSequence;

    move-object v0, p0

    .line 7035
    check-cast v0, Landroid/media/MediaDescription;

    invoke-virtual {v0}, Landroid/media/MediaDescription;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v0

    .line 7328
    iput-object v0, v8, Landroid/support/v4/media/b;->c:Ljava/lang/CharSequence;

    move-object v0, p0

    .line 8039
    check-cast v0, Landroid/media/MediaDescription;

    invoke-virtual {v0}, Landroid/media/MediaDescription;->getDescription()Ljava/lang/CharSequence;

    move-result-object v0

    .line 8340
    iput-object v0, v8, Landroid/support/v4/media/b;->d:Ljava/lang/CharSequence;

    move-object v0, p0

    .line 9043
    check-cast v0, Landroid/media/MediaDescription;

    invoke-virtual {v0}, Landroid/media/MediaDescription;->getIconBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 9352
    iput-object v0, v8, Landroid/support/v4/media/b;->e:Landroid/graphics/Bitmap;

    move-object v0, p0

    .line 10047
    check-cast v0, Landroid/media/MediaDescription;

    invoke-virtual {v0}, Landroid/media/MediaDescription;->getIconUri()Landroid/net/Uri;

    move-result-object v0

    .line 10364
    iput-object v0, v8, Landroid/support/v4/media/b;->f:Landroid/net/Uri;

    move-object v0, p0

    .line 11051
    check-cast v0, Landroid/media/MediaDescription;

    invoke-virtual {v0}, Landroid/media/MediaDescription;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 11375
    iput-object v0, v8, Landroid/support/v4/media/b;->g:Landroid/os/Bundle;

    .line 254
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_2

    move-object v0, p0

    .line 12026
    check-cast v0, Landroid/media/MediaDescription;

    invoke-virtual {v0}, Landroid/media/MediaDescription;->getMediaUri()Landroid/net/Uri;

    move-result-object v0

    .line 12386
    iput-object v0, v8, Landroid/support/v4/media/b;->h:Landroid/net/Uri;

    .line 12397
    :cond_2
    new-instance v0, Landroid/support/v4/media/a;

    iget-object v1, v8, Landroid/support/v4/media/b;->a:Ljava/lang/String;

    iget-object v2, v8, Landroid/support/v4/media/b;->b:Ljava/lang/CharSequence;

    iget-object v3, v8, Landroid/support/v4/media/b;->c:Ljava/lang/CharSequence;

    iget-object v4, v8, Landroid/support/v4/media/b;->d:Ljava/lang/CharSequence;

    iget-object v5, v8, Landroid/support/v4/media/b;->e:Landroid/graphics/Bitmap;

    iget-object v6, v8, Landroid/support/v4/media/b;->f:Landroid/net/Uri;

    iget-object v7, v8, Landroid/support/v4/media/b;->g:Landroid/os/Bundle;

    iget-object v8, v8, Landroid/support/v4/media/b;->h:Landroid/net/Uri;

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Landroid/support/v4/media/a;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/Bitmap;Landroid/net/Uri;Landroid/os/Bundle;Landroid/net/Uri;B)V

    .line 258
    iput-object p0, v0, Landroid/support/v4/media/a;->i:Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method public final describeContents()I
    .locals 1

    .prologue
    .line 175
    const/4 v0, 0x0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 195
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/support/v4/media/a;->b:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/media/a;->c:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/media/a;->d:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .prologue
    const/16 v1, 0x15

    .line 180
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, v1, :cond_0

    .line 181
    iget-object v0, p0, Landroid/support/v4/media/a;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 182
    iget-object v0, p0, Landroid/support/v4/media/a;->b:Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 183
    iget-object v0, p0, Landroid/support/v4/media/a;->c:Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 184
    iget-object v0, p0, Landroid/support/v4/media/a;->d:Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 185
    iget-object v0, p0, Landroid/support/v4/media/a;->e:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 186
    iget-object v0, p0, Landroid/support/v4/media/a;->f:Landroid/net/Uri;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 187
    iget-object v0, p0, Landroid/support/v4/media/a;->g:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 191
    :goto_0
    return-void

    .line 1210
    :cond_0
    iget-object v0, p0, Landroid/support/v4/media/a;->i:Ljava/lang/Object;

    if-nez v0, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, v1, :cond_2

    .line 1211
    :cond_1
    iget-object v0, p0, Landroid/support/v4/media/a;->i:Ljava/lang/Object;

    .line 4055
    :goto_1
    check-cast v0, Landroid/media/MediaDescription;

    invoke-virtual {v0, p1, p2}, Landroid/media/MediaDescription;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 2064
    :cond_2
    new-instance v1, Landroid/media/MediaDescription$Builder;

    invoke-direct {v1}, Landroid/media/MediaDescription$Builder;-><init>()V

    .line 1214
    iget-object v2, p0, Landroid/support/v4/media/a;->a:Ljava/lang/String;

    move-object v0, v1

    .line 2069
    check-cast v0, Landroid/media/MediaDescription$Builder;

    invoke-virtual {v0, v2}, Landroid/media/MediaDescription$Builder;->setMediaId(Ljava/lang/String;)Landroid/media/MediaDescription$Builder;

    .line 1215
    iget-object v2, p0, Landroid/support/v4/media/a;->b:Ljava/lang/CharSequence;

    move-object v0, v1

    .line 2073
    check-cast v0, Landroid/media/MediaDescription$Builder;

    invoke-virtual {v0, v2}, Landroid/media/MediaDescription$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/media/MediaDescription$Builder;

    .line 1216
    iget-object v2, p0, Landroid/support/v4/media/a;->c:Ljava/lang/CharSequence;

    move-object v0, v1

    .line 2077
    check-cast v0, Landroid/media/MediaDescription$Builder;

    invoke-virtual {v0, v2}, Landroid/media/MediaDescription$Builder;->setSubtitle(Ljava/lang/CharSequence;)Landroid/media/MediaDescription$Builder;

    .line 1217
    iget-object v2, p0, Landroid/support/v4/media/a;->d:Ljava/lang/CharSequence;

    move-object v0, v1

    .line 2081
    check-cast v0, Landroid/media/MediaDescription$Builder;

    invoke-virtual {v0, v2}, Landroid/media/MediaDescription$Builder;->setDescription(Ljava/lang/CharSequence;)Landroid/media/MediaDescription$Builder;

    .line 1218
    iget-object v2, p0, Landroid/support/v4/media/a;->e:Landroid/graphics/Bitmap;

    move-object v0, v1

    .line 2085
    check-cast v0, Landroid/media/MediaDescription$Builder;

    invoke-virtual {v0, v2}, Landroid/media/MediaDescription$Builder;->setIconBitmap(Landroid/graphics/Bitmap;)Landroid/media/MediaDescription$Builder;

    .line 1219
    iget-object v2, p0, Landroid/support/v4/media/a;->f:Landroid/net/Uri;

    move-object v0, v1

    .line 2089
    check-cast v0, Landroid/media/MediaDescription$Builder;

    invoke-virtual {v0, v2}, Landroid/media/MediaDescription$Builder;->setIconUri(Landroid/net/Uri;)Landroid/media/MediaDescription$Builder;

    .line 1220
    iget-object v2, p0, Landroid/support/v4/media/a;->g:Landroid/os/Bundle;

    move-object v0, v1

    .line 2093
    check-cast v0, Landroid/media/MediaDescription$Builder;

    invoke-virtual {v0, v2}, Landroid/media/MediaDescription$Builder;->setExtras(Landroid/os/Bundle;)Landroid/media/MediaDescription$Builder;

    .line 1221
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v0, v2, :cond_3

    .line 1222
    iget-object v2, p0, Landroid/support/v4/media/a;->h:Landroid/net/Uri;

    move-object v0, v1

    .line 3031
    check-cast v0, Landroid/media/MediaDescription$Builder;

    invoke-virtual {v0, v2}, Landroid/media/MediaDescription$Builder;->setMediaUri(Landroid/net/Uri;)Landroid/media/MediaDescription$Builder;

    .line 3097
    :cond_3
    check-cast v1, Landroid/media/MediaDescription$Builder;

    invoke-virtual {v1}, Landroid/media/MediaDescription$Builder;->build()Landroid/media/MediaDescription;

    move-result-object v0

    .line 1224
    iput-object v0, p0, Landroid/support/v4/media/a;->i:Ljava/lang/Object;

    .line 1226
    iget-object v0, p0, Landroid/support/v4/media/a;->i:Ljava/lang/Object;

    goto :goto_1
.end method
