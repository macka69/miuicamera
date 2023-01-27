.class public final synthetic Lcom/android/camera/dualvideo/-$$Lambda$DualVideoModuleBase$lWX2O_Cjeji9rMCyPxkpW9UbibI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/dualvideo/-$$Lambda$DualVideoModuleBase$lWX2O_Cjeji9rMCyPxkpW9UbibI;->f$0:Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;

    iput-boolean p2, p0, Lcom/android/camera/dualvideo/-$$Lambda$DualVideoModuleBase$lWX2O_Cjeji9rMCyPxkpW9UbibI;->f$1:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/dualvideo/-$$Lambda$DualVideoModuleBase$lWX2O_Cjeji9rMCyPxkpW9UbibI;->f$0:Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;

    iget-boolean p0, p0, Lcom/android/camera/dualvideo/-$$Lambda$DualVideoModuleBase$lWX2O_Cjeji9rMCyPxkpW9UbibI;->f$1:Z

    invoke-static {v0, p0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->lambda$switchThumbnailFunction$13(Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;Z)V

    return-void
.end method
