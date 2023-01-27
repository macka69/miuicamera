.class Lcom/android/camera/videoplayer/utils/HandlerThreadExtension$3;
.super Ljava/lang/Object;
.source "HandlerThreadExtension.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/videoplayer/utils/HandlerThreadExtension;->postQuit()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/videoplayer/utils/HandlerThreadExtension;


# direct methods
.method constructor <init>(Lcom/android/camera/videoplayer/utils/HandlerThreadExtension;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/videoplayer/utils/HandlerThreadExtension$3;->this$0:Lcom/android/camera/videoplayer/utils/HandlerThreadExtension;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    invoke-static {}, Lcom/android/camera/videoplayer/utils/HandlerThreadExtension;->access$000()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/android/camera/videoplayer/utils/HandlerThreadExtension;->access$100()Ljava/lang/String;

    move-result-object p0

    const-string v0, "postQuit, run"

    invoke-static {p0, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Looper;->quit()V

    return-void
.end method
