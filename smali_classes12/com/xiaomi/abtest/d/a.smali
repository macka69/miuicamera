.class public Lcom/xiaomi/abtest/d/a;
.super Ljava/lang/Object;


# static fields
.field public static final a:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x10

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/xiaomi/abtest/d/a;->a:[I

    return-void

    :array_0
    .array-data 4
        0x65
        0x83
        0x521
        0x334b
        0x200f1
        0x14096b
        0xc85e31
        0x1f
        0x7d3aded
        0xc85e33
        0x7
        0x11
        0xab
        0x89
        0x2803
        0xd
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a([BII)I
    .locals 7

    and-int/lit8 v0, p1, -0x4

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const v3, 0x1b873593

    const v4, -0x3361d2af    # -8.2930312E7f

    if-ge v2, v0, :cond_0

    aget-byte v5, p0, v2

    and-int/lit16 v5, v5, 0xff

    add-int/lit8 v6, v2, 0x1

    aget-byte v6, p0, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v5, v6

    add-int/lit8 v6, v2, 0x2

    aget-byte v6, p0, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x10

    or-int/2addr v5, v6

    add-int/lit8 v6, v2, 0x3

    aget-byte v6, p0, v6

    shl-int/lit8 v6, v6, 0x18

    or-int/2addr v5, v6

    mul-int/2addr v5, v4

    shl-int/lit8 v4, v5, 0xf

    ushr-int/lit8 v5, v5, 0x11

    or-int/2addr v4, v5

    mul-int/2addr v4, v3

    xor-int/2addr p2, v4

    shl-int/lit8 v3, p2, 0xd

    ushr-int/lit8 p2, p2, 0x13

    or-int/2addr p2, v3

    mul-int/lit8 p2, p2, 0x5

    const v3, -0x19ab949c

    add-int/2addr p2, v3

    add-int/lit8 v2, v2, 0x4

    goto :goto_0

    :cond_0
    and-int/lit8 v2, p1, 0x3

    const/4 v5, 0x1

    if-eq v2, v5, :cond_3

    const/4 v5, 0x2

    if-eq v2, v5, :cond_2

    const/4 v1, 0x3

    if-eq v2, v1, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v0, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    :cond_2
    add-int/lit8 v2, v0, 0x1

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    :cond_3
    aget-byte p0, p0, v0

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, v1

    mul-int/2addr p0, v4

    shl-int/lit8 v0, p0, 0xf

    ushr-int/lit8 p0, p0, 0x11

    or-int/2addr p0, v0

    mul-int/2addr p0, v3

    xor-int/2addr p2, p0

    :goto_1
    xor-int p0, p2, p1

    ushr-int/lit8 p1, p0, 0x10

    xor-int/2addr p0, p1

    const p1, -0x7a143595

    mul-int/2addr p0, p1

    ushr-int/lit8 p1, p0, 0xd

    xor-int/2addr p0, p1

    const p1, -0x3d4d51cb

    mul-int/2addr p0, p1

    ushr-int/lit8 p1, p0, 0x10

    xor-int/2addr p0, p1

    const p1, 0x7fffffff

    and-int/2addr p0, p1

    return p0
.end method
