.class Lcom/xiaomi/onetrack/a/s;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/xiaomi/onetrack/a/f;


# direct methods
.method constructor <init>(Lcom/xiaomi/onetrack/a/f;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/onetrack/a/s;->b:Lcom/xiaomi/onetrack/a/f;

    iput-object p2, p0, Lcom/xiaomi/onetrack/a/s;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/xiaomi/onetrack/h/p;->a()Lcom/xiaomi/onetrack/h/p;

    move-result-object v0

    iget-object p0, p0, Lcom/xiaomi/onetrack/a/s;->a:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/xiaomi/onetrack/h/p;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setInstanceId error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "OneTrackImp"

    invoke-static {v0, p0}, Lcom/xiaomi/onetrack/h/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
