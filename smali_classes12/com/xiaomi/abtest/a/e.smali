.class Lcom/xiaomi/abtest/a/e;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# instance fields
.field final synthetic a:Lcom/xiaomi/abtest/a/a;

.field private b:I

.field private c:Z


# direct methods
.method constructor <init>(Lcom/xiaomi/abtest/a/a;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/abtest/a/e;->a:Lcom/xiaomi/abtest/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/xiaomi/abtest/a/e;->b:I

    iput-boolean p1, p0, Lcom/xiaomi/abtest/a/e;->c:Z

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
    .locals 0

    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 1

    iget p1, p0, Lcom/xiaomi/abtest/a/e;->b:I

    const/4 v0, 0x1

    add-int/2addr p1, v0

    iput p1, p0, Lcom/xiaomi/abtest/a/e;->b:I

    if-lt p1, v0, :cond_0

    iget-boolean p1, p0, Lcom/xiaomi/abtest/a/e;->c:Z

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/xiaomi/abtest/a/e;->a:Lcom/xiaomi/abtest/a/a;

    invoke-static {p0, v0}, Lcom/xiaomi/abtest/a/a;->a(Lcom/xiaomi/abtest/a/a;Z)Z

    :cond_0
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 0

    invoke-virtual {p1}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result p1

    iput-boolean p1, p0, Lcom/xiaomi/abtest/a/e;->c:Z

    iget p1, p0, Lcom/xiaomi/abtest/a/e;->b:I

    if-lez p1, :cond_0

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/xiaomi/abtest/a/e;->b:I

    :cond_0
    iget p1, p0, Lcom/xiaomi/abtest/a/e;->b:I

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/xiaomi/abtest/a/e;->c:Z

    if-nez p1, :cond_1

    iget-object p0, p0, Lcom/xiaomi/abtest/a/e;->a:Lcom/xiaomi/abtest/a/a;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/xiaomi/abtest/a/a;->a(Lcom/xiaomi/abtest/a/a;Z)Z

    :cond_1
    return-void
.end method
