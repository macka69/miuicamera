.class Lcom/xiaomi/stat/a/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/xiaomi/stat/a/k;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:[Lcom/xiaomi/stat/a/b;

.field final synthetic b:Lcom/xiaomi/stat/a/c;


# direct methods
.method constructor <init>(Lcom/xiaomi/stat/a/c;[Lcom/xiaomi/stat/a/b;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/stat/a/e;->b:Lcom/xiaomi/stat/a/c;

    iput-object p2, p0, Lcom/xiaomi/stat/a/e;->a:[Lcom/xiaomi/stat/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/xiaomi/stat/a/k;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/stat/a/e;->b:Lcom/xiaomi/stat/a/c;

    iget-object p0, p0, Lcom/xiaomi/stat/a/e;->a:[Lcom/xiaomi/stat/a/b;

    invoke-static {v0, p0}, Lcom/xiaomi/stat/a/c;->a(Lcom/xiaomi/stat/a/c;[Lcom/xiaomi/stat/a/b;)Lcom/xiaomi/stat/a/k;

    move-result-object p0

    return-object p0
.end method

.method public synthetic call()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/xiaomi/stat/a/e;->a()Lcom/xiaomi/stat/a/k;

    move-result-object p0

    return-object p0
.end method
