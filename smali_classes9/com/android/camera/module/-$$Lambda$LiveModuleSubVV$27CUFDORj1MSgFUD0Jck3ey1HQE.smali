.class public final synthetic Lcom/android/camera/module/-$$Lambda$LiveModuleSubVV$27CUFDORj1MSgFUD0Jck3ey1HQE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/camera/module/LiveModuleSubVV;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/module/LiveModuleSubVV;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/module/-$$Lambda$LiveModuleSubVV$27CUFDORj1MSgFUD0Jck3ey1HQE;->f$0:Lcom/android/camera/module/LiveModuleSubVV;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/module/-$$Lambda$LiveModuleSubVV$27CUFDORj1MSgFUD0Jck3ey1HQE;->f$0:Lcom/android/camera/module/LiveModuleSubVV;

    check-cast p1, Lcom/android/camera/data/observeable/RxData$DataWrap;

    invoke-virtual {p0, p1}, Lcom/android/camera/module/LiveModuleSubVV;->lambda$onCameraOpened$0$LiveModuleSubVV(Lcom/android/camera/data/observeable/RxData$DataWrap;)V

    return-void
.end method
