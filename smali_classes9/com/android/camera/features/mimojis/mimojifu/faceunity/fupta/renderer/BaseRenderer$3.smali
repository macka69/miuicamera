.class Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/renderer/BaseRenderer$3;
.super Ljava/lang/Object;
.source "BaseRenderer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/renderer/BaseRenderer;->checkPicIcon()V
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

    iput-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/renderer/BaseRenderer$3;->this$0:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/renderer/BaseRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/renderer/BaseRenderer$3;->this$0:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/renderer/BaseRenderer;

    iget-object v0, v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/renderer/BaseRenderer;->mOnRendererStatusListener:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/renderer/BaseRenderer$OnRendererStatusListener;

    invoke-interface {v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/renderer/BaseRenderer$OnRendererStatusListener;->takeBuffer()[B

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/renderer/BaseRenderer$3;->this$0:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/renderer/BaseRenderer;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/renderer/BaseRenderer;->access$302(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/renderer/BaseRenderer;Z)Z

    if-eqz v0, :cond_1

    array-length v1, v0

    if-gtz v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/16 v2, 0x12c

    invoke-static {v2, v2, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/renderer/BaseRenderer$3;->this$0:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/renderer/BaseRenderer;

    invoke-static {v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/renderer/BaseRenderer;->access$400(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/renderer/BaseRenderer;)Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/renderer/BaseRenderer$TakePhotoCallBack;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/renderer/BaseRenderer$3;->this$0:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/renderer/BaseRenderer;

    invoke-static {p0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/renderer/BaseRenderer;->access$400(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/renderer/BaseRenderer;)Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/renderer/BaseRenderer$TakePhotoCallBack;

    move-result-object p0

    invoke-interface {p0, v1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/renderer/BaseRenderer$TakePhotoCallBack;->takePhotoCallBack(Landroid/graphics/Bitmap;)V

    :cond_1
    :goto_0
    return-void
.end method
