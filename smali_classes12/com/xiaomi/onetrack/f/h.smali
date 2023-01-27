.class Lcom/xiaomi/onetrack/f/h;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lcom/xiaomi/onetrack/f/f;


# direct methods
.method constructor <init>(Lcom/xiaomi/onetrack/f/f;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/onetrack/f/h;->a:Lcom/xiaomi/onetrack/f/f;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    new-instance p1, Lcom/xiaomi/onetrack/f/i;

    invoke-direct {p1, p0}, Lcom/xiaomi/onetrack/f/i;-><init>(Lcom/xiaomi/onetrack/f/h;)V

    invoke-static {p1}, Lcom/xiaomi/onetrack/h/j;->a(Ljava/lang/Runnable;)V

    return-void
.end method
