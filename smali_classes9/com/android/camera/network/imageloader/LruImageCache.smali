.class Lcom/android/camera/network/imageloader/LruImageCache;
.super Ljava/lang/Object;
.source "LruImageCache.java"


# instance fields
.field private lruCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private max:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x500000

    iput v0, p0, Lcom/android/camera/network/imageloader/LruImageCache;->max:I

    new-instance v0, Lcom/android/camera/network/imageloader/LruImageCache$1;

    iget v1, p0, Lcom/android/camera/network/imageloader/LruImageCache;->max:I

    invoke-direct {v0, p0, v1}, Lcom/android/camera/network/imageloader/LruImageCache$1;-><init>(Lcom/android/camera/network/imageloader/LruImageCache;I)V

    iput-object v0, p0, Lcom/android/camera/network/imageloader/LruImageCache;->lruCache:Landroid/util/LruCache;

    return-void
.end method
