.class public final synthetic Lcom/android/camera/dualvideo/-$$Lambda$DualVideoModuleBase$Bjh_NcJRrNzqMUbR-J9gZFIHTqg;
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

    iput-boolean p1, p0, Lcom/android/camera/dualvideo/-$$Lambda$DualVideoModuleBase$Bjh_NcJRrNzqMUbR-J9gZFIHTqg;->f$0:Z

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera/dualvideo/-$$Lambda$DualVideoModuleBase$Bjh_NcJRrNzqMUbR-J9gZFIHTqg;->f$0:Z

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;

    invoke-static {p0, p1}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->lambda$showOrHideBottom$26(ZLcom/android/camera/protocol/ModeProtocol$ActionProcessing;)V

    return-void
.end method
