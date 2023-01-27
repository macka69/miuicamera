.class final Ljava8/util/ImmutableCollections;
.super Ljava/lang/Object;
.source "ImmutableCollections.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava8/util/ImmutableCollections$MapN;,
        Ljava8/util/ImmutableCollections$Map1;,
        Ljava8/util/ImmutableCollections$AbstractImmutableMap;,
        Ljava8/util/ImmutableCollections$SetN;,
        Ljava8/util/ImmutableCollections$Set12;,
        Ljava8/util/ImmutableCollections$AbstractImmutableSet;,
        Ljava8/util/ImmutableCollections$ListN;,
        Ljava8/util/ImmutableCollections$List12;,
        Ljava8/util/ImmutableCollections$SubList;,
        Ljava8/util/ImmutableCollections$ListItr;,
        Ljava8/util/ImmutableCollections$AbstractImmutableList;,
        Ljava8/util/ImmutableCollections$AbstractImmutableCollection;
    }
.end annotation


# static fields
.field static final EMPTY:Ljava/lang/Object;

.field static final EMPTY_LIST:Ljava8/util/ImmutableCollections$ListN;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava8/util/ImmutableCollections$ListN<",
            "*>;"
        }
    .end annotation
.end field

.field static final EMPTY_MAP:Ljava8/util/ImmutableCollections$MapN;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava8/util/ImmutableCollections$MapN<",
            "**>;"
        }
    .end annotation
.end field

.field static final EMPTY_SET:Ljava8/util/ImmutableCollections$SetN;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava8/util/ImmutableCollections$SetN<",
            "*>;"
        }
    .end annotation
.end field

.field static final EXPAND_FACTOR:I = 0x2

.field static final REVERSE:Z

.field static final SALT32L:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const-wide v2, 0x243f6a8885a308d3L

    mul-long/2addr v0, v2

    const/16 v2, 0x10

    shr-long/2addr v0, v2

    long-to-int v0, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    sput-wide v0, Ljava8/util/ImmutableCollections;->SALT32L:J

    const-wide/16 v2, 0x1

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    sput-boolean v0, Ljava8/util/ImmutableCollections;->REVERSE:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Ljava8/util/ImmutableCollections;->EMPTY:Ljava/lang/Object;

    new-instance v0, Ljava8/util/ImmutableCollections$ListN;

    new-array v2, v1, [Ljava/lang/Object;

    invoke-direct {v0, v2}, Ljava8/util/ImmutableCollections$ListN;-><init>([Ljava/lang/Object;)V

    sput-object v0, Ljava8/util/ImmutableCollections;->EMPTY_LIST:Ljava8/util/ImmutableCollections$ListN;

    new-instance v0, Ljava8/util/ImmutableCollections$SetN;

    new-array v2, v1, [Ljava/lang/Object;

    invoke-direct {v0, v2}, Ljava8/util/ImmutableCollections$SetN;-><init>([Ljava/lang/Object;)V

    sput-object v0, Ljava8/util/ImmutableCollections;->EMPTY_SET:Ljava8/util/ImmutableCollections$SetN;

    new-instance v0, Ljava8/util/ImmutableCollections$MapN;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {v0, v1}, Ljava8/util/ImmutableCollections$MapN;-><init>([Ljava/lang/Object;)V

    sput-object v0, Ljava8/util/ImmutableCollections;->EMPTY_MAP:Ljava8/util/ImmutableCollections$MapN;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static floorMod(II)I
    .locals 1

    rem-int/2addr p0, p1

    xor-int v0, p0, p1

    if-gez v0, :cond_0

    if-eqz p0, :cond_0

    add-int/2addr p0, p1

    :cond_0
    return p0
.end method

.method static listCopy(Ljava/util/Collection;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "+TE;>;)",
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation

    instance-of v0, p0, Ljava8/util/ImmutableCollections$AbstractImmutableList;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava8/util/ImmutableCollections$SubList;

    if-eq v0, v1, :cond_0

    check-cast p0, Ljava/util/List;

    return-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava8/util/Lists;->of([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static rangeCheckForAdd(II)V
    .locals 3

    if-ltz p0, :cond_0

    if-gt p0, p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", Size: "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static uoe()Ljava/lang/UnsupportedOperationException;
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    return-object v0
.end method
