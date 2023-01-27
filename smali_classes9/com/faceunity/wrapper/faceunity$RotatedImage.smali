.class public Lcom/faceunity/wrapper/faceunity$RotatedImage;
.super Ljava/lang/Object;
.source "faceunity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/faceunity/wrapper/faceunity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RotatedImage"
.end annotation


# instance fields
.field public mData:[B

.field private mData1:[B

.field private mData2:[B

.field public mHeight:I

.field public mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/faceunity/wrapper/faceunity$RotatedImage;

    invoke-direct {v0}, Lcom/faceunity/wrapper/faceunity$RotatedImage;-><init>()V

    invoke-direct {v0}, Lcom/faceunity/wrapper/faceunity$RotatedImage;->initJniFiledIDs()V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/faceunity/wrapper/faceunity$RotatedImage;->mData:[B

    const/4 v1, 0x0

    iput v1, p0, Lcom/faceunity/wrapper/faceunity$RotatedImage;->mWidth:I

    iput v1, p0, Lcom/faceunity/wrapper/faceunity$RotatedImage;->mHeight:I

    iput-object v0, p0, Lcom/faceunity/wrapper/faceunity$RotatedImage;->mData1:[B

    iput-object v0, p0, Lcom/faceunity/wrapper/faceunity$RotatedImage;->mData2:[B

    return-void
.end method

.method private native initJniFiledIDs()V
.end method
