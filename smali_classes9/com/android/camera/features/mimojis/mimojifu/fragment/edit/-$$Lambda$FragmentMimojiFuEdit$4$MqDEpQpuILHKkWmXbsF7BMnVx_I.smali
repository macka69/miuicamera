.class public final synthetic Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/-$$Lambda$FragmentMimojiFuEdit$4$MqDEpQpuILHKkWmXbsF7BMnVx_I;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit$4;

.field public final synthetic f$1:Landroid/graphics/Bitmap;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit$4;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/-$$Lambda$FragmentMimojiFuEdit$4$MqDEpQpuILHKkWmXbsF7BMnVx_I;->f$0:Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit$4;

    iput-object p2, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/-$$Lambda$FragmentMimojiFuEdit$4$MqDEpQpuILHKkWmXbsF7BMnVx_I;->f$1:Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/-$$Lambda$FragmentMimojiFuEdit$4$MqDEpQpuILHKkWmXbsF7BMnVx_I;->f$0:Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit$4;

    iget-object p0, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/-$$Lambda$FragmentMimojiFuEdit$4$MqDEpQpuILHKkWmXbsF7BMnVx_I;->f$1:Landroid/graphics/Bitmap;

    invoke-virtual {v0, p0}, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit$4;->lambda$takePhotoCallBack$0$FragmentMimojiFuEdit$4(Landroid/graphics/Bitmap;)V

    return-void
.end method
