.class Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl$3;
.super Ljava/lang/Object;
.source "MimojiAsControlImpl.java"

# interfaces
.implements Lcom/arcsoft/avatar2/RecordModule$MediaResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;


# direct methods
.method constructor <init>(Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl$3;->this$0:Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$onCaptureResult$2(Ljava/nio/ByteBuffer;)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl$3;->this$0:Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;

    invoke-static {p0, p1}, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->access$900(Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method static synthetic lambda$onVideoResult$0()V
    .locals 2

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa1

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$CameraAction;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$CameraAction;->onReviewCancelClicked()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onVideoResult$1()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/camera/storage/Storage;->DIRECTORY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "MIMOJI"

    const-string v2, "mp4"

    invoke-static {v1, v2}, Lcom/android/camera/module/impl/component/FileUtils;->createtFileName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl$3;->this$0:Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;

    invoke-virtual {v2}, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->getVideoCache()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2}, Lcom/android/camera/module/impl/component/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)V

    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl$3;->this$0:Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;

    invoke-static {v1}, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->access$400(Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;)Lcom/android/camera/ActivityBase;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl$3;->this$0:Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;

    invoke-static {v1}, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->access$400(Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;)Lcom/android/camera/ActivityBase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ActivityBase;->getCurrentModule()Lcom/android/camera/module/Module;

    move-result-object v1

    instance-of v2, v1, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;

    if-eqz v2, :cond_0

    check-cast v1, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;

    invoke-virtual {v1, v0}, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->startSaveToLocal(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mimoji void updateMimojiVideoCache[] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MimojiAsImpl"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl$3;->this$0:Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->deleteMimojiCache(I)Z

    iget-object p0, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl$3;->this$0:Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;

    invoke-static {p0}, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->access$1000(Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;)Landroid/os/Handler;

    move-result-object p0

    sget-object v0, Lcom/android/camera/features/mimojis/mimojias/impl/-$$Lambda$MimojiAsControlImpl$3$gwAyMiqJ4wQHiBYT0xdAOw03Dh0;->INSTANCE:Lcom/android/camera/features/mimojis/mimojias/impl/-$$Lambda$MimojiAsControlImpl$3$gwAyMiqJ4wQHiBYT0xdAOw03Dh0;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public synthetic lambda$onCaptureResult$2$MimojiAsControlImpl$3(Ljava/nio/ByteBuffer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl$3;->lambda$onCaptureResult$2(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public synthetic lambda$onVideoResult$1$MimojiAsControlImpl$3()V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl$3;->lambda$onVideoResult$1()V

    return-void
.end method

.method public onCaptureResult(Ljava/nio/ByteBuffer;)V
    .locals 2

    const-string v0, "MimojiAsImpl"

    const-string v1, "onCapture Result"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl$3;->this$0:Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->access$602(Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;Z)Z

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl$3;->this$0:Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;

    invoke-static {v0, v1}, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->access$702(Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;Z)Z

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl$3;->this$0:Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;

    invoke-static {v0}, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->access$800(Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/camera/features/mimojis/mimojias/impl/-$$Lambda$MimojiAsControlImpl$3$hGvU_JkcZ6iv3jdiirw2yIQPYKE;

    invoke-direct {v1, p0, p1}, Lcom/android/camera/features/mimojis/mimojias/impl/-$$Lambda$MimojiAsControlImpl$3$hGvU_JkcZ6iv3jdiirw2yIQPYKE;-><init>(Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl$3;Ljava/nio/ByteBuffer;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 p1, 0xa2

    invoke-virtual {p0, p1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;

    if-eqz p0, :cond_0

    const p1, 0x7f110037

    invoke-interface {p0, p1}, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;->announceForAccessibility(I)V

    :cond_0
    return-void
.end method

.method public onVideoResult(Z)V
    .locals 3

    const-string p1, "MimojiAsImpl"

    const-string/jumbo v0, "stop video record callback"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl$3;->this$0:Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;

    invoke-static {p1}, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->access$500(Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;)Ljava/util/concurrent/CountDownLatch;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl$3;->this$0:Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;

    invoke-static {p1}, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->access$500(Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;)Ljava/util/concurrent/CountDownLatch;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_0
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl$3;->this$0:Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->access$602(Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;Z)Z

    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl$3;->this$0:Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;

    invoke-static {p1, v0}, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->access$702(Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;Z)Z

    invoke-static {}, Lcom/android/camera/CameraSettings;->isGifOn()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 v0, 0xfb

    invoke-virtual {p1, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$MimojiGifEditor;

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl$3;->this$0:Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->getVideoCache()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl$3;->this$0:Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;

    invoke-static {p0}, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->access$000(Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;)J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Lcom/android/camera/protocol/ModeProtocol$MimojiGifEditor;->combineVideoAudio(Ljava/lang/String;J)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 v0, 0xfc

    invoke-virtual {p1, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiVideoEditor;

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl$3;->this$0:Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->getVideoCache()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl$3;->this$0:Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;

    invoke-static {p0}, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->access$300(Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;)I

    move-result p0

    invoke-interface {p1, v0, p0}, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiVideoEditor;->combineVideoAudio(Ljava/lang/String;I)V

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/Thread;

    new-instance v0, Lcom/android/camera/features/mimojis/mimojias/impl/-$$Lambda$MimojiAsControlImpl$3$k5Wu0jMDlEfy1jdrnqbbLWY0X9g;

    invoke-direct {v0, p0}, Lcom/android/camera/features/mimojis/mimojias/impl/-$$Lambda$MimojiAsControlImpl$3$k5Wu0jMDlEfy1jdrnqbbLWY0X9g;-><init>(Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl$3;)V

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    :cond_3
    :goto_0
    return-void
.end method
