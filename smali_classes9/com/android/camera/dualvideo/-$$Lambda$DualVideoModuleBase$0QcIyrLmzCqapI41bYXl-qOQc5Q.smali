.class public final synthetic Lcom/android/camera/dualvideo/-$$Lambda$DualVideoModuleBase$0QcIyrLmzCqapI41bYXl-qOQc5Q;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/camera/dualvideo/DualVideoModuleBase;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/dualvideo/DualVideoModuleBase;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/dualvideo/-$$Lambda$DualVideoModuleBase$0QcIyrLmzCqapI41bYXl-qOQc5Q;->f$0:Lcom/android/camera/dualvideo/DualVideoModuleBase;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/dualvideo/-$$Lambda$DualVideoModuleBase$0QcIyrLmzCqapI41bYXl-qOQc5Q;->f$0:Lcom/android/camera/dualvideo/DualVideoModuleBase;

    check-cast p1, Lcom/android/camera/dualvideo/render/RenderManager;

    invoke-virtual {p0, p1}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->lambda$setOrientationParameter$5$DualVideoModuleBase(Lcom/android/camera/dualvideo/render/RenderManager;)V

    return-void
.end method
