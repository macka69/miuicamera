.class Lcom/xiaomi/onetrack/a/x;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/xiaomi/onetrack/a/f;


# direct methods
.method constructor <init>(Lcom/xiaomi/onetrack/a/f;Z)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/onetrack/a/x;->b:Lcom/xiaomi/onetrack/a/f;

    iput-boolean p2, p0, Lcom/xiaomi/onetrack/a/x;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/onetrack/a/x;->b:Lcom/xiaomi/onetrack/a/f;

    invoke-static {v0}, Lcom/xiaomi/onetrack/a/f;->d(Lcom/xiaomi/onetrack/a/f;)Lcom/xiaomi/onetrack/h/w;

    move-result-object v0

    iget-boolean v1, p0, Lcom/xiaomi/onetrack/a/x;->a:Z

    invoke-virtual {v0, v1}, Lcom/xiaomi/onetrack/h/w;->a(Z)V

    iget-object v0, p0, Lcom/xiaomi/onetrack/a/x;->b:Lcom/xiaomi/onetrack/a/f;

    invoke-static {v0}, Lcom/xiaomi/onetrack/a/f;->a(Lcom/xiaomi/onetrack/a/f;)Lcom/xiaomi/onetrack/Configuration;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/onetrack/h/s;->a(Lcom/xiaomi/onetrack/Configuration;)Ljava/lang/String;

    move-result-object v0

    iget-boolean p0, p0, Lcom/xiaomi/onetrack/a/x;->a:Z

    invoke-static {v0, p0}, Lcom/xiaomi/onetrack/h/ab;->a(Ljava/lang/String;Z)V

    return-void
.end method
