.class public final synthetic Lcom/android/camera/module/-$$Lambda$VideoSkyModule$nfrarLm5I5mk1oibFYJgai2wPiA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/camera/module/VideoSkyModule;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/module/VideoSkyModule;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/module/-$$Lambda$VideoSkyModule$nfrarLm5I5mk1oibFYJgai2wPiA;->f$0:Lcom/android/camera/module/VideoSkyModule;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/module/-$$Lambda$VideoSkyModule$nfrarLm5I5mk1oibFYJgai2wPiA;->f$0:Lcom/android/camera/module/VideoSkyModule;

    invoke-virtual {p0}, Lcom/android/camera/module/VideoSkyModule;->lambda$setOrientationParameter$4$VideoSkyModule()V

    return-void
.end method
