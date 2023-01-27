.class Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl$7;
.super Ljava/lang/Object;
.source "MimojiFuControlImpl.java"

# interfaces
.implements Lio/reactivex/SingleObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->createAvatar([B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/SingleObserver<",
        "Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatar;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;

.field final synthetic val$dirPath:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl$7;->this$0:Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;

    iput-object p2, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl$7;->val$dirPath:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Throwable;)V
    .locals 2
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param

    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl$7;->this$0:Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;

    invoke-static {p1}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->access$1100(Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;)Lcom/android/camera/ActivityBase;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 v0, 0xd4

    invoke-virtual {p1, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$RecordState;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/android/camera/protocol/ModeProtocol$RecordState;->onPostSavingFinish()V

    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 v0, 0xac

    invoke-virtual {p1, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    const/4 v1, -0x1

    invoke-interface {p1, v0, v1}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertMimojiFaceDetect(ZI)V

    :cond_1
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl$7;->this$0:Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;

    invoke-static {p1}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->access$1400(Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;)Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/camera/protocol/ModeProtocol$IndicatorProtocol;->mimojiEnd()V

    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl$7;->this$0:Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;

    invoke-static {p1}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->access$1100(Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;)Lcom/android/camera/ActivityBase;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/ActivityBase;->getCurrentModule()Lcom/android/camera/module/Module;

    move-result-object p1

    check-cast p1, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;

    invoke-virtual {p1, v0}, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->onMimojiCreateCompleted(Z)V

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 v1, 0xa2

    invoke-virtual {p1, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;

    invoke-interface {p1, v0}, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;->showOrHideMimojiProgress(Z)V

    iget-object p0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl$7;->this$0:Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;

    invoke-virtual {p0, v0, v0}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->backToPreview(ZZ)V

    :cond_2
    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 0

    return-void
.end method

.method public onSuccess(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatar;)V
    .locals 3
    .param p1    # Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatar;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param

    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl$7;->this$0:Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->access$1202(Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;Z)Z

    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl$7;->this$0:Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;

    invoke-static {p1}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->access$200(Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;)Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;

    move-result-object p1

    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl$7;->this$0:Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;

    invoke-static {v1}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->access$1300(Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0600c0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->setRenderModeEdit(I)V

    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl$7;->this$0:Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;

    invoke-static {p1}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->access$200(Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;)Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;

    move-result-object p1

    iget-object p0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl$7;->val$dirPath:Ljava/lang/String;

    invoke-virtual {p1, p0}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->insertAvatar(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/camera/features/mimojis/commen/utils/MimojiDumpUtil;->getInstance()Lcom/android/camera/features/mimojis/commen/utils/MimojiDumpUtil;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/android/camera/features/mimojis/commen/utils/MimojiDumpUtil;->dumpCreateAvatar(I)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param

    check-cast p1, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatar;

    invoke-virtual {p0, p1}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl$7;->onSuccess(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatar;)V

    return-void
.end method
