.class Lcom/android/camera/module/VideoModule$15;
.super Ljava/lang/Object;
.source "VideoModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/module/VideoModule;->stopAutoZoom()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/module/VideoModule;


# direct methods
.method constructor <init>(Lcom/android/camera/module/VideoModule;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/module/VideoModule$15;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/module/VideoModule$15;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-static {v0}, Lcom/android/camera/module/VideoModule;->access$1400(Lcom/android/camera/module/VideoModule;)Lcom/android/camera/protocol/ModeProtocol$AutoZoomViewProtocol;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/camera/module/VideoModule$15;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-static {p0}, Lcom/android/camera/module/VideoModule;->access$1400(Lcom/android/camera/module/VideoModule;)Lcom/android/camera/protocol/ModeProtocol$AutoZoomViewProtocol;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/camera/protocol/ModeProtocol$AutoZoomViewProtocol;->onAutoZoomStopped()V

    :cond_0
    return-void
.end method
