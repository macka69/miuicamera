.class Lcom/android/camera/ShareableMemoryFileBitmap$1;
.super Lcom/xiaomi/camera/util/Singleton;
.source "ShareableMemoryFileBitmap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ShareableMemoryFileBitmap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaomi/camera/util/Singleton<",
        "Lcom/android/camera/ShareableMemoryFileBitmap;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/camera/util/Singleton;-><init>()V

    return-void
.end method


# virtual methods
.method protected create()Lcom/android/camera/ShareableMemoryFileBitmap;
    .locals 1

    new-instance p0, Lcom/android/camera/ShareableMemoryFileBitmap;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/camera/ShareableMemoryFileBitmap;-><init>(Lcom/android/camera/ShareableMemoryFileBitmap$1;)V

    return-object p0
.end method

.method protected bridge synthetic create()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/android/camera/ShareableMemoryFileBitmap$1;->create()Lcom/android/camera/ShareableMemoryFileBitmap;

    move-result-object p0

    return-object p0
.end method
