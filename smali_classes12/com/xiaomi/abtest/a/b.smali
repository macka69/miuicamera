.class Lcom/xiaomi/abtest/a/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/xiaomi/abtest/a/a;


# direct methods
.method constructor <init>(Lcom/xiaomi/abtest/a/a;I)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/abtest/a/b;->b:Lcom/xiaomi/abtest/a/a;

    iput p2, p0, Lcom/xiaomi/abtest/a/b;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/abtest/a/b;->b:Lcom/xiaomi/abtest/a/a;

    invoke-static {v0}, Lcom/xiaomi/abtest/a/a;->a(Lcom/xiaomi/abtest/a/a;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/abtest/a/b;->b:Lcom/xiaomi/abtest/a/a;

    invoke-static {v0}, Lcom/xiaomi/abtest/a/a;->b(Lcom/xiaomi/abtest/a/a;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/abtest/a/b;->b:Lcom/xiaomi/abtest/a/a;

    invoke-static {v0}, Lcom/xiaomi/abtest/a/a;->c(Lcom/xiaomi/abtest/a/a;)V

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/abtest/a/b;->b:Lcom/xiaomi/abtest/a/a;

    invoke-static {v0}, Lcom/xiaomi/abtest/a/a;->d(Lcom/xiaomi/abtest/a/a;)Landroid/os/Handler;

    move-result-object v0

    iget v1, p0, Lcom/xiaomi/abtest/a/b;->a:I

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v1, v1

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
