.class public Lnet/sqlcipher/database/SQLiteDebug$DbStats;
.super Ljava/lang/Object;
.source "SQLiteDebug.java"


# instance fields
.field public dbName:Ljava/lang/String;

.field public dbSize:J

.field public lookaside:I

.field public pageSize:J


# direct methods
.method public constructor <init>(Ljava/lang/String;JJI)V
    .locals 4

    .prologue
    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    iput-object p1, p0, Lnet/sqlcipher/database/SQLiteDebug$DbStats;->dbName:Ljava/lang/String;

    .line 137
    iput-wide p4, p0, Lnet/sqlcipher/database/SQLiteDebug$DbStats;->pageSize:J

    .line 138
    mul-long v0, p2, p4

    const-wide/16 v2, 0x400

    div-long/2addr v0, v2

    iput-wide v0, p0, Lnet/sqlcipher/database/SQLiteDebug$DbStats;->dbSize:J

    .line 139
    iput p6, p0, Lnet/sqlcipher/database/SQLiteDebug$DbStats;->lookaside:I

    .line 140
    return-void
.end method
