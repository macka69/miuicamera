.class public final Lz;
.super Lde;
.source "PG"

# interfaces
.implements Lei;


# static fields
.field public static final f:Lz;


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field public e:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lz;

    invoke-direct {v0}, Lz;-><init>()V

    sput-object v0, Lz;->f:Lz;

    const-class v1, Lz;

    invoke-static {v1, v0}, Lde;->a(Ljava/lang/Class;Lde;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lde;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 4

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

    sget-object p0, Lz;->f:Lz;

    return-object p0

    :cond_0
    new-instance p0, Ly;

    invoke-direct {p0}, Ly;-><init>()V

    return-object p0

    :cond_1
    new-instance p0, Lz;

    invoke-direct {p0}, Lz;-><init>()V

    return-object p0

    :cond_2
    const/4 p1, 0x5

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "a"

    aput-object v3, p1, v2

    const-string v2, "b"

    aput-object v2, p1, p0

    const-string p0, "c"

    aput-object p0, p1, v1

    const-string p0, "d"

    aput-object p0, p1, v0

    const-string p0, "e"

    aput-object p0, p1, p2

    sget-object p0, Lz;->f:Lz;

    const-string p2, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001\u1004\u0000\u0002\u1004\u0001\u0003\u1004\u0002\u0004\u1004\u0003"

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
