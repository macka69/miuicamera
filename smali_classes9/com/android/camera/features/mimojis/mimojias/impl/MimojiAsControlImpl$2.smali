.class Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl$2;
.super Landroid/os/CountDownTimer;
.source "MimojiAsControlImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->updateRecordingTime()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;


# direct methods
.method constructor <init>(Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;JJ)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl$2;->this$0:Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onFinish: mStopRecordType "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl$2;->this$0:Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;

    invoke-static {v1}, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->access$300(Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mActivityBase == null "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl$2;->this$0:Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;

    invoke-static {v1}, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->access$400(Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;)Lcom/android/camera/ActivityBase;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MimojiAsImpl"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl$2;->this$0:Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;

    invoke-static {v0}, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->access$400(Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;)Lcom/android/camera/ActivityBase;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl$2;->this$0:Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;

    invoke-static {v0}, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->access$300(Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;)I

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object p0, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl$2;->this$0:Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;

    invoke-static {p0}, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->access$400(Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;)Lcom/android/camera/ActivityBase;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getCurrentModule()Lcom/android/camera/module/Module;

    move-result-object p0

    check-cast p0, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;

    invoke-virtual {p0, v2}, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->stopVideoRecording(I)V

    :cond_2
    :goto_1
    return-void
.end method

.method public onTick(J)V
    .locals 6

    const-wide/16 v0, 0x3b6

    add-long/2addr v0, p1

    const-wide/16 v2, 0x1c2

    sub-long/2addr v0, v2

    const/4 v4, 0x0

    invoke-static {v0, v1, v4}, Lcom/android/camera/Util;->millisecondToTimeString(JZ)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl$2;->this$0:Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;

    invoke-static {v1}, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->access$100(Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;)I

    move-result v4

    int-to-long v4, v4

    sub-long/2addr v4, p1

    add-long/2addr v4, v2

    invoke-static {v1, v4, v5}, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->access$002(Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;J)J

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onTick:mTotalRecordingTime "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl$2;->this$0:Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;

    invoke-static {p2}, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->access$000(Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;)J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MimojiAsImpl"

    invoke-static {p2, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl$2;->this$0:Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;

    invoke-static {p1}, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->access$000(Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;)J

    move-result-wide p1

    const-wide/16 v1, 0x3e8

    cmp-long p1, p1, v1

    if-ltz p1, :cond_0

    iget-object p0, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl$2;->this$0:Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;

    invoke-static {p0}, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->access$200(Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;)V

    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 p1, 0xac

    invoke-virtual {p0, p1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    if-eqz p0, :cond_1

    invoke-interface {p0, v0}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->updateRecordingTime(Ljava/lang/String;)V

    :cond_1
    return-void
.end method
