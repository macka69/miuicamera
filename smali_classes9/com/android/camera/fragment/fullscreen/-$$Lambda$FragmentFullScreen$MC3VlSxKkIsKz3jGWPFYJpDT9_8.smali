.class public final synthetic Lcom/android/camera/fragment/fullscreen/-$$Lambda$FragmentFullScreen$MC3VlSxKkIsKz3jGWPFYJpDT9_8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/camera/fragment/fullscreen/FragmentFullScreen$OnFrameUpdatedCallback;


# instance fields
.field public final synthetic f$0:Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;

.field public final synthetic f$1:Lcom/android/camera/protocol/ModeProtocol$LiveVideoEditor;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;Lcom/android/camera/protocol/ModeProtocol$LiveVideoEditor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/fragment/fullscreen/-$$Lambda$FragmentFullScreen$MC3VlSxKkIsKz3jGWPFYJpDT9_8;->f$0:Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;

    iput-object p2, p0, Lcom/android/camera/fragment/fullscreen/-$$Lambda$FragmentFullScreen$MC3VlSxKkIsKz3jGWPFYJpDT9_8;->f$1:Lcom/android/camera/protocol/ModeProtocol$LiveVideoEditor;

    return-void
.end method


# virtual methods
.method public final onUpdate()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/fragment/fullscreen/-$$Lambda$FragmentFullScreen$MC3VlSxKkIsKz3jGWPFYJpDT9_8;->f$0:Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;

    iget-object p0, p0, Lcom/android/camera/fragment/fullscreen/-$$Lambda$FragmentFullScreen$MC3VlSxKkIsKz3jGWPFYJpDT9_8;->f$1:Lcom/android/camera/protocol/ModeProtocol$LiveVideoEditor;

    invoke-virtual {v0, p0}, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->lambda$startCaptureFrame$0$FragmentFullScreen(Lcom/android/camera/protocol/ModeProtocol$LiveVideoEditor;)V

    return-void
.end method
