.class public final Ldj;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field static final a:Ljava/nio/charset/Charset;

.field public static final b:[B


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Ldj;->a:Ljava/nio/charset/Charset;

    const-string v0, "ISO-8859-1"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    const/4 v0, 0x0

    new-array v1, v0, [B

    sput-object v1, Ldj;->b:[B

    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    sget-object v1, Ldj;->b:[B

    array-length v1, v1

    new-instance v2, Lcl;

    invoke-direct {v2, v0, v1}, Lcl;-><init>(II)V

    :try_start_0
    iget v3, v2, Lcl;->e:I

    if-gt v1, v3, :cond_1

    iput v1, v2, Lcl;->e:I

    iget v3, v2, Lcl;->a:I

    iget v4, v2, Lcl;->b:I

    add-int/2addr v3, v4

    iput v3, v2, Lcl;->a:I

    if-le v3, v1, :cond_0

    sub-int v0, v3, v1

    iput v0, v2, Lcl;->b:I

    sub-int/2addr v3, v0

    iput v3, v2, Lcl;->a:I

    return-void

    :cond_0
    iput v0, v2, Lcl;->b:I

    return-void

    :cond_1
    invoke-static {}, Ldl;->a()Ldl;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Ldl; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method static a(I[BII)I
    .locals 2

    move v0, p2

    :goto_0
    add-int v1, p2, p3

    if-ge v0, v1, :cond_0

    mul-int/lit8 p0, p0, 0x1f

    aget-byte v1, p1, v0

    add-int/2addr p0, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return p0
.end method

.method public static a(J)I
    .locals 2

    const/16 v0, 0x20

    ushr-long v0, p0, v0

    xor-long/2addr p0, v0

    long-to-int p0, p0

    return p0
.end method

.method public static a(Z)I
    .locals 0

    if-eqz p0, :cond_0

    const/16 p0, 0x4cf

    return p0

    :cond_0
    const/16 p0, 0x4d5

    return p0
.end method

.method static a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p0, Leh;

    invoke-interface {p0}, Leh;->b()Leg;

    move-result-object p0

    check-cast p1, Leh;

    invoke-interface {p0, p1}, Leg;->a(Leh;)Leg;

    move-result-object p0

    invoke-interface {p0}, Leg;->g()Leh;

    move-result-object p0

    return-object p0
.end method

.method static a(Ljava/lang/Object;)V
    .locals 0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    const/4 p0, 0x0

    throw p0
.end method

.method static a(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static a(Leh;)Z
    .locals 1

    instance-of v0, p0, Lbv;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    check-cast p0, Lbv;

    const/4 p0, 0x0

    throw p0
.end method

.method public static a([B)Z
    .locals 3

    sget-object v0, Lfx;->a:Lft;

    array-length v1, p0

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2, v1}, Lft;->a([BII)Z

    move-result p0

    return p0
.end method

.method public static b([B)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/String;

    sget-object v1, Ldj;->a:Ljava/nio/charset/Charset;

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0
.end method

.method public static c([B)I
    .locals 2

    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {v0, p0, v1, v0}, Ldj;->a(I[BII)I

    move-result p0

    if-eqz p0, :cond_0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method
