.class public final synthetic Lcom/android/camera/module/-$$Lambda$VideoSkyModule$3$y5uc5VwKL1NFfVHHA9FDlYRELOI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/camera/module/VideoSkyModule$3;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/module/VideoSkyModule$3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/module/-$$Lambda$VideoSkyModule$3$y5uc5VwKL1NFfVHHA9FDlYRELOI;->f$0:Lcom/android/camera/module/VideoSkyModule$3;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/module/-$$Lambda$VideoSkyModule$3$y5uc5VwKL1NFfVHHA9FDlYRELOI;->f$0:Lcom/android/camera/module/VideoSkyModule$3;

    invoke-virtual {p0}, Lcom/android/camera/module/VideoSkyModule$3;->lambda$OnReceiveFinish$0$VideoSkyModule$3()V

    return-void
.end method
