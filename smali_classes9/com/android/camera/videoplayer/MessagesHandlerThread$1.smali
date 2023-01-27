.class Lcom/android/camera/videoplayer/MessagesHandlerThread$1;
.super Ljava/lang/Object;
.source "MessagesHandlerThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/videoplayer/MessagesHandlerThread;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/videoplayer/MessagesHandlerThread;


# direct methods
.method constructor <init>(Lcom/android/camera/videoplayer/MessagesHandlerThread;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/videoplayer/MessagesHandlerThread$1;->this$0:Lcom/android/camera/videoplayer/MessagesHandlerThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Lcom/android/camera/videoplayer/MessagesHandlerThread;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "start worker thread"

    invoke-static {v0, v1}, Lcom/android/camera/videoplayer/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/camera/videoplayer/MessagesHandlerThread$1;->this$0:Lcom/android/camera/videoplayer/MessagesHandlerThread;

    invoke-static {v0}, Lcom/android/camera/videoplayer/MessagesHandlerThread;->access$100(Lcom/android/camera/videoplayer/MessagesHandlerThread;)Lcom/android/camera/videoplayer/PlayerQueueLock;

    move-result-object v0

    invoke-static {}, Lcom/android/camera/videoplayer/MessagesHandlerThread;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/videoplayer/PlayerQueueLock;->lock(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/camera/videoplayer/MessagesHandlerThread;->access$200()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/camera/videoplayer/MessagesHandlerThread;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mPlayerMessagesQueue "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/camera/videoplayer/MessagesHandlerThread$1;->this$0:Lcom/android/camera/videoplayer/MessagesHandlerThread;

    invoke-static {v2}, Lcom/android/camera/videoplayer/MessagesHandlerThread;->access$300(Lcom/android/camera/videoplayer/MessagesHandlerThread;)Ljava/util/Queue;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/videoplayer/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/camera/videoplayer/MessagesHandlerThread$1;->this$0:Lcom/android/camera/videoplayer/MessagesHandlerThread;

    invoke-static {v0}, Lcom/android/camera/videoplayer/MessagesHandlerThread;->access$300(Lcom/android/camera/videoplayer/MessagesHandlerThread;)Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    :try_start_0
    invoke-static {}, Lcom/android/camera/videoplayer/MessagesHandlerThread;->access$200()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/camera/videoplayer/MessagesHandlerThread;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "queue is empty, wait for new messages"

    invoke-static {v0, v1}, Lcom/android/camera/videoplayer/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v0, p0, Lcom/android/camera/videoplayer/MessagesHandlerThread$1;->this$0:Lcom/android/camera/videoplayer/MessagesHandlerThread;

    invoke-static {v0}, Lcom/android/camera/videoplayer/MessagesHandlerThread;->access$100(Lcom/android/camera/videoplayer/MessagesHandlerThread;)Lcom/android/camera/videoplayer/PlayerQueueLock;

    move-result-object v0

    invoke-static {}, Lcom/android/camera/videoplayer/MessagesHandlerThread;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/videoplayer/PlayerQueueLock;->wait(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/InterruptedException;->printStackTrace()V

    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "InterruptedException"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    iget-object v0, p0, Lcom/android/camera/videoplayer/MessagesHandlerThread$1;->this$0:Lcom/android/camera/videoplayer/MessagesHandlerThread;

    invoke-static {v0}, Lcom/android/camera/videoplayer/MessagesHandlerThread;->access$300(Lcom/android/camera/videoplayer/MessagesHandlerThread;)Ljava/util/Queue;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/videoplayer/player_messages/Message;

    invoke-static {v0, v1}, Lcom/android/camera/videoplayer/MessagesHandlerThread;->access$402(Lcom/android/camera/videoplayer/MessagesHandlerThread;Lcom/android/camera/videoplayer/player_messages/Message;)Lcom/android/camera/videoplayer/player_messages/Message;

    iget-object v0, p0, Lcom/android/camera/videoplayer/MessagesHandlerThread$1;->this$0:Lcom/android/camera/videoplayer/MessagesHandlerThread;

    invoke-static {v0}, Lcom/android/camera/videoplayer/MessagesHandlerThread;->access$400(Lcom/android/camera/videoplayer/MessagesHandlerThread;)Lcom/android/camera/videoplayer/player_messages/Message;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/videoplayer/player_messages/Message;->polledFromQueue()V

    invoke-static {}, Lcom/android/camera/videoplayer/MessagesHandlerThread;->access$200()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/android/camera/videoplayer/MessagesHandlerThread;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "poll mLastMessage "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/camera/videoplayer/MessagesHandlerThread$1;->this$0:Lcom/android/camera/videoplayer/MessagesHandlerThread;

    invoke-static {v2}, Lcom/android/camera/videoplayer/MessagesHandlerThread;->access$400(Lcom/android/camera/videoplayer/MessagesHandlerThread;)Lcom/android/camera/videoplayer/player_messages/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/videoplayer/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-object v0, p0, Lcom/android/camera/videoplayer/MessagesHandlerThread$1;->this$0:Lcom/android/camera/videoplayer/MessagesHandlerThread;

    invoke-static {v0}, Lcom/android/camera/videoplayer/MessagesHandlerThread;->access$100(Lcom/android/camera/videoplayer/MessagesHandlerThread;)Lcom/android/camera/videoplayer/PlayerQueueLock;

    move-result-object v0

    invoke-static {}, Lcom/android/camera/videoplayer/MessagesHandlerThread;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/videoplayer/PlayerQueueLock;->unlock(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/camera/videoplayer/MessagesHandlerThread;->access$200()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/android/camera/videoplayer/MessagesHandlerThread;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "run, mLastMessage "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/camera/videoplayer/MessagesHandlerThread$1;->this$0:Lcom/android/camera/videoplayer/MessagesHandlerThread;

    invoke-static {v2}, Lcom/android/camera/videoplayer/MessagesHandlerThread;->access$400(Lcom/android/camera/videoplayer/MessagesHandlerThread;)Lcom/android/camera/videoplayer/player_messages/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/videoplayer/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iget-object v0, p0, Lcom/android/camera/videoplayer/MessagesHandlerThread$1;->this$0:Lcom/android/camera/videoplayer/MessagesHandlerThread;

    invoke-static {v0}, Lcom/android/camera/videoplayer/MessagesHandlerThread;->access$400(Lcom/android/camera/videoplayer/MessagesHandlerThread;)Lcom/android/camera/videoplayer/player_messages/Message;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/videoplayer/player_messages/Message;->runMessage()V

    iget-object v0, p0, Lcom/android/camera/videoplayer/MessagesHandlerThread$1;->this$0:Lcom/android/camera/videoplayer/MessagesHandlerThread;

    invoke-static {v0}, Lcom/android/camera/videoplayer/MessagesHandlerThread;->access$100(Lcom/android/camera/videoplayer/MessagesHandlerThread;)Lcom/android/camera/videoplayer/PlayerQueueLock;

    move-result-object v0

    invoke-static {}, Lcom/android/camera/videoplayer/MessagesHandlerThread;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/videoplayer/PlayerQueueLock;->lock(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/videoplayer/MessagesHandlerThread$1;->this$0:Lcom/android/camera/videoplayer/MessagesHandlerThread;

    invoke-static {v0}, Lcom/android/camera/videoplayer/MessagesHandlerThread;->access$400(Lcom/android/camera/videoplayer/MessagesHandlerThread;)Lcom/android/camera/videoplayer/player_messages/Message;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/videoplayer/player_messages/Message;->messageFinished()V

    iget-object v0, p0, Lcom/android/camera/videoplayer/MessagesHandlerThread$1;->this$0:Lcom/android/camera/videoplayer/MessagesHandlerThread;

    invoke-static {v0}, Lcom/android/camera/videoplayer/MessagesHandlerThread;->access$100(Lcom/android/camera/videoplayer/MessagesHandlerThread;)Lcom/android/camera/videoplayer/PlayerQueueLock;

    move-result-object v0

    invoke-static {}, Lcom/android/camera/videoplayer/MessagesHandlerThread;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/videoplayer/PlayerQueueLock;->unlock(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/videoplayer/MessagesHandlerThread$1;->this$0:Lcom/android/camera/videoplayer/MessagesHandlerThread;

    invoke-static {v0}, Lcom/android/camera/videoplayer/MessagesHandlerThread;->access$500(Lcom/android/camera/videoplayer/MessagesHandlerThread;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/camera/videoplayer/MessagesHandlerThread;->access$000()Ljava/lang/String;

    move-result-object p0

    const-string v0, "end worker thread"

    invoke-static {p0, v0}, Lcom/android/camera/videoplayer/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
