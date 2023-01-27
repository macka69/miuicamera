.class public final synthetic Lcom/android/camera/dualvideo/-$$Lambda$DualVideoModuleBase$6B9CjHeM_umIKPGwk2X7i7bn8XI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/dualvideo/-$$Lambda$DualVideoModuleBase$6B9CjHeM_umIKPGwk2X7i7bn8XI;->f$0:Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/dualvideo/-$$Lambda$DualVideoModuleBase$6B9CjHeM_umIKPGwk2X7i7bn8XI;->f$0:Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;

    invoke-static {p0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->lambda$onDeparted$3(Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;)V

    return-void
.end method
