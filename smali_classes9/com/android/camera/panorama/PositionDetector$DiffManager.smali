.class Lcom/android/camera/panorama/PositionDetector$DiffManager;
.super Ljava/lang/Object;
.source "PositionDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/panorama/PositionDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DiffManager"
.end annotation


# static fields
.field private static final NUM:I = 0x5


# instance fields
.field private add_num:I

.field private ave:D

.field private index:I

.field private final pos:[D


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    new-array v0, v0, [D

    iput-object v0, p0, Lcom/android/camera/panorama/PositionDetector$DiffManager;->pos:[D

    invoke-virtual {p0}, Lcom/android/camera/panorama/PositionDetector$DiffManager;->clear()V

    return-void
.end method

.method private calc()V
    .locals 5

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    iget v3, p0, Lcom/android/camera/panorama/PositionDetector$DiffManager;->add_num:I

    if-ge v2, v3, :cond_0

    iget-object v3, p0, Lcom/android/camera/panorama/PositionDetector$DiffManager;->pos:[D

    aget-wide v3, v3, v2

    add-double/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    int-to-double v2, v3

    div-double/2addr v0, v2

    iput-wide v0, p0, Lcom/android/camera/panorama/PositionDetector$DiffManager;->ave:D

    return-void
.end method


# virtual methods
.method public add(D)V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/panorama/PositionDetector$DiffManager;->pos:[D

    iget v1, p0, Lcom/android/camera/panorama/PositionDetector$DiffManager;->index:I

    aput-wide p1, v0, v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/camera/panorama/PositionDetector$DiffManager;->index:I

    const/4 p1, 0x5

    if-lt v1, p1, :cond_0

    const/4 p2, 0x0

    iput p2, p0, Lcom/android/camera/panorama/PositionDetector$DiffManager;->index:I

    :cond_0
    iget p2, p0, Lcom/android/camera/panorama/PositionDetector$DiffManager;->add_num:I

    if-ge p2, p1, :cond_1

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Lcom/android/camera/panorama/PositionDetector$DiffManager;->add_num:I

    :cond_1
    invoke-direct {p0}, Lcom/android/camera/panorama/PositionDetector$DiffManager;->calc()V

    return-void
.end method

.method public clear()V
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x5

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/panorama/PositionDetector$DiffManager;->pos:[D

    const-wide/16 v3, 0x0

    aput-wide v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iput v0, p0, Lcom/android/camera/panorama/PositionDetector$DiffManager;->index:I

    iput v0, p0, Lcom/android/camera/panorama/PositionDetector$DiffManager;->add_num:I

    return-void
.end method

.method public getDiff()D
    .locals 2

    iget-wide v0, p0, Lcom/android/camera/panorama/PositionDetector$DiffManager;->ave:D

    return-wide v0
.end method
