.class Lcom/xiaomi/onetrack/h/y$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/onetrack/h/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field private static final a:Lcom/xiaomi/onetrack/h/y;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/xiaomi/onetrack/h/y;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaomi/onetrack/h/y;-><init>(Lcom/xiaomi/onetrack/h/z;)V

    sput-object v0, Lcom/xiaomi/onetrack/h/y$a;->a:Lcom/xiaomi/onetrack/h/y;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Lcom/xiaomi/onetrack/h/y;
    .locals 1

    sget-object v0, Lcom/xiaomi/onetrack/h/y$a;->a:Lcom/xiaomi/onetrack/h/y;

    return-object v0
.end method
