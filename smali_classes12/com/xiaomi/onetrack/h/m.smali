.class final Lcom/xiaomi/onetrack/h/m;
.super Landroid/util/LruCache;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/LruCache<",
        "Ljava/lang/String;",
        "Lcom/xiaomi/onetrack/h/l$a;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/util/LruCache;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/String;Lcom/xiaomi/onetrack/h/l$a;)I
    .locals 0

    if-eqz p2, :cond_0

    iget-object p0, p2, Lcom/xiaomi/onetrack/h/l$a;->a:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    iget-object p0, p2, Lcom/xiaomi/onetrack/h/l$a;->a:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected synthetic sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Ljava/lang/String;

    check-cast p2, Lcom/xiaomi/onetrack/h/l$a;

    invoke-virtual {p0, p1, p2}, Lcom/xiaomi/onetrack/h/m;->a(Ljava/lang/String;Lcom/xiaomi/onetrack/h/l$a;)I

    move-result p0

    return p0
.end method
