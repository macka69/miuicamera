.class public final synthetic Lcom/android/camera/module/impl/component/-$$Lambda$MiAsdDetectImpl$SjAPa9HDz858KJUj1f0Pj0q6MlE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/camera/module/Camera2Module;

.field public final synthetic f$1:Z

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/module/Camera2Module;ZI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/module/impl/component/-$$Lambda$MiAsdDetectImpl$SjAPa9HDz858KJUj1f0Pj0q6MlE;->f$0:Lcom/android/camera/module/Camera2Module;

    iput-boolean p2, p0, Lcom/android/camera/module/impl/component/-$$Lambda$MiAsdDetectImpl$SjAPa9HDz858KJUj1f0Pj0q6MlE;->f$1:Z

    iput p3, p0, Lcom/android/camera/module/impl/component/-$$Lambda$MiAsdDetectImpl$SjAPa9HDz858KJUj1f0Pj0q6MlE;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/module/impl/component/-$$Lambda$MiAsdDetectImpl$SjAPa9HDz858KJUj1f0Pj0q6MlE;->f$0:Lcom/android/camera/module/Camera2Module;

    iget-boolean v1, p0, Lcom/android/camera/module/impl/component/-$$Lambda$MiAsdDetectImpl$SjAPa9HDz858KJUj1f0Pj0q6MlE;->f$1:Z

    iget p0, p0, Lcom/android/camera/module/impl/component/-$$Lambda$MiAsdDetectImpl$SjAPa9HDz858KJUj1f0Pj0q6MlE;->f$2:I

    invoke-static {v0, v1, p0}, Lcom/android/camera/module/impl/component/MiAsdDetectImpl;->lambda$updateUltraWide$0(Lcom/android/camera/module/Camera2Module;ZI)V

    return-void
.end method
