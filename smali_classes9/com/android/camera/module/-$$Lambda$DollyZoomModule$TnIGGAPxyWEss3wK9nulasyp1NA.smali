.class public final synthetic Lcom/android/camera/module/-$$Lambda$DollyZoomModule$TnIGGAPxyWEss3wK9nulasyp1NA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/camera/module/DollyZoomModule;

.field public final synthetic f$1:Lcom/android/camera/protocol/ModeProtocol$DollyZoomProcess;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/module/DollyZoomModule;Lcom/android/camera/protocol/ModeProtocol$DollyZoomProcess;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/module/-$$Lambda$DollyZoomModule$TnIGGAPxyWEss3wK9nulasyp1NA;->f$0:Lcom/android/camera/module/DollyZoomModule;

    iput-object p2, p0, Lcom/android/camera/module/-$$Lambda$DollyZoomModule$TnIGGAPxyWEss3wK9nulasyp1NA;->f$1:Lcom/android/camera/protocol/ModeProtocol$DollyZoomProcess;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/module/-$$Lambda$DollyZoomModule$TnIGGAPxyWEss3wK9nulasyp1NA;->f$0:Lcom/android/camera/module/DollyZoomModule;

    iget-object p0, p0, Lcom/android/camera/module/-$$Lambda$DollyZoomModule$TnIGGAPxyWEss3wK9nulasyp1NA;->f$1:Lcom/android/camera/protocol/ModeProtocol$DollyZoomProcess;

    invoke-virtual {v0, p0}, Lcom/android/camera/module/DollyZoomModule;->lambda$onDollyZoomState$2$DollyZoomModule(Lcom/android/camera/protocol/ModeProtocol$DollyZoomProcess;)V

    return-void
.end method
