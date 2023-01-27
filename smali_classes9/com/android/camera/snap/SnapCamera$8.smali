.class Lcom/android/camera/snap/SnapCamera$8;
.super Ljava/lang/Object;
.source "SnapCamera.java"

# interfaces
.implements Lcom/android/camera/snap/ISnapListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/snap/SnapCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/snap/SnapCamera;


# direct methods
.method constructor <init>(Lcom/android/camera/snap/SnapCamera;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/snap/SnapCamera$8;->this$0:Lcom/android/camera/snap/SnapCamera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized executeCapture()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/camera/snap/SnapCamera$8;->this$0:Lcom/android/camera/snap/SnapCamera;

    invoke-static {v0}, Lcom/android/camera/snap/SnapCamera;->access$1300(Lcom/android/camera/snap/SnapCamera;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/snap/SnapCamera$8;->this$0:Lcom/android/camera/snap/SnapCamera;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/camera/snap/SnapCamera;->access$1302(Lcom/android/camera/snap/SnapCamera;Z)Z

    iget-object v0, p0, Lcom/android/camera/snap/SnapCamera$8;->this$0:Lcom/android/camera/snap/SnapCamera;

    invoke-static {v0}, Lcom/android/camera/snap/SnapCamera;->access$1400(Lcom/android/camera/snap/SnapCamera;)V

    iget-object v0, p0, Lcom/android/camera/snap/SnapCamera$8;->this$0:Lcom/android/camera/snap/SnapCamera;

    invoke-static {v0}, Lcom/android/camera/snap/SnapCamera;->access$1500(Lcom/android/camera/snap/SnapCamera;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/snap/SnapCamera$8;->this$0:Lcom/android/camera/snap/SnapCamera;

    invoke-static {v0}, Lcom/android/camera/snap/SnapCamera;->access$1500(Lcom/android/camera/snap/SnapCamera;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
