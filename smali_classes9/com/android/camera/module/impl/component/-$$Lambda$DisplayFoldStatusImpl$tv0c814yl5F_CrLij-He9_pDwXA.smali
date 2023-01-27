.class public final synthetic Lcom/android/camera/module/impl/component/-$$Lambda$DisplayFoldStatusImpl$tv0c814yl5F_CrLij-He9_pDwXA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/camera/module/impl/component/DisplayFoldStatusImpl;

.field public final synthetic f$1:Lcom/android/camera/protocol/ModeProtocol$DisplayGuide;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/module/impl/component/DisplayFoldStatusImpl;Lcom/android/camera/protocol/ModeProtocol$DisplayGuide;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/module/impl/component/-$$Lambda$DisplayFoldStatusImpl$tv0c814yl5F_CrLij-He9_pDwXA;->f$0:Lcom/android/camera/module/impl/component/DisplayFoldStatusImpl;

    iput-object p2, p0, Lcom/android/camera/module/impl/component/-$$Lambda$DisplayFoldStatusImpl$tv0c814yl5F_CrLij-He9_pDwXA;->f$1:Lcom/android/camera/protocol/ModeProtocol$DisplayGuide;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/module/impl/component/-$$Lambda$DisplayFoldStatusImpl$tv0c814yl5F_CrLij-He9_pDwXA;->f$0:Lcom/android/camera/module/impl/component/DisplayFoldStatusImpl;

    iget-object p0, p0, Lcom/android/camera/module/impl/component/-$$Lambda$DisplayFoldStatusImpl$tv0c814yl5F_CrLij-He9_pDwXA;->f$1:Lcom/android/camera/protocol/ModeProtocol$DisplayGuide;

    invoke-virtual {v0, p0}, Lcom/android/camera/module/impl/component/DisplayFoldStatusImpl;->lambda$processUltraPixelSelf$0$DisplayFoldStatusImpl(Lcom/android/camera/protocol/ModeProtocol$DisplayGuide;)V

    return-void
.end method
