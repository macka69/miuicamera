.class public final Lah;
.super Ldc;
.source "PG"

# interfaces
.implements Lei;


# static fields
.field public static final b:Lah;


# instance fields
.field public a:I

.field private c:I

.field private e:B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lah;

    invoke-direct {v0}, Lah;-><init>()V

    sput-object v0, Lah;->b:Lah;

    const-class v1, Lah;

    invoke-static {v1, v0}, Lde;->a(Ljava/lang/Class;Lde;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ldc;-><init>()V

    const/4 v0, 0x2

    iput-byte v0, p0, Lah;->e:B

    const/4 v0, 0x1

    iput v0, p0, Lah;->a:I

    return-void
.end method


# virtual methods
.method protected final a(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2

    add-int/lit8 p1, p1, -0x1

    if-eqz p1, :cond_5

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_3

    const/4 p0, 0x3

    const/4 p2, 0x2

    if-eq p1, p2, :cond_2

    if-eq p1, p0, :cond_1

    const/4 p0, 0x4

    if-eq p1, p0, :cond_0

    sget-object p0, Lah;->b:Lah;

    return-object p0

    :cond_0
    new-instance p0, Lag;

    invoke-direct {p0}, Lag;-><init>()V

    return-object p0

    :cond_1
    new-instance p0, Lah;

    invoke-direct {p0}, Lah;-><init>()V

    return-object p0

    :cond_2
    new-array p0, p0, [Ljava/lang/Object;

    const-string p1, "c"

    aput-object p1, p0, v0

    const-string p1, "a"

    aput-object p1, p0, v1

    invoke-static {}, Laf;->a()Ldh;

    move-result-object p1

    aput-object p1, p0, p2

    sget-object p1, Lah;->b:Lah;

    const-string p2, "\u0001\u0001\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u0000\u0001\u100c\u0000"

    invoke-static {p1, p2, p0}, Lde;->a(Leh;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_3
    if-nez p2, :cond_4

    goto :goto_0

    :cond_4
    move v0, v1

    :goto_0
    iput-byte v0, p0, Lah;->e:B

    const/4 p0, 0x0

    return-object p0

    :cond_5
    iget-byte p0, p0, Lah;->e:B

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0
.end method
