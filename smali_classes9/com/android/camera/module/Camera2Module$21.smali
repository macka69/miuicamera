.class Lcom/android/camera/module/Camera2Module$21;
.super Ljava/lang/Object;
.source "Camera2Module.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/module/Camera2Module;->resetAiSceneInHdrOrFlashOn()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/module/Camera2Module;


# direct methods
.method constructor <init>(Lcom/android/camera/module/Camera2Module;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/module/Camera2Module$21;->this$0:Lcom/android/camera/module/Camera2Module;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/module/Camera2Module$21;->this$0:Lcom/android/camera/module/Camera2Module;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/camera/module/Camera2Module;->access$6100(Lcom/android/camera/module/Camera2Module;IZ)V

    iget-object p0, p0, Lcom/android/camera/module/Camera2Module$21;->this$0:Lcom/android/camera/module/Camera2Module;

    invoke-static {p0, v2}, Lcom/android/camera/module/Camera2Module;->access$6302(Lcom/android/camera/module/Camera2Module;Z)Z

    return-void
.end method
