.class Lcom/android/camera/effect/renders/StickerRender$1;
.super Ljava/lang/Object;
.source "StickerRender.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/effect/renders/StickerRender;->initHumanAction()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/effect/renders/StickerRender;


# direct methods
.method constructor <init>(Lcom/android/camera/effect/renders/StickerRender;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/effect/renders/StickerRender$1;->this$0:Lcom/android/camera/effect/renders/StickerRender;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/android/camera/effect/renders/StickerRender$1;->this$0:Lcom/android/camera/effect/renders/StickerRender;

    invoke-static {v0}, Lcom/android/camera/effect/renders/StickerRender;->access$000(Lcom/android/camera/effect/renders/StickerRender;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/camera/effect/renders/StickerRender$1;->this$0:Lcom/android/camera/effect/renders/StickerRender;

    invoke-static {v1}, Lcom/android/camera/effect/renders/StickerRender;->access$100(Lcom/android/camera/effect/renders/StickerRender;)Lcom/sensetime/stmobile/STMobileHumanActionNative;

    move-result-object v1

    invoke-static {}, Lcom/android/camera/sticker/StickerHelper;->getInstance()Lcom/android/camera/sticker/StickerHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/sticker/StickerHelper;->getTrackModelPath()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x1f0

    invoke-virtual {v1, v2, v3}, Lcom/sensetime/stmobile/STMobileHumanActionNative;->createInstance(Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_0

    iget-object v2, p0, Lcom/android/camera/effect/renders/StickerRender$1;->this$0:Lcom/android/camera/effect/renders/StickerRender;

    invoke-static {v2}, Lcom/android/camera/effect/renders/StickerRender;->access$100(Lcom/android/camera/effect/renders/StickerRender;)Lcom/sensetime/stmobile/STMobileHumanActionNative;

    move-result-object v2

    const/4 v3, 0x2

    const v4, 0x3eb33333

    invoke-virtual {v2, v3, v4}, Lcom/sensetime/stmobile/STMobileHumanActionNative;->setParam(IF)I

    :cond_0
    iget-object v2, p0, Lcom/android/camera/effect/renders/StickerRender$1;->this$0:Lcom/android/camera/effect/renders/StickerRender;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/android/camera/effect/renders/StickerRender;->access$202(Lcom/android/camera/effect/renders/StickerRender;Z)Z

    iget-object p0, p0, Lcom/android/camera/effect/renders/StickerRender$1;->this$0:Lcom/android/camera/effect/renders/StickerRender;

    invoke-static {p0}, Lcom/android/camera/effect/renders/StickerRender;->access$000(Lcom/android/camera/effect/renders/StickerRender;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    invoke-static {}, Lcom/android/camera/effect/renders/StickerRender;->access$300()Ljava/lang/String;

    move-result-object p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initHumanAction: result="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
