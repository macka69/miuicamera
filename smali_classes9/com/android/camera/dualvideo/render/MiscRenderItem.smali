.class Lcom/android/camera/dualvideo/render/MiscRenderItem;
.super Ljava/lang/Object;
.source "MiscRenderItem.java"


# instance fields
.field private final mName:Ljava/lang/String;

.field private final mTex:Lcom/android/gallery3d/ui/BasicTexture;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/android/gallery3d/ui/BasicTexture;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/dualvideo/render/MiscRenderItem;->mName:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/camera/dualvideo/render/MiscRenderItem;->mTex:Lcom/android/gallery3d/ui/BasicTexture;

    return-void
.end method


# virtual methods
.method public declared-synchronized getBasicTexture()Lcom/android/gallery3d/ui/BasicTexture;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/camera/dualvideo/render/MiscRenderItem;->mTex:Lcom/android/gallery3d/ui/BasicTexture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/dualvideo/render/MiscRenderItem;->mName:Ljava/lang/String;

    return-object p0
.end method
