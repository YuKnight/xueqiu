.class final Landroid/support/v4/a/bc;
.super Landroid/support/v4/a/bb;
.source "NotificationCompat.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 552
    invoke-direct {p0}, Landroid/support/v4/a/bb;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/support/v4/a/av;)Landroid/app/Notification;
    .locals 6

    .prologue
    .line 555
    iget-object v0, p1, Landroid/support/v4/a/av;->B:Landroid/app/Notification;

    .line 556
    iget-object v1, p1, Landroid/support/v4/a/av;->a:Landroid/content/Context;

    iget-object v2, p1, Landroid/support/v4/a/av;->b:Ljava/lang/CharSequence;

    iget-object v3, p1, Landroid/support/v4/a/av;->c:Ljava/lang/CharSequence;

    iget-object v4, p1, Landroid/support/v4/a/av;->d:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 558
    iget-object v1, p1, Landroid/support/v4/a/av;->a:Landroid/content/Context;

    iget-object v2, p1, Landroid/support/v4/a/av;->b:Ljava/lang/CharSequence;

    iget-object v3, p1, Landroid/support/v4/a/av;->c:Ljava/lang/CharSequence;

    iget-object v4, p1, Landroid/support/v4/a/av;->d:Landroid/app/PendingIntent;

    iget-object v5, p1, Landroid/support/v4/a/av;->e:Landroid/app/PendingIntent;

    .line 1027
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 1028
    iput-object v5, v0, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    .line 561
    iget v1, p1, Landroid/support/v4/a/av;->j:I

    if-lez v1, :cond_0

    .line 562
    iget v1, v0, Landroid/app/Notification;->flags:I

    or-int/lit16 v1, v1, 0x80

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 564
    :cond_0
    return-object v0
.end method
