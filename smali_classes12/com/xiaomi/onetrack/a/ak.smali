.class Lcom/xiaomi/onetrack/a/ak;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic a:Lcom/xiaomi/onetrack/a/aj;


# direct methods
.method constructor <init>(Lcom/xiaomi/onetrack/a/aj;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/onetrack/a/ak;->a:Lcom/xiaomi/onetrack/a/aj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    iget-object p1, p0, Lcom/xiaomi/onetrack/a/ak;->a:Lcom/xiaomi/onetrack/a/aj;

    invoke-static {p1}, Lcom/xiaomi/onetrack/a/aj;->a(Lcom/xiaomi/onetrack/a/aj;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/onetrack/a/ak;->a:Lcom/xiaomi/onetrack/a/aj;

    invoke-static {v0}, Lcom/xiaomi/onetrack/a/aj;->b(Lcom/xiaomi/onetrack/a/aj;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/xiaomi/onetrack/a/ak;->a:Lcom/xiaomi/onetrack/a/aj;

    invoke-static {v0}, Lcom/xiaomi/onetrack/a/aj;->c(Lcom/xiaomi/onetrack/a/aj;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/xiaomi/onetrack/a/ak;->a:Lcom/xiaomi/onetrack/a/aj;

    invoke-static {p2}, Lcom/miui/analytics/ITrack$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/analytics/ITrack;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/xiaomi/onetrack/a/aj;->a(Lcom/xiaomi/onetrack/a/aj;Lcom/miui/analytics/ITrack;)Lcom/miui/analytics/ITrack;

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/xiaomi/onetrack/a/ak;->a:Lcom/xiaomi/onetrack/a/aj;

    invoke-static {p1}, Lcom/xiaomi/onetrack/a/aj;->d(Lcom/xiaomi/onetrack/a/aj;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onServiceConnected  mConnecting "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/xiaomi/onetrack/a/ak;->a:Lcom/xiaomi/onetrack/a/aj;

    invoke-static {p2}, Lcom/xiaomi/onetrack/a/aj;->b(Lcom/xiaomi/onetrack/a/aj;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " mIOneTrackService "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/xiaomi/onetrack/a/ak;->a:Lcom/xiaomi/onetrack/a/aj;

    invoke-static {p0}, Lcom/xiaomi/onetrack/a/aj;->e(Lcom/xiaomi/onetrack/a/aj;)Lcom/miui/analytics/ITrack;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " pid:"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " tid:"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ServiceConnectManager"

    invoke-static {p1, p0}, Lcom/xiaomi/onetrack/h/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    iget-object p1, p0, Lcom/xiaomi/onetrack/a/ak;->a:Lcom/xiaomi/onetrack/a/aj;

    invoke-static {p1}, Lcom/xiaomi/onetrack/a/aj;->a(Lcom/xiaomi/onetrack/a/aj;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/onetrack/a/ak;->a:Lcom/xiaomi/onetrack/a/aj;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xiaomi/onetrack/a/aj;->a(Lcom/xiaomi/onetrack/a/aj;Lcom/miui/analytics/ITrack;)Lcom/miui/analytics/ITrack;

    iget-object v0, p0, Lcom/xiaomi/onetrack/a/ak;->a:Lcom/xiaomi/onetrack/a/aj;

    invoke-static {v0}, Lcom/xiaomi/onetrack/a/aj;->b(Lcom/xiaomi/onetrack/a/aj;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/xiaomi/onetrack/a/ak;->a:Lcom/xiaomi/onetrack/a/aj;

    invoke-static {v0}, Lcom/xiaomi/onetrack/a/aj;->c(Lcom/xiaomi/onetrack/a/aj;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onServiceDisconnected:  mConnecting "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/xiaomi/onetrack/a/ak;->a:Lcom/xiaomi/onetrack/a/aj;

    invoke-static {v0}, Lcom/xiaomi/onetrack/a/aj;->b(Lcom/xiaomi/onetrack/a/aj;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " mIOneTrackService "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/xiaomi/onetrack/a/ak;->a:Lcom/xiaomi/onetrack/a/aj;

    invoke-static {p0}, Lcom/xiaomi/onetrack/a/aj;->e(Lcom/xiaomi/onetrack/a/aj;)Lcom/miui/analytics/ITrack;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ServiceConnectManager"

    invoke-static {p1, p0}, Lcom/xiaomi/onetrack/h/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
