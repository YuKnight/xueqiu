.class Lnet/sqlcipher/database/SQLiteDatabase$ActiveDatabases;
.super Ljava/lang/Object;
.source "SQLiteDatabase.java"


# static fields
.field private static final activeDatabases:Lnet/sqlcipher/database/SQLiteDatabase$ActiveDatabases;


# instance fields
.field private mActiveDatabases:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lnet/sqlcipher/database/SQLiteDatabase;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 2266
    new-instance v0, Lnet/sqlcipher/database/SQLiteDatabase$ActiveDatabases;

    invoke-direct {v0}, Lnet/sqlcipher/database/SQLiteDatabase$ActiveDatabases;-><init>()V

    sput-object v0, Lnet/sqlcipher/database/SQLiteDatabase$ActiveDatabases;->activeDatabases:Lnet/sqlcipher/database/SQLiteDatabase$ActiveDatabases;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 2269
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2267
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lnet/sqlcipher/database/SQLiteDatabase$ActiveDatabases;->mActiveDatabases:Ljava/util/HashSet;

    .line 2269
    return-void
.end method

.method static synthetic access$000(Lnet/sqlcipher/database/SQLiteDatabase$ActiveDatabases;)Ljava/util/HashSet;
    .locals 1

    .prologue
    .line 2265
    iget-object v0, p0, Lnet/sqlcipher/database/SQLiteDatabase$ActiveDatabases;->mActiveDatabases:Ljava/util/HashSet;

    return-object v0
.end method

.method static getInstance()Lnet/sqlcipher/database/SQLiteDatabase$ActiveDatabases;
    .locals 1

    .prologue
    .line 2270
    sget-object v0, Lnet/sqlcipher/database/SQLiteDatabase$ActiveDatabases;->activeDatabases:Lnet/sqlcipher/database/SQLiteDatabase$ActiveDatabases;

    return-object v0
.end method
