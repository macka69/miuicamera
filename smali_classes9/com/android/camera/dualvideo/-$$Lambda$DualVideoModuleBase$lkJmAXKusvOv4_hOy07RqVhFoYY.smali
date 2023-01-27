.class public final synthetic Lcom/android/camera/dualvideo/-$$Lambda$DualVideoModuleBase$lkJmAXKusvOv4_hOy07RqVhFoYY;
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

    iput-object p1, p0, Lcom/android/camera/dualvideo/-$$Lambda$DualVideoModuleBase$lkJmAXKusvOv4_hOy07RqVhFoYY;->f$0:Lcom/android/camera/dualvideo/DualVideoModuleBase;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/dualvideo/-$$Lambda$DualVideoModuleBase$lkJmAXKusvOv4_hOy07RqVhFoYY;->f$0:Lcom/android/camera/dualvideo/DualVideoModuleBase;

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;

    invoke-virtual {p0, p1}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->lambda$onDeparted$4$DualVideoModuleBase(Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;)V

    return-void
.end method
