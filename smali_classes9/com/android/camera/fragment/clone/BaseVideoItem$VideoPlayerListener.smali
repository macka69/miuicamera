.class Lcom/android/camera/fragment/clone/BaseVideoItem$VideoPlayerListener;
.super Lcom/android/camera/videoplayer/ui/SimpleMainThreadMediaPlayerListener;
.source "BaseVideoItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/fragment/clone/BaseVideoItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VideoPlayerListener"
.end annotation


# instance fields
.field private final videoViewHolder:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/camera/fragment/clone/VideoViewHolder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/ref/WeakReference;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/camera/fragment/clone/VideoViewHolder;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/camera/videoplayer/ui/SimpleMainThreadMediaPlayerListener;-><init>()V

    iput-object p1, p0, Lcom/android/camera/fragment/clone/BaseVideoItem$VideoPlayerListener;->videoViewHolder:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onVideoPreparedMainThread()V
    .locals 1

    iget-object p0, p0, Lcom/android/camera/fragment/clone/BaseVideoItem$VideoPlayerListener;->videoViewHolder:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/fragment/clone/VideoViewHolder;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/android/camera/fragment/clone/VideoViewHolder;->mCover:Landroid/widget/ImageView;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public onVideoStoppedMainThread()V
    .locals 1

    iget-object p0, p0, Lcom/android/camera/fragment/clone/BaseVideoItem$VideoPlayerListener;->videoViewHolder:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/fragment/clone/VideoViewHolder;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/android/camera/fragment/clone/VideoViewHolder;->mCover:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    return-void
.end method
