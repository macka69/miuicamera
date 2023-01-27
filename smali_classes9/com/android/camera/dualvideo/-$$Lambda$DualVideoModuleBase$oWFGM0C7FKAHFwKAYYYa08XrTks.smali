.class public final synthetic Lcom/android/camera/dualvideo/-$$Lambda$DualVideoModuleBase$oWFGM0C7FKAHFwKAYYYa08XrTks;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/camera/dualvideo/DualVideoModuleBase;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/dualvideo/DualVideoModuleBase;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/dualvideo/-$$Lambda$DualVideoModuleBase$oWFGM0C7FKAHFwKAYYYa08XrTks;->f$0:Lcom/android/camera/dualvideo/DualVideoModuleBase;

    iput p2, p0, Lcom/android/camera/dualvideo/-$$Lambda$DualVideoModuleBase$oWFGM0C7FKAHFwKAYYYa08XrTks;->f$1:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/dualvideo/-$$Lambda$DualVideoModuleBase$oWFGM0C7FKAHFwKAYYYa08XrTks;->f$0:Lcom/android/camera/dualvideo/DualVideoModuleBase;

    iget p0, p0, Lcom/android/camera/dualvideo/-$$Lambda$DualVideoModuleBase$oWFGM0C7FKAHFwKAYYYa08XrTks;->f$1:I

    check-cast p1, Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v0, p0, p1}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->lambda$updateSubCameraFocusMode$27$DualVideoModuleBase(ILcom/android/camera2/Camera2Proxy;)V

    return-void
.end method
