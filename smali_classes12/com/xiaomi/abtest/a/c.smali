.class Lcom/xiaomi/abtest/a/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/xiaomi/abtest/a/a;


# direct methods
.method constructor <init>(Lcom/xiaomi/abtest/a/a;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/abtest/a/c;->a:Lcom/xiaomi/abtest/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string v0, "abtest"

    invoke-static {v0}, Lcom/xiaomi/onetrack/h/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/onetrack/h/aa;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/xiaomi/abtest/a/c;->a:Lcom/xiaomi/abtest/a/a;

    invoke-static {p0, v0}, Lcom/xiaomi/abtest/a/a;->a(Lcom/xiaomi/abtest/a/a;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
