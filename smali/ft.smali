.class abstract Lft;
.super Ljava/lang/Object;
.source "PG"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(Ljava/lang/CharSequence;[BII)I
.end method

.method final a([BII)Z
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lft;->c([BII)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public abstract b([BII)Ljava/lang/String;
.end method

.method public abstract c([BII)I
.end method
