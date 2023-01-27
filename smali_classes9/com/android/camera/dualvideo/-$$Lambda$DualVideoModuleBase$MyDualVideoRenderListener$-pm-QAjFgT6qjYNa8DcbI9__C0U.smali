.class public final synthetic Lcom/android/camera/dualvideo/-$$Lambda$DualVideoModuleBase$MyDualVideoRenderListener$-pm-QAjFgT6qjYNa8DcbI9__C0U;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/camera/dualvideo/render/LayoutType;

.field public final synthetic f$1:Lcom/android/camera/dualvideo/render/LayoutType;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/dualvideo/render/LayoutType;Lcom/android/camera/dualvideo/render/LayoutType;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/dualvideo/-$$Lambda$DualVideoModuleBase$MyDualVideoRenderListener$-pm-QAjFgT6qjYNa8DcbI9__C0U;->f$0:Lcom/android/camera/dualvideo/render/LayoutType;

    iput-object p2, p0, Lcom/android/camera/dualvideo/-$$Lambda$DualVideoModuleBase$MyDualVideoRenderListener$-pm-QAjFgT6qjYNa8DcbI9__C0U;->f$1:Lcom/android/camera/dualvideo/render/LayoutType;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/dualvideo/-$$Lambda$DualVideoModuleBase$MyDualVideoRenderListener$-pm-QAjFgT6qjYNa8DcbI9__C0U;->f$0:Lcom/android/camera/dualvideo/render/LayoutType;

    iget-object p0, p0, Lcom/android/camera/dualvideo/-$$Lambda$DualVideoModuleBase$MyDualVideoRenderListener$-pm-QAjFgT6qjYNa8DcbI9__C0U;->f$1:Lcom/android/camera/dualvideo/render/LayoutType;

    check-cast p1, Lcom/android/camera/dualvideo/util/UserSelectData;

    invoke-static {v0, p0, p1}, Lcom/android/camera/dualvideo/DualVideoModuleBase$MyDualVideoRenderListener;->lambda$onSwitchClicked$5(Lcom/android/camera/dualvideo/render/LayoutType;Lcom/android/camera/dualvideo/render/LayoutType;Lcom/android/camera/dualvideo/util/UserSelectData;)V

    return-void
.end method
