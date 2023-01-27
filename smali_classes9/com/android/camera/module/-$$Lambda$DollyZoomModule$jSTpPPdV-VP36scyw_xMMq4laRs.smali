.class public final synthetic Lcom/android/camera/module/-$$Lambda$DollyZoomModule$jSTpPPdV-VP36scyw_xMMq4laRs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/camera/protocol/ModeProtocol$DollyZoomProcess;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/protocol/ModeProtocol$DollyZoomProcess;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/module/-$$Lambda$DollyZoomModule$jSTpPPdV-VP36scyw_xMMq4laRs;->f$0:Lcom/android/camera/protocol/ModeProtocol$DollyZoomProcess;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/module/-$$Lambda$DollyZoomModule$jSTpPPdV-VP36scyw_xMMq4laRs;->f$0:Lcom/android/camera/protocol/ModeProtocol$DollyZoomProcess;

    invoke-static {p0}, Lcom/android/camera/module/DollyZoomModule;->lambda$onDollyZoomState$1(Lcom/android/camera/protocol/ModeProtocol$DollyZoomProcess;)V

    return-void
.end method
