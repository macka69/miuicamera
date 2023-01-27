.class final enum Ljava8/util/stream/StreamOpFlag;
.super Ljava/lang/Enum;
.source "StreamOpFlag.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava8/util/stream/StreamOpFlag$MaskBuilder;,
        Ljava8/util/stream/StreamOpFlag$Type;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ljava8/util/stream/StreamOpFlag;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ljava8/util/stream/StreamOpFlag;

.field private static final CLEAR_BITS:I = 0x2

.field public static final enum DISTINCT:Ljava8/util/stream/StreamOpFlag;

.field private static final FLAG_MASK:I

.field private static final FLAG_MASK_IS:I

.field private static final FLAG_MASK_NOT:I

.field static final INITIAL_OPS_VALUE:I

.field static final IS_DISTINCT:I

.field static final IS_ORDERED:I

.field static final IS_SHORT_CIRCUIT:I

.field static final IS_SIZED:I

.field static final IS_SORTED:I

.field static final NOT_DISTINCT:I

.field static final NOT_ORDERED:I

.field static final NOT_SIZED:I

.field static final NOT_SORTED:I

.field static final OP_MASK:I

.field public static final enum ORDERED:Ljava8/util/stream/StreamOpFlag;

.field private static final PRESERVE_BITS:I = 0x3

.field private static final SET_BITS:I = 0x1

.field public static final enum SHORT_CIRCUIT:Ljava8/util/stream/StreamOpFlag;

.field public static final enum SIZED:Ljava8/util/stream/StreamOpFlag;

.field public static final enum SORTED:Ljava8/util/stream/StreamOpFlag;

.field static final SPLITERATOR_CHARACTERISTICS_MASK:I

.field static final STREAM_MASK:I

.field static final TERMINAL_OP_MASK:I

.field static final UPSTREAM_TERMINAL_OP_MASK:I


# instance fields
.field private final bitPosition:I

.field private final clear:I

.field private final maskTable:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava8/util/stream/StreamOpFlag$Type;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final preserve:I

.field private final set:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Ljava8/util/stream/StreamOpFlag;

    sget-object v1, Ljava8/util/stream/StreamOpFlag$Type;->SPLITERATOR:Ljava8/util/stream/StreamOpFlag$Type;

    invoke-static {v1}, Ljava8/util/stream/StreamOpFlag;->set(Ljava8/util/stream/StreamOpFlag$Type;)Ljava8/util/stream/StreamOpFlag$MaskBuilder;

    move-result-object v1

    sget-object v2, Ljava8/util/stream/StreamOpFlag$Type;->STREAM:Ljava8/util/stream/StreamOpFlag$Type;

    invoke-virtual {v1, v2}, Ljava8/util/stream/StreamOpFlag$MaskBuilder;->set(Ljava8/util/stream/StreamOpFlag$Type;)Ljava8/util/stream/StreamOpFlag$MaskBuilder;

    move-result-object v1

    sget-object v2, Ljava8/util/stream/StreamOpFlag$Type;->OP:Ljava8/util/stream/StreamOpFlag$Type;

    invoke-virtual {v1, v2}, Ljava8/util/stream/StreamOpFlag$MaskBuilder;->setAndClear(Ljava8/util/stream/StreamOpFlag$Type;)Ljava8/util/stream/StreamOpFlag$MaskBuilder;

    move-result-object v1

    const-string v2, "DISTINCT"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v3, v1}, Ljava8/util/stream/StreamOpFlag;-><init>(Ljava/lang/String;IILjava8/util/stream/StreamOpFlag$MaskBuilder;)V

    sput-object v0, Ljava8/util/stream/StreamOpFlag;->DISTINCT:Ljava8/util/stream/StreamOpFlag;

    new-instance v0, Ljava8/util/stream/StreamOpFlag;

    sget-object v1, Ljava8/util/stream/StreamOpFlag$Type;->SPLITERATOR:Ljava8/util/stream/StreamOpFlag$Type;

    invoke-static {v1}, Ljava8/util/stream/StreamOpFlag;->set(Ljava8/util/stream/StreamOpFlag$Type;)Ljava8/util/stream/StreamOpFlag$MaskBuilder;

    move-result-object v1

    sget-object v2, Ljava8/util/stream/StreamOpFlag$Type;->STREAM:Ljava8/util/stream/StreamOpFlag$Type;

    invoke-virtual {v1, v2}, Ljava8/util/stream/StreamOpFlag$MaskBuilder;->set(Ljava8/util/stream/StreamOpFlag$Type;)Ljava8/util/stream/StreamOpFlag$MaskBuilder;

    move-result-object v1

    sget-object v2, Ljava8/util/stream/StreamOpFlag$Type;->OP:Ljava8/util/stream/StreamOpFlag$Type;

    invoke-virtual {v1, v2}, Ljava8/util/stream/StreamOpFlag$MaskBuilder;->setAndClear(Ljava8/util/stream/StreamOpFlag$Type;)Ljava8/util/stream/StreamOpFlag$MaskBuilder;

    move-result-object v1

    const-string v2, "SORTED"

    const/4 v4, 0x1

    invoke-direct {v0, v2, v4, v4, v1}, Ljava8/util/stream/StreamOpFlag;-><init>(Ljava/lang/String;IILjava8/util/stream/StreamOpFlag$MaskBuilder;)V

    sput-object v0, Ljava8/util/stream/StreamOpFlag;->SORTED:Ljava8/util/stream/StreamOpFlag;

    new-instance v0, Ljava8/util/stream/StreamOpFlag;

    sget-object v1, Ljava8/util/stream/StreamOpFlag$Type;->SPLITERATOR:Ljava8/util/stream/StreamOpFlag$Type;

    invoke-static {v1}, Ljava8/util/stream/StreamOpFlag;->set(Ljava8/util/stream/StreamOpFlag$Type;)Ljava8/util/stream/StreamOpFlag$MaskBuilder;

    move-result-object v1

    sget-object v2, Ljava8/util/stream/StreamOpFlag$Type;->STREAM:Ljava8/util/stream/StreamOpFlag$Type;

    invoke-virtual {v1, v2}, Ljava8/util/stream/StreamOpFlag$MaskBuilder;->set(Ljava8/util/stream/StreamOpFlag$Type;)Ljava8/util/stream/StreamOpFlag$MaskBuilder;

    move-result-object v1

    sget-object v2, Ljava8/util/stream/StreamOpFlag$Type;->OP:Ljava8/util/stream/StreamOpFlag$Type;

    invoke-virtual {v1, v2}, Ljava8/util/stream/StreamOpFlag$MaskBuilder;->setAndClear(Ljava8/util/stream/StreamOpFlag$Type;)Ljava8/util/stream/StreamOpFlag$MaskBuilder;

    move-result-object v1

    sget-object v2, Ljava8/util/stream/StreamOpFlag$Type;->TERMINAL_OP:Ljava8/util/stream/StreamOpFlag$Type;

    invoke-virtual {v1, v2}, Ljava8/util/stream/StreamOpFlag$MaskBuilder;->clear(Ljava8/util/stream/StreamOpFlag$Type;)Ljava8/util/stream/StreamOpFlag$MaskBuilder;

    move-result-object v1

    sget-object v2, Ljava8/util/stream/StreamOpFlag$Type;->UPSTREAM_TERMINAL_OP:Ljava8/util/stream/StreamOpFlag$Type;

    invoke-virtual {v1, v2}, Ljava8/util/stream/StreamOpFlag$MaskBuilder;->clear(Ljava8/util/stream/StreamOpFlag$Type;)Ljava8/util/stream/StreamOpFlag$MaskBuilder;

    move-result-object v1

    const-string v2, "ORDERED"

    const/4 v5, 0x2

    invoke-direct {v0, v2, v5, v5, v1}, Ljava8/util/stream/StreamOpFlag;-><init>(Ljava/lang/String;IILjava8/util/stream/StreamOpFlag$MaskBuilder;)V

    sput-object v0, Ljava8/util/stream/StreamOpFlag;->ORDERED:Ljava8/util/stream/StreamOpFlag;

    new-instance v0, Ljava8/util/stream/StreamOpFlag;

    sget-object v1, Ljava8/util/stream/StreamOpFlag$Type;->SPLITERATOR:Ljava8/util/stream/StreamOpFlag$Type;

    invoke-static {v1}, Ljava8/util/stream/StreamOpFlag;->set(Ljava8/util/stream/StreamOpFlag$Type;)Ljava8/util/stream/StreamOpFlag$MaskBuilder;

    move-result-object v1

    sget-object v2, Ljava8/util/stream/StreamOpFlag$Type;->STREAM:Ljava8/util/stream/StreamOpFlag$Type;

    invoke-virtual {v1, v2}, Ljava8/util/stream/StreamOpFlag$MaskBuilder;->set(Ljava8/util/stream/StreamOpFlag$Type;)Ljava8/util/stream/StreamOpFlag$MaskBuilder;

    move-result-object v1

    sget-object v2, Ljava8/util/stream/StreamOpFlag$Type;->OP:Ljava8/util/stream/StreamOpFlag$Type;

    invoke-virtual {v1, v2}, Ljava8/util/stream/StreamOpFlag$MaskBuilder;->clear(Ljava8/util/stream/StreamOpFlag$Type;)Ljava8/util/stream/StreamOpFlag$MaskBuilder;

    move-result-object v1

    const-string v2, "SIZED"

    const/4 v6, 0x3

    invoke-direct {v0, v2, v6, v6, v1}, Ljava8/util/stream/StreamOpFlag;-><init>(Ljava/lang/String;IILjava8/util/stream/StreamOpFlag$MaskBuilder;)V

    sput-object v0, Ljava8/util/stream/StreamOpFlag;->SIZED:Ljava8/util/stream/StreamOpFlag;

    new-instance v0, Ljava8/util/stream/StreamOpFlag;

    sget-object v1, Ljava8/util/stream/StreamOpFlag$Type;->OP:Ljava8/util/stream/StreamOpFlag$Type;

    invoke-static {v1}, Ljava8/util/stream/StreamOpFlag;->set(Ljava8/util/stream/StreamOpFlag$Type;)Ljava8/util/stream/StreamOpFlag$MaskBuilder;

    move-result-object v1

    sget-object v2, Ljava8/util/stream/StreamOpFlag$Type;->TERMINAL_OP:Ljava8/util/stream/StreamOpFlag$Type;

    invoke-virtual {v1, v2}, Ljava8/util/stream/StreamOpFlag$MaskBuilder;->set(Ljava8/util/stream/StreamOpFlag$Type;)Ljava8/util/stream/StreamOpFlag$MaskBuilder;

    move-result-object v1

    const-string v2, "SHORT_CIRCUIT"

    const/4 v7, 0x4

    const/16 v8, 0xc

    invoke-direct {v0, v2, v7, v8, v1}, Ljava8/util/stream/StreamOpFlag;-><init>(Ljava/lang/String;IILjava8/util/stream/StreamOpFlag$MaskBuilder;)V

    sput-object v0, Ljava8/util/stream/StreamOpFlag;->SHORT_CIRCUIT:Ljava8/util/stream/StreamOpFlag;

    const/4 v1, 0x5

    new-array v1, v1, [Ljava8/util/stream/StreamOpFlag;

    sget-object v2, Ljava8/util/stream/StreamOpFlag;->DISTINCT:Ljava8/util/stream/StreamOpFlag;

    aput-object v2, v1, v3

    sget-object v2, Ljava8/util/stream/StreamOpFlag;->SORTED:Ljava8/util/stream/StreamOpFlag;

    aput-object v2, v1, v4

    sget-object v2, Ljava8/util/stream/StreamOpFlag;->ORDERED:Ljava8/util/stream/StreamOpFlag;

    aput-object v2, v1, v5

    sget-object v2, Ljava8/util/stream/StreamOpFlag;->SIZED:Ljava8/util/stream/StreamOpFlag;

    aput-object v2, v1, v6

    aput-object v0, v1, v7

    sput-object v1, Ljava8/util/stream/StreamOpFlag;->$VALUES:[Ljava8/util/stream/StreamOpFlag;

    sget-object v0, Ljava8/util/stream/StreamOpFlag$Type;->SPLITERATOR:Ljava8/util/stream/StreamOpFlag$Type;

    invoke-static {v0}, Ljava8/util/stream/StreamOpFlag;->createMask(Ljava8/util/stream/StreamOpFlag$Type;)I

    move-result v0

    sput v0, Ljava8/util/stream/StreamOpFlag;->SPLITERATOR_CHARACTERISTICS_MASK:I

    sget-object v0, Ljava8/util/stream/StreamOpFlag$Type;->STREAM:Ljava8/util/stream/StreamOpFlag$Type;

    invoke-static {v0}, Ljava8/util/stream/StreamOpFlag;->createMask(Ljava8/util/stream/StreamOpFlag$Type;)I

    move-result v0

    sput v0, Ljava8/util/stream/StreamOpFlag;->STREAM_MASK:I

    sget-object v0, Ljava8/util/stream/StreamOpFlag$Type;->OP:Ljava8/util/stream/StreamOpFlag$Type;

    invoke-static {v0}, Ljava8/util/stream/StreamOpFlag;->createMask(Ljava8/util/stream/StreamOpFlag$Type;)I

    move-result v0

    sput v0, Ljava8/util/stream/StreamOpFlag;->OP_MASK:I

    sget-object v0, Ljava8/util/stream/StreamOpFlag$Type;->TERMINAL_OP:Ljava8/util/stream/StreamOpFlag$Type;

    invoke-static {v0}, Ljava8/util/stream/StreamOpFlag;->createMask(Ljava8/util/stream/StreamOpFlag$Type;)I

    move-result v0

    sput v0, Ljava8/util/stream/StreamOpFlag;->TERMINAL_OP_MASK:I

    sget-object v0, Ljava8/util/stream/StreamOpFlag$Type;->UPSTREAM_TERMINAL_OP:Ljava8/util/stream/StreamOpFlag$Type;

    invoke-static {v0}, Ljava8/util/stream/StreamOpFlag;->createMask(Ljava8/util/stream/StreamOpFlag$Type;)I

    move-result v0

    sput v0, Ljava8/util/stream/StreamOpFlag;->UPSTREAM_TERMINAL_OP_MASK:I

    invoke-static {}, Ljava8/util/stream/StreamOpFlag;->createFlagMask()I

    move-result v0

    sput v0, Ljava8/util/stream/StreamOpFlag;->FLAG_MASK:I

    sget v0, Ljava8/util/stream/StreamOpFlag;->STREAM_MASK:I

    sput v0, Ljava8/util/stream/StreamOpFlag;->FLAG_MASK_IS:I

    shl-int/lit8 v1, v0, 0x1

    sput v1, Ljava8/util/stream/StreamOpFlag;->FLAG_MASK_NOT:I

    or-int/2addr v0, v1

    sput v0, Ljava8/util/stream/StreamOpFlag;->INITIAL_OPS_VALUE:I

    sget-object v0, Ljava8/util/stream/StreamOpFlag;->DISTINCT:Ljava8/util/stream/StreamOpFlag;

    iget v1, v0, Ljava8/util/stream/StreamOpFlag;->set:I

    sput v1, Ljava8/util/stream/StreamOpFlag;->IS_DISTINCT:I

    iget v0, v0, Ljava8/util/stream/StreamOpFlag;->clear:I

    sput v0, Ljava8/util/stream/StreamOpFlag;->NOT_DISTINCT:I

    sget-object v0, Ljava8/util/stream/StreamOpFlag;->SORTED:Ljava8/util/stream/StreamOpFlag;

    iget v1, v0, Ljava8/util/stream/StreamOpFlag;->set:I

    sput v1, Ljava8/util/stream/StreamOpFlag;->IS_SORTED:I

    iget v0, v0, Ljava8/util/stream/StreamOpFlag;->clear:I

    sput v0, Ljava8/util/stream/StreamOpFlag;->NOT_SORTED:I

    sget-object v0, Ljava8/util/stream/StreamOpFlag;->ORDERED:Ljava8/util/stream/StreamOpFlag;

    iget v1, v0, Ljava8/util/stream/StreamOpFlag;->set:I

    sput v1, Ljava8/util/stream/StreamOpFlag;->IS_ORDERED:I

    iget v0, v0, Ljava8/util/stream/StreamOpFlag;->clear:I

    sput v0, Ljava8/util/stream/StreamOpFlag;->NOT_ORDERED:I

    sget-object v0, Ljava8/util/stream/StreamOpFlag;->SIZED:Ljava8/util/stream/StreamOpFlag;

    iget v1, v0, Ljava8/util/stream/StreamOpFlag;->set:I

    sput v1, Ljava8/util/stream/StreamOpFlag;->IS_SIZED:I

    iget v0, v0, Ljava8/util/stream/StreamOpFlag;->clear:I

    sput v0, Ljava8/util/stream/StreamOpFlag;->NOT_SIZED:I

    sget-object v0, Ljava8/util/stream/StreamOpFlag;->SHORT_CIRCUIT:Ljava8/util/stream/StreamOpFlag;

    iget v0, v0, Ljava8/util/stream/StreamOpFlag;->set:I

    sput v0, Ljava8/util/stream/StreamOpFlag;->IS_SHORT_CIRCUIT:I

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava8/util/stream/StreamOpFlag$MaskBuilder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava8/util/stream/StreamOpFlag$MaskBuilder;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p4}, Ljava8/util/stream/StreamOpFlag$MaskBuilder;->build()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Ljava8/util/stream/StreamOpFlag;->maskTable:Ljava/util/Map;

    const/4 p1, 0x2

    mul-int/2addr p3, p1

    iput p3, p0, Ljava8/util/stream/StreamOpFlag;->bitPosition:I

    const/4 p2, 0x1

    shl-int/2addr p2, p3

    iput p2, p0, Ljava8/util/stream/StreamOpFlag;->set:I

    shl-int/2addr p1, p3

    iput p1, p0, Ljava8/util/stream/StreamOpFlag;->clear:I

    const/4 p1, 0x3

    shl-int/2addr p1, p3

    iput p1, p0, Ljava8/util/stream/StreamOpFlag;->preserve:I

    return-void
.end method

.method static combineOpFlags(II)I
    .locals 1

    invoke-static {p0}, Ljava8/util/stream/StreamOpFlag;->getMask(I)I

    move-result v0

    and-int/2addr p1, v0

    or-int/2addr p0, p1

    return p0
.end method

.method private static createFlagMask()I
    .locals 5

    invoke-static {}, Ljava8/util/stream/StreamOpFlag;->values()[Ljava8/util/stream/StreamOpFlag;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v4, v0, v2

    iget v4, v4, Ljava8/util/stream/StreamOpFlag;->preserve:I

    or-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return v3
.end method

.method private static createMask(Ljava8/util/stream/StreamOpFlag$Type;)I
    .locals 6

    invoke-static {}, Ljava8/util/stream/StreamOpFlag;->values()[Ljava8/util/stream/StreamOpFlag;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v4, v0, v2

    iget-object v5, v4, Ljava8/util/stream/StreamOpFlag;->maskTable:Ljava/util/Map;

    invoke-interface {v5, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget v4, v4, Ljava8/util/stream/StreamOpFlag;->bitPosition:I

    shl-int v4, v5, v4

    or-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return v3
.end method

.method static fromCharacteristics(I)I
    .locals 1

    sget v0, Ljava8/util/stream/StreamOpFlag;->SPLITERATOR_CHARACTERISTICS_MASK:I

    and-int/2addr p0, v0

    return p0
.end method

.method static fromCharacteristics(Ljava8/util/Spliterator;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/Spliterator<",
            "*>;)I"
        }
    .end annotation

    invoke-interface {p0}, Ljava8/util/Spliterator;->characteristics()I

    move-result v0

    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava8/util/Spliterator;->getComparator()Ljava/util/Comparator;

    move-result-object p0

    if-eqz p0, :cond_0

    sget p0, Ljava8/util/stream/StreamOpFlag;->SPLITERATOR_CHARACTERISTICS_MASK:I

    and-int/2addr p0, v0

    and-int/lit8 p0, p0, -0x5

    return p0

    :cond_0
    sget p0, Ljava8/util/stream/StreamOpFlag;->SPLITERATOR_CHARACTERISTICS_MASK:I

    and-int/2addr p0, v0

    return p0
.end method

.method private static getMask(I)I
    .locals 2

    if-nez p0, :cond_0

    sget p0, Ljava8/util/stream/StreamOpFlag;->FLAG_MASK:I

    goto :goto_0

    :cond_0
    sget v0, Ljava8/util/stream/StreamOpFlag;->FLAG_MASK_IS:I

    and-int/2addr v0, p0

    shl-int/lit8 v0, v0, 0x1

    or-int/2addr v0, p0

    sget v1, Ljava8/util/stream/StreamOpFlag;->FLAG_MASK_NOT:I

    and-int/2addr p0, v1

    shr-int/lit8 p0, p0, 0x1

    or-int/2addr p0, v0

    not-int p0, p0

    :goto_0
    return p0
.end method

.method private static set(Ljava8/util/stream/StreamOpFlag$Type;)Ljava8/util/stream/StreamOpFlag$MaskBuilder;
    .locals 3

    new-instance v0, Ljava8/util/stream/StreamOpFlag$MaskBuilder;

    new-instance v1, Ljava/util/EnumMap;

    const-class v2, Ljava8/util/stream/StreamOpFlag$Type;

    invoke-direct {v1, v2}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    invoke-direct {v0, v1}, Ljava8/util/stream/StreamOpFlag$MaskBuilder;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0, p0}, Ljava8/util/stream/StreamOpFlag$MaskBuilder;->set(Ljava8/util/stream/StreamOpFlag$Type;)Ljava8/util/stream/StreamOpFlag$MaskBuilder;

    move-result-object p0

    return-object p0
.end method

.method static toCharacteristics(I)I
    .locals 1

    sget v0, Ljava8/util/stream/StreamOpFlag;->SPLITERATOR_CHARACTERISTICS_MASK:I

    and-int/2addr p0, v0

    return p0
.end method

.method static toStreamFlags(I)I
    .locals 2

    not-int v0, p0

    shr-int/lit8 v0, v0, 0x1

    sget v1, Ljava8/util/stream/StreamOpFlag;->FLAG_MASK_IS:I

    and-int/2addr v0, v1

    and-int/2addr p0, v0

    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Ljava8/util/stream/StreamOpFlag;
    .locals 1

    const-class v0, Ljava8/util/stream/StreamOpFlag;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ljava8/util/stream/StreamOpFlag;

    return-object p0
.end method

.method public static values()[Ljava8/util/stream/StreamOpFlag;
    .locals 1

    sget-object v0, Ljava8/util/stream/StreamOpFlag;->$VALUES:[Ljava8/util/stream/StreamOpFlag;

    invoke-virtual {v0}, [Ljava8/util/stream/StreamOpFlag;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava8/util/stream/StreamOpFlag;

    return-object v0
.end method


# virtual methods
.method canSet(Ljava8/util/stream/StreamOpFlag$Type;)Z
    .locals 0

    iget-object p0, p0, Ljava8/util/stream/StreamOpFlag;->maskTable:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/4 p1, 0x1

    and-int/2addr p0, p1

    if-lez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method clear()I
    .locals 0

    iget p0, p0, Ljava8/util/stream/StreamOpFlag;->clear:I

    return p0
.end method

.method isCleared(I)Z
    .locals 1

    iget v0, p0, Ljava8/util/stream/StreamOpFlag;->preserve:I

    and-int/2addr p1, v0

    iget p0, p0, Ljava8/util/stream/StreamOpFlag;->clear:I

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method isKnown(I)Z
    .locals 1

    iget v0, p0, Ljava8/util/stream/StreamOpFlag;->preserve:I

    and-int/2addr p1, v0

    iget p0, p0, Ljava8/util/stream/StreamOpFlag;->set:I

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method isPreserved(I)Z
    .locals 0

    iget p0, p0, Ljava8/util/stream/StreamOpFlag;->preserve:I

    and-int/2addr p1, p0

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method isStreamFlag()Z
    .locals 1

    iget-object p0, p0, Ljava8/util/stream/StreamOpFlag;->maskTable:Ljava/util/Map;

    sget-object v0, Ljava8/util/stream/StreamOpFlag$Type;->STREAM:Ljava8/util/stream/StreamOpFlag$Type;

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method set()I
    .locals 0

    iget p0, p0, Ljava8/util/stream/StreamOpFlag;->set:I

    return p0
.end method
