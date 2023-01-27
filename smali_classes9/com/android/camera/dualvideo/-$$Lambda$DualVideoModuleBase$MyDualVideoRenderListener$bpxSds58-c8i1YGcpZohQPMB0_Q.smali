.class public final synthetic Lcom/android/camera/dualvideo/-$$Lambda$DualVideoModuleBase$MyDualVideoRenderListener$bpxSds58-c8i1YGcpZohQPMB0_Q;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/camera/dualvideo/DualVideoModuleBase$MyDualVideoRenderListener;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/dualvideo/DualVideoModuleBase$MyDualVideoRenderListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/dualvideo/-$$Lambda$DualVideoModuleBase$MyDualVideoRenderListener$bpxSds58-c8i1YGcpZohQPMB0_Q;->f$0:Lcom/android/camera/dualvideo/DualVideoModuleBase$MyDualVideoRenderListener;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/dualvideo/-$$Lambda$DualVideoModuleBase$MyDualVideoRenderListener$bpxSds58-c8i1YGcpZohQPMB0_Q;->f$0:Lcom/android/camera/dualvideo/DualVideoModuleBase$MyDualVideoRenderListener;

    check-cast p1, Lcom/android/camera/dualvideo/render/RenderManager;

    invoke-virtual {p0, p1}, Lcom/android/camera/dualvideo/DualVideoModuleBase$MyDualVideoRenderListener;->lambda$onLayoutTypeChanged$0$DualVideoModuleBase$MyDualVideoRenderListener(Lcom/android/camera/dualvideo/render/RenderManager;)V

    return-void
.end method
