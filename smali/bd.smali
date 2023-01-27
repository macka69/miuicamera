.class public final Lbd;
.super Lde;
.source "PG"

# interfaces
.implements Lei;


# static fields
.field public static final a:Lbd;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lbd;

    invoke-direct {v0}, Lbd;-><init>()V

    sput-object v0, Lbd;->a:Lbd;

    const-class v1, Lbd;

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
    .locals 0

    add-int/lit8 p1, p1, -0x1

    const/4 p0, 0x1

    if-eqz p1, :cond_4

    const/4 p2, 0x0

    if-eq p1, p0, :cond_3

    const/4 p0, 0x2

    if-eq p1, p0, :cond_2

    const/4 p0, 0x3

    if-eq p1, p0, :cond_1

    const/4 p0, 0x4

    if-eq p1, p0, :cond_0

    sget-object p0, Lbd;->a:Lbd;

    return-object p0

    :cond_0
    new-instance p0, Lbc;

    invoke-direct {p0}, Lbc;-><init>()V

    return-object p0

    :cond_1
    new-instance p0, Lbd;

    invoke-direct {p0}, Lbd;-><init>()V

    return-object p0

    :cond_2
    sget-object p0, Lbd;->a:Lbd;

    const-string p1, "\u0001\u0000"

    invoke-static {p0, p1, p2}, Lde;->a(Leh;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_3
    return-object p2

    :cond_4
    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0
.end method
