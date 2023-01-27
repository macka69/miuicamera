.class Lcom/xiaomi/onetrack/b/g;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/util/ArrayList;

.field final synthetic b:Lcom/xiaomi/onetrack/b/f;


# direct methods
.method constructor <init>(Lcom/xiaomi/onetrack/b/f;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/onetrack/b/g;->b:Lcom/xiaomi/onetrack/b/f;

    iput-object p2, p0, Lcom/xiaomi/onetrack/b/g;->a:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    sget-boolean v0, Lcom/xiaomi/onetrack/h/q;->a:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "update: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/onetrack/b/g;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ConfigDbManager"

    invoke-static {v1, v0}, Lcom/xiaomi/onetrack/h/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/onetrack/b/g;->b:Lcom/xiaomi/onetrack/b/f;

    iget-object p0, p0, Lcom/xiaomi/onetrack/b/g;->a:Ljava/util/ArrayList;

    invoke-static {v0, p0}, Lcom/xiaomi/onetrack/b/f;->a(Lcom/xiaomi/onetrack/b/f;Ljava/util/ArrayList;)V

    return-void
.end method
