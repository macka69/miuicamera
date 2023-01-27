.class public final synthetic Lcom/android/camera/features/mimojis/mimojias/fragment/edit/-$$Lambda$EditLevelListAdapter$bhXPborOgz8tEuZkop-SQrFZr1s;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/camera/features/mimojis/commen/widget/baseview/OnRecyclerItemClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/camera/features/mimojis/mimojias/fragment/edit/EditLevelListAdapter;

.field public final synthetic f$1:Lcom/android/camera/features/mimojis/mimojias/fragment/edit/MimojiAsThumbnailRecyclerAdapter;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/features/mimojis/mimojias/fragment/edit/EditLevelListAdapter;Lcom/android/camera/features/mimojis/mimojias/fragment/edit/MimojiAsThumbnailRecyclerAdapter;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/-$$Lambda$EditLevelListAdapter$bhXPborOgz8tEuZkop-SQrFZr1s;->f$0:Lcom/android/camera/features/mimojis/mimojias/fragment/edit/EditLevelListAdapter;

    iput-object p2, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/-$$Lambda$EditLevelListAdapter$bhXPborOgz8tEuZkop-SQrFZr1s;->f$1:Lcom/android/camera/features/mimojis/mimojias/fragment/edit/MimojiAsThumbnailRecyclerAdapter;

    iput p3, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/-$$Lambda$EditLevelListAdapter$bhXPborOgz8tEuZkop-SQrFZr1s;->f$2:I

    return-void
.end method


# virtual methods
.method public final OnRecyclerItemClickListener(Ljava/lang/Object;ILandroid/view/View;)V
    .locals 6

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/-$$Lambda$EditLevelListAdapter$bhXPborOgz8tEuZkop-SQrFZr1s;->f$0:Lcom/android/camera/features/mimojis/mimojias/fragment/edit/EditLevelListAdapter;

    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/-$$Lambda$EditLevelListAdapter$bhXPborOgz8tEuZkop-SQrFZr1s;->f$1:Lcom/android/camera/features/mimojis/mimojias/fragment/edit/MimojiAsThumbnailRecyclerAdapter;

    iget v2, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/-$$Lambda$EditLevelListAdapter$bhXPborOgz8tEuZkop-SQrFZr1s;->f$2:I

    move-object v3, p1

    check-cast v3, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarConfigInfo;

    move v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/EditLevelListAdapter;->lambda$onBindViewHolder$0$EditLevelListAdapter(Lcom/android/camera/features/mimojis/mimojias/fragment/edit/MimojiAsThumbnailRecyclerAdapter;ILcom/arcsoft/avatar2/AvatarConfig$ASAvatarConfigInfo;ILandroid/view/View;)V

    return-void
.end method
