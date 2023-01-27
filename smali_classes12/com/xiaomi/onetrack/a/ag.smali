.class Lcom/xiaomi/onetrack/a/ag;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/xiaomi/onetrack/a/af;


# direct methods
.method constructor <init>(Lcom/xiaomi/onetrack/a/af;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/onetrack/a/ag;->a:Lcom/xiaomi/onetrack/a/af;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lcom/xiaomi/onetrack/c/m;->a()Lcom/xiaomi/onetrack/c/m;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/xiaomi/onetrack/c/m;->a(IZ)V

    invoke-static {}, Lcom/xiaomi/onetrack/c/m;->a()Lcom/xiaomi/onetrack/c/m;

    move-result-object p0

    invoke-virtual {p0, v1, v1}, Lcom/xiaomi/onetrack/c/m;->a(IZ)V

    return-void
.end method
