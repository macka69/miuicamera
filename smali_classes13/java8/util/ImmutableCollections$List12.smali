.class final Ljava8/util/ImmutableCollections$List12;
.super Ljava8/util/ImmutableCollections$AbstractImmutableList;
.source "ImmutableCollections.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava8/util/ImmutableCollections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "List12"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava8/util/ImmutableCollections$AbstractImmutableList<",
        "TE;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field private final e0:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field private final e1:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava8/util/ImmutableCollections$AbstractImmutableList;-><init>()V

    invoke-static {p1}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Ljava8/util/ImmutableCollections$List12;->e0:Ljava/lang/Object;

    sget-object p1, Ljava8/util/ImmutableCollections;->EMPTY:Ljava/lang/Object;

    iput-object p1, p0, Ljava8/util/ImmutableCollections$List12;->e1:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;TE;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava8/util/ImmutableCollections$AbstractImmutableList;-><init>()V

    invoke-static {p1}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Ljava8/util/ImmutableCollections$List12;->e0:Ljava/lang/Object;

    invoke-static {p2}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Ljava8/util/ImmutableCollections$List12;->e1:Ljava/lang/Object;

    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    new-instance p0, Ljava/io/InvalidObjectException;

    const-string p1, "not serial proxy"

    invoke-direct {p0, p1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 5

    iget-object v0, p0, Ljava8/util/ImmutableCollections$List12;->e1:Ljava/lang/Object;

    sget-object v1, Ljava8/util/ImmutableCollections;->EMPTY:Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava8/util/ColSer;

    new-array v1, v3, [Ljava/lang/Object;

    iget-object p0, p0, Ljava8/util/ImmutableCollections$List12;->e0:Ljava/lang/Object;

    aput-object p0, v1, v2

    invoke-direct {v0, v3, v1}, Ljava8/util/ColSer;-><init>(I[Ljava/lang/Object;)V

    return-object v0

    :cond_0
    new-instance v1, Ljava8/util/ColSer;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget-object p0, p0, Ljava8/util/ImmutableCollections$List12;->e0:Ljava/lang/Object;

    aput-object p0, v4, v2

    aput-object v0, v4, v3

    invoke-direct {v1, v3, v4}, Ljava8/util/ColSer;-><init>(I[Ljava/lang/Object;)V

    return-object v1
.end method


# virtual methods
.method public get(I)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    if-nez p1, :cond_0

    iget-object p0, p0, Ljava8/util/ImmutableCollections$List12;->e0:Ljava/lang/Object;

    return-object p0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Ljava8/util/ImmutableCollections$List12;->e1:Ljava/lang/Object;

    sget-object v1, Ljava8/util/ImmutableCollections;->EMPTY:Ljava/lang/Object;

    if-eq v0, v1, :cond_1

    return-object v0

    :cond_1
    invoke-virtual {p0, p1}, Ljava8/util/ImmutableCollections$AbstractImmutableList;->outOfBounds(I)Ljava/lang/IndexOutOfBoundsException;

    move-result-object p0

    throw p0
.end method

.method public isEmpty()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public size()I
    .locals 1

    iget-object p0, p0, Ljava8/util/ImmutableCollections$List12;->e1:Ljava/lang/Object;

    sget-object v0, Ljava8/util/ImmutableCollections;->EMPTY:Ljava/lang/Object;

    if-eq p0, v0, :cond_0

    const/4 p0, 0x2

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Ljava8/util/ImmutableCollections$List12;->e1:Ljava/lang/Object;

    sget-object v1, Ljava8/util/ImmutableCollections;->EMPTY:Ljava/lang/Object;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    new-array v0, v2, [Ljava/lang/Object;

    iget-object p0, p0, Ljava8/util/ImmutableCollections$List12;->e0:Ljava/lang/Object;

    aput-object p0, v0, v3

    return-object v0

    :cond_0
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object p0, p0, Ljava8/util/ImmutableCollections$List12;->e0:Ljava/lang/Object;

    aput-object p0, v1, v3

    aput-object v0, v1, v2

    return-object v1
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava8/util/ImmutableCollections$List12;->size()I

    move-result v0

    array-length v1, p1

    if-lt v1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    :goto_0
    const/4 v1, 0x0

    iget-object v2, p0, Ljava8/util/ImmutableCollections$List12;->e0:Ljava/lang/Object;

    aput-object v2, p1, v1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const/4 v1, 0x1

    iget-object p0, p0, Ljava8/util/ImmutableCollections$List12;->e1:Ljava/lang/Object;

    aput-object p0, p1, v1

    :cond_1
    array-length p0, p1

    if-le p0, v0, :cond_2

    const/4 p0, 0x0

    aput-object p0, p1, v0

    :cond_2
    return-object p1
.end method
