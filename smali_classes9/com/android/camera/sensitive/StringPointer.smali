.class public Lcom/android/camera/sensitive/StringPointer;
.super Ljava/lang/Object;
.source "StringPointer.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/CharSequence;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;",
        "Ljava/lang/CharSequence;",
        "Ljava/lang/Comparable<",
        "Lcom/android/camera/sensitive/StringPointer;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/camera/sensitive/StringPointer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private hash:I

.field protected final length:I

.field protected final offset:I

.field protected final value:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/camera/sensitive/StringPointer$1;

    invoke-direct {v0}, Lcom/android/camera/sensitive/StringPointer$1;-><init>()V

    sput-object v0, Lcom/android/camera/sensitive/StringPointer;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/sensitive/StringPointer;->hash:I

    invoke-virtual {p1}, Landroid/os/Parcel;->createCharArray()[C

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/sensitive/StringPointer;->value:[C

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/camera/sensitive/StringPointer;->offset:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/camera/sensitive/StringPointer;->length:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/android/camera/sensitive/StringPointer;->hash:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/sensitive/StringPointer;->hash:I

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/sensitive/StringPointer;->value:[C

    iput v0, p0, Lcom/android/camera/sensitive/StringPointer;->offset:I

    array-length p1, p1

    iput p1, p0, Lcom/android/camera/sensitive/StringPointer;->length:I

    return-void
.end method

.method public constructor <init>([CII)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/sensitive/StringPointer;->hash:I

    iput-object p1, p0, Lcom/android/camera/sensitive/StringPointer;->value:[C

    iput p2, p0, Lcom/android/camera/sensitive/StringPointer;->offset:I

    iput p3, p0, Lcom/android/camera/sensitive/StringPointer;->length:I

    return-void
.end method


# virtual methods
.method public charAt(I)C
    .locals 1

    iget-object v0, p0, Lcom/android/camera/sensitive/StringPointer;->value:[C

    iget p0, p0, Lcom/android/camera/sensitive/StringPointer;->offset:I

    add-int/2addr p0, p1

    aget-char p0, v0, p0

    return p0
.end method

.method public compareTo(Lcom/android/camera/sensitive/StringPointer;)I
    .locals 8

    iget v0, p0, Lcom/android/camera/sensitive/StringPointer;->length:I

    iget v1, p1, Lcom/android/camera/sensitive/StringPointer;->length:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget-object v3, p0, Lcom/android/camera/sensitive/StringPointer;->value:[C

    iget-object v4, p1, Lcom/android/camera/sensitive/StringPointer;->value:[C

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v2, :cond_1

    iget v6, p0, Lcom/android/camera/sensitive/StringPointer;->offset:I

    add-int/2addr v6, v5

    aget-char v6, v3, v6

    iget v7, p1, Lcom/android/camera/sensitive/StringPointer;->offset:I

    add-int/2addr v7, v5

    aget-char v7, v4, v7

    if-eq v6, v7, :cond_0

    sub-int/2addr v6, v7

    return v6

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/android/camera/sensitive/StringPointer;

    invoke-virtual {p0, p1}, Lcom/android/camera/sensitive/StringPointer;->compareTo(Lcom/android/camera/sensitive/StringPointer;)I

    move-result p0

    return p0
.end method

.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/camera/sensitive/StringPointer;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    check-cast p1, Lcom/android/camera/sensitive/StringPointer;

    iget v1, p0, Lcom/android/camera/sensitive/StringPointer;->length:I

    iget v3, p1, Lcom/android/camera/sensitive/StringPointer;->length:I

    if-ne v1, v3, :cond_3

    iget-object v1, p0, Lcom/android/camera/sensitive/StringPointer;->value:[C

    iget-object v3, p1, Lcom/android/camera/sensitive/StringPointer;->value:[C

    move v4, v2

    :goto_0
    iget v5, p0, Lcom/android/camera/sensitive/StringPointer;->length:I

    if-ge v4, v5, :cond_2

    iget v5, p0, Lcom/android/camera/sensitive/StringPointer;->offset:I

    add-int/2addr v5, v4

    aget-char v5, v1, v5

    iget v6, p1, Lcom/android/camera/sensitive/StringPointer;->offset:I

    add-int/2addr v6, v4

    aget-char v6, v3, v6

    if-eq v5, v6, :cond_1

    return v2

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    return v0

    :cond_3
    return v2
.end method

.method public fill(IIC)V
    .locals 2

    :goto_0
    if-ge p1, p2, :cond_0

    iget-object v0, p0, Lcom/android/camera/sensitive/StringPointer;->value:[C

    iget v1, p0, Lcom/android/camera/sensitive/StringPointer;->offset:I

    add-int/2addr v1, p1

    aput-char p3, v0, v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public hashCode()I
    .locals 4

    iget v0, p0, Lcom/android/camera/sensitive/StringPointer;->hash:I

    if-nez v0, :cond_1

    iget v1, p0, Lcom/android/camera/sensitive/StringPointer;->length:I

    if-lez v1, :cond_1

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lcom/android/camera/sensitive/StringPointer;->length:I

    if-ge v1, v2, :cond_0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/android/camera/sensitive/StringPointer;->value:[C

    iget v3, p0, Lcom/android/camera/sensitive/StringPointer;->offset:I

    add-int/2addr v3, v1

    aget-char v2, v2, v3

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iput v0, p0, Lcom/android/camera/sensitive/StringPointer;->hash:I

    :cond_1
    return v0
.end method

.method public length()I
    .locals 0

    iget p0, p0, Lcom/android/camera/sensitive/StringPointer;->length:I

    return p0
.end method

.method public nextStartsWith(ILcom/android/camera/sensitive/StringPointer;)Z
    .locals 6

    iget v0, p2, Lcom/android/camera/sensitive/StringPointer;->length:I

    iget v1, p0, Lcom/android/camera/sensitive/StringPointer;->length:I

    sub-int/2addr v1, p1

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    return v2

    :cond_0
    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_2

    iget-object v3, p0, Lcom/android/camera/sensitive/StringPointer;->value:[C

    iget v4, p0, Lcom/android/camera/sensitive/StringPointer;->offset:I

    add-int/2addr v4, p1

    add-int/2addr v4, v0

    aget-char v3, v3, v4

    iget-object v4, p2, Lcom/android/camera/sensitive/StringPointer;->value:[C

    iget v5, p2, Lcom/android/camera/sensitive/StringPointer;->offset:I

    add-int/2addr v5, v0

    aget-char v4, v4, v5

    if-eq v3, v4, :cond_1

    return v2

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public nextTwoCharHash(I)I
    .locals 2

    iget-object v0, p0, Lcom/android/camera/sensitive/StringPointer;->value:[C

    iget p0, p0, Lcom/android/camera/sensitive/StringPointer;->offset:I

    add-int v1, p0, p1

    aget-char v1, v0, v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr p0, p1

    add-int/lit8 p0, p0, 0x1

    aget-char p0, v0, p0

    add-int/2addr v1, p0

    return v1
.end method

.method public nextTwoCharMix(I)I
    .locals 2

    iget-object v0, p0, Lcom/android/camera/sensitive/StringPointer;->value:[C

    iget p0, p0, Lcom/android/camera/sensitive/StringPointer;->offset:I

    add-int v1, p0, p1

    aget-char v1, v0, v1

    shl-int/lit8 v1, v1, 0x10

    add-int/2addr p0, p1

    add-int/lit8 p0, p0, 0x1

    aget-char p0, v0, p0

    or-int/2addr p0, v1

    return p0
.end method

.method public subSequence(II)Ljava/lang/CharSequence;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/sensitive/StringPointer;->substring(II)Lcom/android/camera/sensitive/StringPointer;

    move-result-object p0

    return-object p0
.end method

.method public substring(I)Lcom/android/camera/sensitive/StringPointer;
    .locals 3

    new-instance v0, Lcom/android/camera/sensitive/StringPointer;

    iget-object v1, p0, Lcom/android/camera/sensitive/StringPointer;->value:[C

    iget v2, p0, Lcom/android/camera/sensitive/StringPointer;->offset:I

    add-int/2addr v2, p1

    iget p0, p0, Lcom/android/camera/sensitive/StringPointer;->length:I

    sub-int/2addr p0, p1

    invoke-direct {v0, v1, v2, p0}, Lcom/android/camera/sensitive/StringPointer;-><init>([CII)V

    return-object v0
.end method

.method public substring(II)Lcom/android/camera/sensitive/StringPointer;
    .locals 2

    new-instance v0, Lcom/android/camera/sensitive/StringPointer;

    iget-object v1, p0, Lcom/android/camera/sensitive/StringPointer;->value:[C

    iget p0, p0, Lcom/android/camera/sensitive/StringPointer;->offset:I

    add-int/2addr p0, p1

    sub-int/2addr p2, p1

    invoke-direct {v0, v1, p0, p2}, Lcom/android/camera/sensitive/StringPointer;-><init>([CII)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/android/camera/sensitive/StringPointer;->value:[C

    iget v2, p0, Lcom/android/camera/sensitive/StringPointer;->offset:I

    iget p0, p0, Lcom/android/camera/sensitive/StringPointer;->length:I

    invoke-direct {v0, v1, v2, p0}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget-object p2, p0, Lcom/android/camera/sensitive/StringPointer;->value:[C

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeCharArray([C)V

    iget p2, p0, Lcom/android/camera/sensitive/StringPointer;->offset:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/android/camera/sensitive/StringPointer;->length:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p0, p0, Lcom/android/camera/sensitive/StringPointer;->hash:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
