.class public final Laa;
.super Lde;
.source "PG"

# interfaces
.implements Lei;


# static fields
.field public static final e:Laa;


# instance fields
.field public a:I

.field public b:Lz;

.field public c:Lx;

.field public d:I

.field private f:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Laa;

    invoke-direct {v0}, Laa;-><init>()V

    sput-object v0, Laa;->e:Laa;

    const-class v1, Laa;

    invoke-static {v1, v0}, Lde;->a(Ljava/lang/Class;Lde;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lde;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Laa;->d:I

    return-void
.end method


# virtual methods
.method protected final a(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 3

    add-int/lit8 p1, p1, -0x1

    const/4 p0, 0x1

    if-eqz p1, :cond_4

    if-eq p1, p0, :cond_3

    const/4 p2, 0x4

    const/4 v0, 0x3

    const/4 v1, 0x2

    if-eq p1, v1, :cond_2

    if-eq p1, v0, :cond_1

    if-eq p1, p2, :cond_0

    sget-object p0, Laa;->e:Laa;

    return-object p0

    :cond_0
    new-instance p0, Lt;

    invoke-direct {p0}, Lt;-><init>()V

    return-object p0

    :cond_1
    new-instance p0, Laa;

    invoke-direct {p0}, Laa;-><init>()V

    return-object p0

    :cond_2
    new-array p1, p2, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v2, "f"

    aput-object v2, p1, p2

    const-string p2, "a"

    aput-object p2, p1, p0

    const-string p0, "b"

    aput-object p0, p1, v1

    const-string p0, "c"

    aput-object p0, p1, v0

    sget-object p0, Laa;->e:Laa;

    const-string p2, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u1004\u0000\u0002\u1009\u0001\u0003\u1009\u0002"

    invoke-static {p0, p2, p1}, Lde;->a(Leh;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_3
    const/4 p0, 0x0

    return-object p0

    :cond_4
    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0
.end method
