.class public final synthetic Lcom/android/camera/dualvideo/-$$Lambda$DualVideoModuleBase$r-74QlR9Hf7Jy1zek0iGuL_w_8o;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/camera/dualvideo/DualVideoModuleBase;

.field public final synthetic f$1:Landroid/view/ViewGroup;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/dualvideo/DualVideoModuleBase;Landroid/view/ViewGroup;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/dualvideo/-$$Lambda$DualVideoModuleBase$r-74QlR9Hf7Jy1zek0iGuL_w_8o;->f$0:Lcom/android/camera/dualvideo/DualVideoModuleBase;

    iput-object p2, p0, Lcom/android/camera/dualvideo/-$$Lambda$DualVideoModuleBase$r-74QlR9Hf7Jy1zek0iGuL_w_8o;->f$1:Landroid/view/ViewGroup;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/dualvideo/-$$Lambda$DualVideoModuleBase$r-74QlR9Hf7Jy1zek0iGuL_w_8o;->f$0:Lcom/android/camera/dualvideo/DualVideoModuleBase;

    iget-object p0, p0, Lcom/android/camera/dualvideo/-$$Lambda$DualVideoModuleBase$r-74QlR9Hf7Jy1zek0iGuL_w_8o;->f$1:Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->lambda$initDualVideoController$22$DualVideoModuleBase(Landroid/view/ViewGroup;)V

    return-void
.end method
