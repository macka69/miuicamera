.class Lcom/xiaomi/onetrack/f/i;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/xiaomi/onetrack/f/h;


# direct methods
.method constructor <init>(Lcom/xiaomi/onetrack/f/h;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/onetrack/f/i;->a:Lcom/xiaomi/onetrack/f/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/onetrack/f/i;->a:Lcom/xiaomi/onetrack/f/h;

    iget-object v0, v0, Lcom/xiaomi/onetrack/f/h;->a:Lcom/xiaomi/onetrack/f/f;

    invoke-static {v0}, Lcom/xiaomi/onetrack/f/f;->a(Lcom/xiaomi/onetrack/f/f;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/onetrack/f/i;->a:Lcom/xiaomi/onetrack/f/h;

    iget-object v0, v0, Lcom/xiaomi/onetrack/f/h;->a:Lcom/xiaomi/onetrack/f/f;

    invoke-static {v0}, Lcom/xiaomi/onetrack/f/f;->b(Lcom/xiaomi/onetrack/f/f;)V

    :cond_0
    iget-object p0, p0, Lcom/xiaomi/onetrack/f/i;->a:Lcom/xiaomi/onetrack/f/h;

    iget-object p0, p0, Lcom/xiaomi/onetrack/f/h;->a:Lcom/xiaomi/onetrack/f/f;

    invoke-static {p0}, Lcom/xiaomi/onetrack/f/f;->a(Lcom/xiaomi/onetrack/f/f;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method
