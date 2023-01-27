.class public final synthetic Lcom/android/camera/module/-$$Lambda$Camera2Module$pMZ-w6-4ThHlVEBp-56l4iial_E;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/camera/module/Camera2Module;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/module/Camera2Module;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/module/-$$Lambda$Camera2Module$pMZ-w6-4ThHlVEBp-56l4iial_E;->f$0:Lcom/android/camera/module/Camera2Module;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/module/-$$Lambda$Camera2Module$pMZ-w6-4ThHlVEBp-56l4iial_E;->f$0:Lcom/android/camera/module/Camera2Module;

    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->lambda$setFrameAvailable$12$Camera2Module()V

    return-void
.end method
