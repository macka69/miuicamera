.class Lcom/xiaomi/onetrack/a/j;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# instance fields
.field final synthetic a:Lcom/xiaomi/onetrack/a/f;

.field private b:I

.field private c:I

.field private d:J

.field private e:Z

.field private f:Z


# direct methods
.method constructor <init>(Lcom/xiaomi/onetrack/a/f;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/onetrack/a/j;->a:Lcom/xiaomi/onetrack/a/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/xiaomi/onetrack/a/j;->b:I

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 4

    iget v0, p0, Lcom/xiaomi/onetrack/a/j;->c:I

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/xiaomi/onetrack/a/j;->d:J

    sub-long/2addr v0, v2

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object p0, p0, Lcom/xiaomi/onetrack/a/j;->a:Lcom/xiaomi/onetrack/a/f;

    invoke-static {p0, v2, v0, v1}, Lcom/xiaomi/onetrack/a/f;->a(Lcom/xiaomi/onetrack/a/f;Ljava/lang/String;J)V

    sget-boolean p0, Lcom/xiaomi/onetrack/h/q;->a:Z

    if-eqz p0, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onActivityPaused:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OneTrackImp"

    invoke-static {p1, p0}, Lcom/xiaomi/onetrack/h/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/onetrack/a/j;->a:Lcom/xiaomi/onetrack/a/f;

    iget-boolean v1, p0, Lcom/xiaomi/onetrack/a/j;->f:Z

    invoke-static {v0, v1}, Lcom/xiaomi/onetrack/a/f;->a(Lcom/xiaomi/onetrack/a/f;Z)V

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/xiaomi/onetrack/a/j;->c:I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/onetrack/a/j;->d:J

    iget-object v0, p0, Lcom/xiaomi/onetrack/a/j;->a:Lcom/xiaomi/onetrack/a/f;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lcom/xiaomi/onetrack/a/j;->e:Z

    invoke-static {v0, v1, v2}, Lcom/xiaomi/onetrack/a/f;->a(Lcom/xiaomi/onetrack/a/f;Ljava/lang/String;Z)V

    sget-boolean v0, Lcom/xiaomi/onetrack/h/q;->a:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onActivityResumed:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " isAppStart:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p0, Lcom/xiaomi/onetrack/a/j;->e:Z

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OneTrackImp"

    invoke-static {v0, p1}, Lcom/xiaomi/onetrack/h/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/xiaomi/onetrack/a/j;->e:Z

    iget-object p0, p0, Lcom/xiaomi/onetrack/a/j;->a:Lcom/xiaomi/onetrack/a/f;

    invoke-static {p0}, Lcom/xiaomi/onetrack/a/f;->f(Lcom/xiaomi/onetrack/a/f;)V

    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 3

    iget v0, p0, Lcom/xiaomi/onetrack/a/j;->b:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/onetrack/a/j;->a:Lcom/xiaomi/onetrack/a/f;

    invoke-static {v0}, Lcom/xiaomi/onetrack/a/f;->e(Lcom/xiaomi/onetrack/a/f;)Lcom/xiaomi/onetrack/a/d;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/xiaomi/onetrack/a/d;->a(I)V

    iput-boolean v2, p0, Lcom/xiaomi/onetrack/a/j;->e:Z

    iput-boolean v1, p0, Lcom/xiaomi/onetrack/a/j;->f:Z

    invoke-static {}, Lcom/xiaomi/onetrack/h/h;->a()V

    goto :goto_0

    :cond_0
    iput-boolean v1, p0, Lcom/xiaomi/onetrack/a/j;->e:Z

    :goto_0
    iget v0, p0, Lcom/xiaomi/onetrack/a/j;->b:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/xiaomi/onetrack/a/j;->b:I

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onActivityStarted: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OneTrackImp"

    invoke-static {p1, p0}, Lcom/xiaomi/onetrack/h/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 4

    iget v0, p0, Lcom/xiaomi/onetrack/a/j;->b:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/xiaomi/onetrack/a/j;->b:I

    const/4 v2, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/onetrack/a/j;->a:Lcom/xiaomi/onetrack/a/f;

    invoke-static {v0}, Lcom/xiaomi/onetrack/a/f;->e(Lcom/xiaomi/onetrack/a/f;)Lcom/xiaomi/onetrack/a/d;

    move-result-object v0

    const/4 v3, 0x2

    invoke-interface {v0, v3}, Lcom/xiaomi/onetrack/a/d;->a(I)V

    invoke-static {}, Lcom/xiaomi/onetrack/c/g;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/onetrack/a/j;->a:Lcom/xiaomi/onetrack/a/f;

    invoke-static {v0}, Lcom/xiaomi/onetrack/a/f;->g(Lcom/xiaomi/onetrack/a/f;)V

    :cond_0
    iput-boolean v1, p0, Lcom/xiaomi/onetrack/a/j;->f:Z

    iput-boolean v2, p0, Lcom/xiaomi/onetrack/a/j;->e:Z

    goto :goto_0

    :cond_1
    iput-boolean v2, p0, Lcom/xiaomi/onetrack/a/j;->f:Z

    :goto_0
    iget-object v0, p0, Lcom/xiaomi/onetrack/a/j;->a:Lcom/xiaomi/onetrack/a/f;

    iget-boolean p0, p0, Lcom/xiaomi/onetrack/a/j;->f:Z

    invoke-static {v0, p0}, Lcom/xiaomi/onetrack/a/f;->a(Lcom/xiaomi/onetrack/a/f;Z)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onActivityStopped: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OneTrackImp"

    invoke-static {p1, p0}, Lcom/xiaomi/onetrack/h/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
