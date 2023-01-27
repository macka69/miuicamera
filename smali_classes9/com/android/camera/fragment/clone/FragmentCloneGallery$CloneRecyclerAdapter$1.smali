.class Lcom/android/camera/fragment/clone/FragmentCloneGallery$CloneRecyclerAdapter$1;
.super Lcom/android/camera/ui/TextureVideoView$MediaPlayerAdapter;
.source "FragmentCloneGallery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/fragment/clone/FragmentCloneGallery$CloneRecyclerAdapter;->startPlay(Lcom/android/camera/ui/TextureVideoView;Ljava/lang/String;Landroid/widget/ImageView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/fragment/clone/FragmentCloneGallery$CloneRecyclerAdapter;

.field final synthetic val$bgHolder:Landroid/widget/ImageView;

.field final synthetic val$fileDescriptor:Landroid/content/res/AssetFileDescriptor;

.field final synthetic val$textureVideoView:Lcom/android/camera/ui/TextureVideoView;


# direct methods
.method constructor <init>(Lcom/android/camera/fragment/clone/FragmentCloneGallery$CloneRecyclerAdapter;Landroid/content/res/AssetFileDescriptor;Lcom/android/camera/ui/TextureVideoView;Landroid/widget/ImageView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/fragment/clone/FragmentCloneGallery$CloneRecyclerAdapter$1;->this$0:Lcom/android/camera/fragment/clone/FragmentCloneGallery$CloneRecyclerAdapter;

    iput-object p2, p0, Lcom/android/camera/fragment/clone/FragmentCloneGallery$CloneRecyclerAdapter$1;->val$fileDescriptor:Landroid/content/res/AssetFileDescriptor;

    iput-object p3, p0, Lcom/android/camera/fragment/clone/FragmentCloneGallery$CloneRecyclerAdapter$1;->val$textureVideoView:Lcom/android/camera/ui/TextureVideoView;

    iput-object p4, p0, Lcom/android/camera/fragment/clone/FragmentCloneGallery$CloneRecyclerAdapter$1;->val$bgHolder:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/android/camera/ui/TextureVideoView$MediaPlayerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onInfo(Landroid/media/MediaPlayer;II)Z
    .locals 3

    const/4 v0, 0x3

    if-ne p2, v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/fragment/clone/FragmentCloneGallery$CloneRecyclerAdapter$1;->val$textureVideoView:Lcom/android/camera/ui/TextureVideoView;

    sget-object v1, Lcom/android/camera/fragment/clone/FragmentCloneGallery$CloneRecyclerAdapter;->VIDEO_VIEW_STATE:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/android/camera/fragment/clone/FragmentCloneGallery$CloneRecyclerAdapter;->STATE_STARTING:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/clone/FragmentCloneGallery$CloneRecyclerAdapter$1;->val$bgHolder:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/camera/fragment/clone/FragmentCloneGallery$CloneRecyclerAdapter$1;->val$textureVideoView:Lcom/android/camera/ui/TextureVideoView;

    sget-object v1, Lcom/android/camera/fragment/clone/FragmentCloneGallery$CloneRecyclerAdapter;->VIDEO_VIEW_STATE:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget-object v2, Lcom/android/camera/fragment/clone/FragmentCloneGallery$CloneRecyclerAdapter;->STATE_STARTED:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Landroid/view/TextureView;->setTag(ILjava/lang/Object;)V

    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/android/camera/ui/TextureVideoView$MediaPlayerAdapter;->onInfo(Landroid/media/MediaPlayer;II)Z

    move-result p0

    return p0
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/camera/ui/TextureVideoView$MediaPlayerAdapter;->onPrepared(Landroid/media/MediaPlayer;)V

    iget-object p0, p0, Lcom/android/camera/fragment/clone/FragmentCloneGallery$CloneRecyclerAdapter$1;->val$fileDescriptor:Landroid/content/res/AssetFileDescriptor;

    invoke-static {p0}, Lcom/android/camera/Util;->closeSafely(Ljava/io/Closeable;)V

    return-void
.end method
