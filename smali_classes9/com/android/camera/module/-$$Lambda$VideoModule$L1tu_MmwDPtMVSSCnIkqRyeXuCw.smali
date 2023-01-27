.class public final synthetic Lcom/android/camera/module/-$$Lambda$VideoModule$L1tu_MmwDPtMVSSCnIkqRyeXuCw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/camera/module/VideoModule;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/module/VideoModule;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/module/-$$Lambda$VideoModule$L1tu_MmwDPtMVSSCnIkqRyeXuCw;->f$0:Lcom/android/camera/module/VideoModule;

    iput-boolean p2, p0, Lcom/android/camera/module/-$$Lambda$VideoModule$L1tu_MmwDPtMVSSCnIkqRyeXuCw;->f$1:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/module/-$$Lambda$VideoModule$L1tu_MmwDPtMVSSCnIkqRyeXuCw;->f$0:Lcom/android/camera/module/VideoModule;

    iget-boolean p0, p0, Lcom/android/camera/module/-$$Lambda$VideoModule$L1tu_MmwDPtMVSSCnIkqRyeXuCw;->f$1:Z

    invoke-virtual {v0, p0}, Lcom/android/camera/module/VideoModule;->lambda$updateManualEvAdjust$3$VideoModule(Z)V

    return-void
.end method
