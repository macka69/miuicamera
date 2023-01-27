.class final Lgd;
.super Lcs;
.source "PG"


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcs;-><init>([B)V

    return-void
.end method


# virtual methods
.method public final a(Leh;I)Lcq;
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p1

    const/16 v0, 0x6f

    const/4 v1, 0x1

    if-eq p1, v0, :cond_1

    const/16 v0, 0xc27

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "ah"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    move p0, v1

    goto :goto_1

    :cond_1
    const-string p1, "o"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, -0x1

    :goto_1
    const/4 p1, 0x0

    if-eqz p0, :cond_5

    if-eq p0, v1, :cond_3

    return-object p1

    :cond_3
    const p0, 0x9198308

    if-eq p2, p0, :cond_4

    return-object p1

    :cond_4
    sget-object p0, Ls;->a:Lcq;

    return-object p0

    :cond_5
    const p0, 0x9198309

    if-eq p2, p0, :cond_7

    const p0, 0xb706546

    if-eq p2, p0, :cond_6

    return-object p1

    :cond_6
    sget-object p0, Lab;->a:Lcq;

    return-object p0

    :cond_7
    sget-object p0, Lp;->a:Lcq;

    return-object p0
.end method
