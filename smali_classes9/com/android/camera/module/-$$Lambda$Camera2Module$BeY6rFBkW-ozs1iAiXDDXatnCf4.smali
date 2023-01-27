.class public final synthetic Lcom/android/camera/module/-$$Lambda$Camera2Module$BeY6rFBkW-ozs1iAiXDDXatnCf4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Z


# direct methods
.method public synthetic constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/android/camera/module/-$$Lambda$Camera2Module$BeY6rFBkW-ozs1iAiXDDXatnCf4;->f$0:Z

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera/module/-$$Lambda$Camera2Module$BeY6rFBkW-ozs1iAiXDDXatnCf4;->f$0:Z

    check-cast p1, Lcom/android/camera2/Camera2Proxy;

    invoke-static {p0, p1}, Lcom/android/camera/module/Camera2Module;->lambda$checkMoreFrameCaptureLockAFAE$10(ZLcom/android/camera2/Camera2Proxy;)V

    return-void
.end method
