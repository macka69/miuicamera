.class Lcom/xiaomi/onetrack/a/p;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/xiaomi/onetrack/a/f;


# direct methods
.method constructor <init>(Lcom/xiaomi/onetrack/a/f;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/onetrack/a/p;->a:Lcom/xiaomi/onetrack/a/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/onetrack/a/p;->a:Lcom/xiaomi/onetrack/a/f;

    invoke-static {p0}, Lcom/xiaomi/onetrack/a/f;->a(Lcom/xiaomi/onetrack/a/f;)Lcom/xiaomi/onetrack/Configuration;

    move-result-object p0

    invoke-static {p0}, Lcom/xiaomi/onetrack/h/s;->a(Lcom/xiaomi/onetrack/Configuration;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/xiaomi/onetrack/h/l;->b(Ljava/lang/String;)V

    return-void
.end method
