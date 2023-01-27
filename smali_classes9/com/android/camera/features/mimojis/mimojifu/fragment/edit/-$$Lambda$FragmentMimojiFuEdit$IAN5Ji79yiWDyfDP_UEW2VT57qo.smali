.class public final synthetic Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/-$$Lambda$FragmentMimojiFuEdit$IAN5Ji79yiWDyfDP_UEW2VT57qo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/camera/ui/GLTextureView$EGLShareContextGetter;


# instance fields
.field public final synthetic f$0:Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiControl;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiControl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/-$$Lambda$FragmentMimojiFuEdit$IAN5Ji79yiWDyfDP_UEW2VT57qo;->f$0:Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiControl;

    return-void
.end method


# virtual methods
.method public final getShareContext()Ljavax/microedition/khronos/egl/EGLContext;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/-$$Lambda$FragmentMimojiFuEdit$IAN5Ji79yiWDyfDP_UEW2VT57qo;->f$0:Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiControl;

    invoke-static {p0}, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->lambda$initMimojiEdit$0(Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiControl;)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object p0

    return-object p0
.end method
