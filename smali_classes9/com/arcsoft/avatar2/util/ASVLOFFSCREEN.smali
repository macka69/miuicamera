.class public Lcom/arcsoft/avatar2/util/ASVLOFFSCREEN;
.super Ljava/lang/Object;
.source "ASVLOFFSCREEN.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static final ASVL_PAF_NV21:I = 0x802

.field public static final ASVL_PAF_RGB32_R8G8B8A8:I = 0x305


# instance fields
.field private RGBA8888:[B

.field private height:I

.field private pixelFormat:I

.field private rowStride:[I

.field private vuData:[B

.field private width:I

.field private yData:[B


# direct methods
.method public constructor <init>(II[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/arcsoft/avatar2/util/ASVLOFFSCREEN;->width:I

    iput p2, p0, Lcom/arcsoft/avatar2/util/ASVLOFFSCREEN;->height:I

    const/16 p1, 0x305

    iput p1, p0, Lcom/arcsoft/avatar2/util/ASVLOFFSCREEN;->pixelFormat:I

    iput-object p3, p0, Lcom/arcsoft/avatar2/util/ASVLOFFSCREEN;->RGBA8888:[B

    return-void
.end method

.method public constructor <init>([BIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p3, p0, Lcom/arcsoft/avatar2/util/ASVLOFFSCREEN;->width:I

    iput p4, p0, Lcom/arcsoft/avatar2/util/ASVLOFFSCREEN;->height:I

    const/16 p3, 0x802

    iput p3, p0, Lcom/arcsoft/avatar2/util/ASVLOFFSCREEN;->pixelFormat:I

    iput-object p1, p0, Lcom/arcsoft/avatar2/util/ASVLOFFSCREEN;->yData:[B

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/arcsoft/avatar2/util/ASVLOFFSCREEN;->vuData:[B

    const/4 p1, 0x2

    new-array p1, p1, [I

    const/4 p3, 0x0

    aput p2, p1, p3

    const/4 p3, 0x1

    aput p2, p1, p3

    iput-object p1, p0, Lcom/arcsoft/avatar2/util/ASVLOFFSCREEN;->rowStride:[I

    return-void
.end method

.method public constructor <init>([BIIIZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/arcsoft/avatar2/util/ASVLOFFSCREEN;-><init>([BIII)V

    if-eqz p5, :cond_0

    array-length p2, p1

    new-array p2, p2, [B

    iput-object p2, p0, Lcom/arcsoft/avatar2/util/ASVLOFFSCREEN;->yData:[B

    array-length p0, p1

    const/4 p3, 0x0

    invoke-static {p1, p3, p2, p3, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    return-void
.end method

.method public constructor <init>([B[B[III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p4, p0, Lcom/arcsoft/avatar2/util/ASVLOFFSCREEN;->width:I

    iput p5, p0, Lcom/arcsoft/avatar2/util/ASVLOFFSCREEN;->height:I

    const/16 p4, 0x802

    iput p4, p0, Lcom/arcsoft/avatar2/util/ASVLOFFSCREEN;->pixelFormat:I

    iput-object p1, p0, Lcom/arcsoft/avatar2/util/ASVLOFFSCREEN;->yData:[B

    iput-object p2, p0, Lcom/arcsoft/avatar2/util/ASVLOFFSCREEN;->vuData:[B

    iput-object p3, p0, Lcom/arcsoft/avatar2/util/ASVLOFFSCREEN;->rowStride:[I

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 0

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/arcsoft/avatar2/util/ASVLOFFSCREEN;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/CloneNotSupportedException;->printStackTrace()V

    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getHeight()I
    .locals 0

    iget p0, p0, Lcom/arcsoft/avatar2/util/ASVLOFFSCREEN;->height:I

    return p0
.end method

.method public getPixelFormat()I
    .locals 0

    iget p0, p0, Lcom/arcsoft/avatar2/util/ASVLOFFSCREEN;->pixelFormat:I

    return p0
.end method

.method public getRGBA8888()[B
    .locals 0

    iget-object p0, p0, Lcom/arcsoft/avatar2/util/ASVLOFFSCREEN;->RGBA8888:[B

    return-object p0
.end method

.method public getRowStride()[I
    .locals 0

    iget-object p0, p0, Lcom/arcsoft/avatar2/util/ASVLOFFSCREEN;->rowStride:[I

    return-object p0
.end method

.method public getVuData()[B
    .locals 0

    iget-object p0, p0, Lcom/arcsoft/avatar2/util/ASVLOFFSCREEN;->vuData:[B

    return-object p0
.end method

.method public getWidth()I
    .locals 0

    iget p0, p0, Lcom/arcsoft/avatar2/util/ASVLOFFSCREEN;->width:I

    return p0
.end method

.method public getYData()[B
    .locals 0

    iget-object p0, p0, Lcom/arcsoft/avatar2/util/ASVLOFFSCREEN;->yData:[B

    return-object p0
.end method

.method public setHeight(I)V
    .locals 0

    iput p1, p0, Lcom/arcsoft/avatar2/util/ASVLOFFSCREEN;->height:I

    return-void
.end method

.method public setPixelFormat(I)V
    .locals 0

    iput p1, p0, Lcom/arcsoft/avatar2/util/ASVLOFFSCREEN;->pixelFormat:I

    return-void
.end method

.method public setRGBA8888([B)V
    .locals 0

    iput-object p1, p0, Lcom/arcsoft/avatar2/util/ASVLOFFSCREEN;->RGBA8888:[B

    return-void
.end method

.method public setRowStride(I)V
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 v1, 0x1

    aput p1, v0, v1

    iput-object v0, p0, Lcom/arcsoft/avatar2/util/ASVLOFFSCREEN;->rowStride:[I

    return-void
.end method

.method public setVuData([B)V
    .locals 0

    iput-object p1, p0, Lcom/arcsoft/avatar2/util/ASVLOFFSCREEN;->vuData:[B

    return-void
.end method

.method public setWidth(I)V
    .locals 0

    iput p1, p0, Lcom/arcsoft/avatar2/util/ASVLOFFSCREEN;->width:I

    return-void
.end method

.method public setYData([B)V
    .locals 0

    iput-object p1, p0, Lcom/arcsoft/avatar2/util/ASVLOFFSCREEN;->yData:[B

    return-void
.end method
