.class public final synthetic Lcom/android/camera/module/-$$Lambda$Camera2Module$tOMOG1DiL8GxEu3tiRJgrDRNNhc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/camera/module/Camera2Module;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/module/Camera2Module;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/module/-$$Lambda$Camera2Module$tOMOG1DiL8GxEu3tiRJgrDRNNhc;->f$0:Lcom/android/camera/module/Camera2Module;

    iput-boolean p2, p0, Lcom/android/camera/module/-$$Lambda$Camera2Module$tOMOG1DiL8GxEu3tiRJgrDRNNhc;->f$1:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/module/-$$Lambda$Camera2Module$tOMOG1DiL8GxEu3tiRJgrDRNNhc;->f$0:Lcom/android/camera/module/Camera2Module;

    iget-boolean p0, p0, Lcom/android/camera/module/-$$Lambda$Camera2Module$tOMOG1DiL8GxEu3tiRJgrDRNNhc;->f$1:Z

    invoke-virtual {v0, p0}, Lcom/android/camera/module/Camera2Module;->lambda$onHdrSceneChanged$3$Camera2Module(Z)V

    return-void
.end method
