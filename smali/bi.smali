.class public final Lbi;
.super Lde;
.source "PG"

# interfaces
.implements Lei;


# static fields
.field public static final f:Lbi;


# instance fields
.field public a:I

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:I

.field public e:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lbi;

    invoke-direct {v0}, Lbi;-><init>()V

    sput-object v0, Lbi;->f:Lbi;

    const-class v1, Lbi;

    invoke-static {v1, v0}, Lde;->a(Ljava/lang/Class;Lde;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lde;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lbi;->b:Ljava/lang/String;

    iput-object v0, p0, Lbi;->c:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lbi;->d:I

    iput v0, p0, Lbi;->e:I

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

    sget-object p0, Lbi;->f:Lbi;

    return-object p0

    :cond_0
    new-instance p0, Lbf;

    invoke-direct {p0}, Lbf;-><init>()V

    return-object p0

    :cond_1
    new-instance p0, Lbi;

    invoke-direct {p0}, Lbi;-><init>()V

    return-object p0

    :cond_2
    const/4 p1, 0x7

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

    invoke-static {}, Lbh;->a()Ldh;

    move-result-object p0

    aput-object p0, p1, p2

    const/4 p0, 0x5

    const-string p2, "e"

    aput-object p2, p1, p0

    const/4 p0, 0x6

    invoke-static {}, Lbh;->a()Ldh;

    move-result-object p2

    aput-object p2, p1, p0

    sget-object p0, Lbi;->f:Lbi;

    const-string p2, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001\u1008\u0000\u0002\u1008\u0001\u0003\u100c\u0002\u0004\u100c\u0003"

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
