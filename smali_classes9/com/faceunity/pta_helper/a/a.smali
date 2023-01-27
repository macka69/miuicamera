.class public final Lcom/faceunity/pta_helper/a/a;
.super Lcom/faceunity/pta_helper/a/a/a;
.source "Drawable2dFull.java"


# static fields
.field private static final a:[F

.field private static final b:[F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x8

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    sput-object v1, Lcom/faceunity/pta_helper/a/a;->a:[F

    new-array v0, v0, [F

    fill-array-data v0, :array_1

    sput-object v0, Lcom/faceunity/pta_helper/a/a;->b:[F

    return-void

    nop

    :array_0
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    sget-object v0, Lcom/faceunity/pta_helper/a/a;->a:[F

    sget-object v1, Lcom/faceunity/pta_helper/a/a;->b:[F

    invoke-direct {p0, v0, v1}, Lcom/faceunity/pta_helper/a/a/a;-><init>([F[F)V

    return-void
.end method
