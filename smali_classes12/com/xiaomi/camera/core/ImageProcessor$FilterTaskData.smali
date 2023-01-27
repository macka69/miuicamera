.class public Lcom/xiaomi/camera/core/ImageProcessor$FilterTaskData;
.super Ljava/lang/Object;
.source "ImageProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/camera/core/ImageProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FilterTaskData"
.end annotation


# instance fields
.field public image:Landroid/media/Image;

.field public isPoolImage:Z

.field public target:I


# direct methods
.method public constructor <init>(Landroid/media/Image;IZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/camera/core/ImageProcessor$FilterTaskData;->image:Landroid/media/Image;

    iput p2, p0, Lcom/xiaomi/camera/core/ImageProcessor$FilterTaskData;->target:I

    iput-boolean p3, p0, Lcom/xiaomi/camera/core/ImageProcessor$FilterTaskData;->isPoolImage:Z

    return-void
.end method
