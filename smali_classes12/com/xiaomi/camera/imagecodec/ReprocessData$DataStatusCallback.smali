.class public interface abstract Lcom/xiaomi/camera/imagecodec/ReprocessData$DataStatusCallback;
.super Ljava/lang/Object;
.source "ReprocessData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/camera/imagecodec/ReprocessData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "DataStatusCallback"
.end annotation


# virtual methods
.method public abstract onImageClosed(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/Image;",
            ">;)V"
        }
    .end annotation
.end method
