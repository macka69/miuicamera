.class public final synthetic Lcom/android/camera/dualvideo/-$$Lambda$DualVideoModuleBase$sZckzfUttqhK688o32SzJNRtOPw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/camera/dualvideo/DualVideoModuleBase;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/dualvideo/DualVideoModuleBase;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/dualvideo/-$$Lambda$DualVideoModuleBase$sZckzfUttqhK688o32SzJNRtOPw;->f$0:Lcom/android/camera/dualvideo/DualVideoModuleBase;

    iput-boolean p2, p0, Lcom/android/camera/dualvideo/-$$Lambda$DualVideoModuleBase$sZckzfUttqhK688o32SzJNRtOPw;->f$1:Z

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/dualvideo/-$$Lambda$DualVideoModuleBase$sZckzfUttqhK688o32SzJNRtOPw;->f$0:Lcom/android/camera/dualvideo/DualVideoModuleBase;

    iget-boolean p0, p0, Lcom/android/camera/dualvideo/-$$Lambda$DualVideoModuleBase$sZckzfUttqhK688o32SzJNRtOPw;->f$1:Z

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;

    invoke-virtual {v0, p0, p1}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->lambda$switchThumbnailFunction$14$DualVideoModuleBase(ZLcom/android/camera/protocol/ModeProtocol$ActionProcessing;)V

    return-void
.end method
