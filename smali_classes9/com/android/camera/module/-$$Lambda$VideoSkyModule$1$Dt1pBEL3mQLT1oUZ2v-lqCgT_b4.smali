.class public final synthetic Lcom/android/camera/module/-$$Lambda$VideoSkyModule$1$Dt1pBEL3mQLT1oUZ2v-lqCgT_b4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/camera/module/VideoSkyModule$1;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/module/VideoSkyModule$1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/module/-$$Lambda$VideoSkyModule$1$Dt1pBEL3mQLT1oUZ2v-lqCgT_b4;->f$0:Lcom/android/camera/module/VideoSkyModule$1;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/module/-$$Lambda$VideoSkyModule$1$Dt1pBEL3mQLT1oUZ2v-lqCgT_b4;->f$0:Lcom/android/camera/module/VideoSkyModule$1;

    invoke-virtual {p0}, Lcom/android/camera/module/VideoSkyModule$1;->lambda$OnNeedStopRecording$0$VideoSkyModule$1()V

    return-void
.end method
