.class Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/renderer/BaseRenderer$2;
.super Ljava/lang/Object;
.source "BaseRenderer.java"

# interfaces
.implements Lcom/faceunity/pta_helper/pic/PictureEncoder$OnEncoderPictureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/renderer/BaseRenderer;->checkPic(I[FII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/renderer/BaseRenderer;


# direct methods
.method constructor <init>(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/renderer/BaseRenderer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/renderer/BaseRenderer$2;->this$0:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/renderer/BaseRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEncoderPictureListener(Landroid/graphics/Bitmap;)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/renderer/BaseRenderer$2;->this$0:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/renderer/BaseRenderer;

    invoke-static {v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/renderer/BaseRenderer;->access$100(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/renderer/BaseRenderer;)Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/renderer/BaseRenderer$TakePhotoCallBack;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/renderer/BaseRenderer$2;->this$0:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/renderer/BaseRenderer;

    invoke-static {v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/renderer/BaseRenderer;->access$100(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/renderer/BaseRenderer;)Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/renderer/BaseRenderer$TakePhotoCallBack;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/renderer/BaseRenderer$TakePhotoCallBack;->takePhotoCallBack(Landroid/graphics/Bitmap;)V

    :cond_0
    iget-object p0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/renderer/BaseRenderer$2;->this$0:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/renderer/BaseRenderer;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/renderer/BaseRenderer;->access$202(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/renderer/BaseRenderer;Z)Z

    return-void
.end method
