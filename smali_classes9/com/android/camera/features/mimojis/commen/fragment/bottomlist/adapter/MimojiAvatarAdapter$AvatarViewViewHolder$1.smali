.class Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/adapter/MimojiAvatarAdapter$AvatarViewViewHolder$1;
.super Ljava/lang/Object;
.source "MimojiAvatarAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/adapter/MimojiAvatarAdapter$AvatarViewViewHolder;->modifyItemDownloadState(Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/adapter/MimojiAvatarAdapter$AvatarViewViewHolder;

.field final synthetic val$data:Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;


# direct methods
.method constructor <init>(Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/adapter/MimojiAvatarAdapter$AvatarViewViewHolder;Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/adapter/MimojiAvatarAdapter$AvatarViewViewHolder$1;->this$1:Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/adapter/MimojiAvatarAdapter$AvatarViewViewHolder;

    iput-object p2, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/adapter/MimojiAvatarAdapter$AvatarViewViewHolder$1;->val$data:Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/adapter/MimojiAvatarAdapter$AvatarViewViewHolder$1;->val$data:Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/android/camera/resource/BaseResourceItem;->setState(I)V

    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/adapter/MimojiAvatarAdapter$AvatarViewViewHolder$1;->this$1:Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/adapter/MimojiAvatarAdapter$AvatarViewViewHolder;

    iget-object v0, v0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/adapter/MimojiAvatarAdapter$AvatarViewViewHolder;->this$0:Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/adapter/MimojiAvatarAdapter;

    iget-object p0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/adapter/MimojiAvatarAdapter$AvatarViewViewHolder$1;->val$data:Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;

    iget p0, p0, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;->index:I

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    return-void
.end method
