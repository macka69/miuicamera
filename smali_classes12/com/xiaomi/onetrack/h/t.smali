.class final Lcom/xiaomi/onetrack/h/t;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/xiaomi/onetrack/h/s$a;


# instance fields
.field final synthetic a:Z


# direct methods
.method constructor <init>(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/xiaomi/onetrack/h/t;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/xiaomi/onetrack/h/t;->a:Z

    if-eqz p0, :cond_0

    invoke-static {p1}, Lcom/xiaomi/onetrack/h/s;->a(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_0
    invoke-static {p1}, Lcom/xiaomi/onetrack/h/s;->b(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
