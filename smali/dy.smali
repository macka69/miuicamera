.class final Ldy;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lef;


# instance fields
.field private final a:[Lef;


# direct methods
.method public varargs constructor <init>([Lef;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldy;->a:[Lef;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Class;)Z
    .locals 3

    iget-object p0, p0, Ldy;->a:[Lef;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x2

    if-ge v1, v2, :cond_1

    aget-object v2, p0, v1

    invoke-interface {v2, p1}, Lef;->a(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    return v0
.end method

.method public final b(Ljava/lang/Class;)Lee;
    .locals 3

    iget-object p0, p0, Ldy;->a:[Lef;

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x2

    if-lt v0, v1, :cond_1

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "No factory is available for message type: "

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_1
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    aget-object v1, p0, v0

    invoke-interface {v1, p1}, Lef;->a(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-interface {v1, p1}, Lef;->b(Ljava/lang/Class;)Lee;

    move-result-object p0

    return-object p0
.end method
