.class Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl$4;
.super Ljava/lang/Object;
.source "MimojiAsControlImpl.java"

# interfaces
.implements Lcom/arcsoft/avatar2/recoder/RecordingListener;


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

    iput-object p1, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl$4;->this$0:Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRecordingListener(ILjava/lang/Object;)V
    .locals 4

    iget-object p0, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl$4;->this$0:Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;

    invoke-static {p0}, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->access$1000(Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p0

    const-wide/16 v0, 0x400

    const-wide/16 v2, 0x3e8

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    div-long/2addr p1, v0

    long-to-int p1, p1

    iput p1, p0, Landroid/os/Message;->arg1:I

    const/4 p1, 0x3

    iput p1, p0, Landroid/os/Message;->what:I

    goto :goto_0

    :pswitch_1
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    div-long/2addr p1, v0

    long-to-int p1, p1

    iput p1, p0, Landroid/os/Message;->arg1:I

    const/4 p1, 0x4

    iput p1, p0, Landroid/os/Message;->what:I

    goto :goto_0

    :pswitch_2
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    div-long/2addr p1, v2

    div-long/2addr p1, v2

    long-to-int v0, p1

    iput v0, p0, Landroid/os/Message;->arg1:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRecordingListener_time = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MimojiAsImpl"

    invoke-static {p2, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    iput p1, p0, Landroid/os/Message;->what:I

    goto :goto_0

    :pswitch_3
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    div-long/2addr p1, v2

    div-long/2addr p1, v2

    long-to-int p1, p1

    iput p1, p0, Landroid/os/Message;->arg1:I

    const/4 p1, 0x2

    iput p1, p0, Landroid/os/Message;->what:I

    :goto_0
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x101
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
