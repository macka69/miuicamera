.class Lcom/android/camera/wideselfie/WideSelfieEngineWrapper$2;
.super Landroid/os/Handler;
.source "WideSelfieEngineWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;


# direct methods
.method constructor <init>(Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/wideselfie/WideSelfieEngineWrapper$2;->this$0:Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 11

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/arcsoft/camera/wideselfie/ProcessResult;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->what:I

    const-string v2, "WideSelfieEngine"

    if-eqz v1, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ProcessResult resultCode "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v3, p0, Lcom/android/camera/wideselfie/WideSelfieEngineWrapper$2;->this$0:Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;

    invoke-static {v3}, Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;->access$200(Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;)Ljava/lang/ref/WeakReference;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/wideselfie/WideSelfieEngineWrapper$WideSelfStateCallback;

    if-nez p1, :cond_9

    iget-object p1, p0, Lcom/android/camera/wideselfie/WideSelfieEngineWrapper$2;->this$0:Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;

    invoke-static {p1}, Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;->access$300(Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;)I

    move-result p1

    rem-int/lit16 p1, p1, 0xb4

    const/16 v2, 0x5a

    if-ne p1, v2, :cond_1

    new-instance p1, Landroid/graphics/Rect;

    iget-object v4, v0, Lcom/arcsoft/camera/wideselfie/ProcessResult;->progressBarThumbOffset:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    iget-object v5, p0, Lcom/android/camera/wideselfie/WideSelfieEngineWrapper$2;->this$0:Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;

    invoke-static {v5}, Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;->access$400(Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;)Landroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Rect;->top:I

    iget-object v6, v0, Lcom/arcsoft/camera/wideselfie/ProcessResult;->progressBarThumbOffset:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    add-int/2addr v5, v6

    iget-object v6, p0, Lcom/android/camera/wideselfie/WideSelfieEngineWrapper$2;->this$0:Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;

    invoke-static {v6}, Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;->access$400(Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;)Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    iget-object v7, v0, Lcom/arcsoft/camera/wideselfie/ProcessResult;->progressBarThumbOffset:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->x:I

    add-int/2addr v6, v7

    iget-object v7, p0, Lcom/android/camera/wideselfie/WideSelfieEngineWrapper$2;->this$0:Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;

    invoke-static {v7}, Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;->access$400(Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;)Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    iget-object v8, p0, Lcom/android/camera/wideselfie/WideSelfieEngineWrapper$2;->this$0:Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;

    invoke-static {v8}, Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;->access$400(Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;)Landroid/graphics/Rect;

    move-result-object v8

    iget v8, v8, Landroid/graphics/Rect;->top:I

    add-int/2addr v7, v8

    iget-object v8, v0, Lcom/arcsoft/camera/wideselfie/ProcessResult;->progressBarThumbOffset:Landroid/graphics/Point;

    iget v8, v8, Landroid/graphics/Point;->y:I

    add-int/2addr v7, v8

    invoke-direct {p1, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_0

    :cond_1
    new-instance p1, Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/camera/wideselfie/WideSelfieEngineWrapper$2;->this$0:Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;

    invoke-static {v4}, Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;->access$400(Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;)Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget-object v5, v0, Lcom/arcsoft/camera/wideselfie/ProcessResult;->progressBarThumbOffset:Landroid/graphics/Point;

    iget v6, v5, Landroid/graphics/Point;->x:I

    add-int/2addr v4, v6

    iget v5, v5, Landroid/graphics/Point;->y:I

    neg-int v5, v5

    iget-object v6, p0, Lcom/android/camera/wideselfie/WideSelfieEngineWrapper$2;->this$0:Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;

    invoke-static {v6}, Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;->access$400(Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;)Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    iget-object v7, p0, Lcom/android/camera/wideselfie/WideSelfieEngineWrapper$2;->this$0:Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;

    invoke-static {v7}, Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;->access$400(Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;)Landroid/graphics/Rect;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Rect;->left:I

    add-int/2addr v6, v7

    iget-object v7, v0, Lcom/arcsoft/camera/wideselfie/ProcessResult;->progressBarThumbOffset:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->x:I

    add-int/2addr v6, v7

    iget-object v7, p0, Lcom/android/camera/wideselfie/WideSelfieEngineWrapper$2;->this$0:Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;

    invoke-static {v7}, Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;->access$400(Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;)Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    iget-object v8, v0, Lcom/arcsoft/camera/wideselfie/ProcessResult;->progressBarThumbOffset:Landroid/graphics/Point;

    iget v8, v8, Landroid/graphics/Point;->y:I

    sub-int/2addr v7, v8

    invoke-direct {p1, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    :goto_0
    move-object v9, p1

    if-eqz v3, :cond_a

    iget-object p1, p0, Lcom/android/camera/wideselfie/WideSelfieEngineWrapper$2;->this$0:Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;

    invoke-static {p1}, Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;->access$300(Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;)I

    move-result p1

    rem-int/lit16 p1, p1, 0xb4

    if-ne p1, v2, :cond_2

    iget-object p1, v0, Lcom/arcsoft/camera/wideselfie/ProcessResult;->progressBarThumbOffset:Landroid/graphics/Point;

    iget p1, p1, Landroid/graphics/Point;->y:I

    goto :goto_1

    :cond_2
    iget-object p1, v0, Lcom/arcsoft/camera/wideselfie/ProcessResult;->progressBarThumbOffset:Landroid/graphics/Point;

    iget p1, p1, Landroid/graphics/Point;->x:I

    neg-int p1, p1

    :goto_1
    const/4 v10, 0x0

    if-lez p1, :cond_4

    iget-object v4, p0, Lcom/android/camera/wideselfie/WideSelfieEngineWrapper$2;->this$0:Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;

    invoke-static {v4}, Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;->access$400(Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;)Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->top:I

    if-gt p1, v4, :cond_3

    :goto_2
    move p1, v10

    goto :goto_3

    :cond_3
    iget-object v4, p0, Lcom/android/camera/wideselfie/WideSelfieEngineWrapper$2;->this$0:Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;

    invoke-static {v4}, Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;->access$400(Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;)Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr p1, v4

    goto :goto_3

    :cond_4
    neg-int v4, p1

    iget-object v5, p0, Lcom/android/camera/wideselfie/WideSelfieEngineWrapper$2;->this$0:Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;

    invoke-static {v5}, Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;->access$400(Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;)Landroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Rect;->top:I

    if-gt v4, v5, :cond_5

    goto :goto_2

    :cond_5
    iget-object v4, p0, Lcom/android/camera/wideselfie/WideSelfieEngineWrapper$2;->this$0:Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;

    invoke-static {v4}, Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;->access$400(Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;)Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr p1, v4

    :goto_3
    iget-object p0, p0, Lcom/android/camera/wideselfie/WideSelfieEngineWrapper$2;->this$0:Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;

    invoke-static {p0}, Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;->access$300(Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;)I

    move-result p0

    rem-int/lit16 p0, p0, 0xb4

    if-ne p0, v2, :cond_6

    iget-object p0, v0, Lcom/arcsoft/camera/wideselfie/ProcessResult;->progressBarThumbOffset:Landroid/graphics/Point;

    iget p0, p0, Landroid/graphics/Point;->x:I

    goto :goto_4

    :cond_6
    iget-object p0, v0, Lcom/arcsoft/camera/wideselfie/ProcessResult;->progressBarThumbOffset:Landroid/graphics/Point;

    iget p0, p0, Landroid/graphics/Point;->y:I

    neg-int p0, p0

    :goto_4
    iget-object v5, v0, Lcom/arcsoft/camera/wideselfie/ProcessResult;->progressBarThumbArray:[B

    iget v6, v0, Lcom/arcsoft/camera/wideselfie/ProcessResult;->progressBarThumbImageWidth:I

    iget v7, v0, Lcom/arcsoft/camera/wideselfie/ProcessResult;->progressBarThumbImageHeight:I

    iget-object v8, v0, Lcom/arcsoft/camera/wideselfie/ProcessResult;->progressBarThumbRect:Landroid/graphics/Rect;

    move-object v4, v3

    invoke-interface/range {v4 .. v9}, Lcom/android/camera/wideselfie/WideSelfieEngineWrapper$WideSelfStateCallback;->onPreviewUpdate([BIILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    iget v2, v0, Lcom/arcsoft/camera/wideselfie/ProcessResult;->progress:I

    const/16 v4, 0x64

    if-eq v2, v4, :cond_8

    const/16 v2, 0x7007

    if-ne v1, v2, :cond_7

    goto :goto_5

    :cond_7
    move v9, v10

    goto :goto_6

    :cond_8
    :goto_5
    const/4 v1, 0x1

    move v9, v1

    :goto_6
    iget v5, v0, Lcom/arcsoft/camera/wideselfie/ProcessResult;->direction:I

    iget v6, v0, Lcom/arcsoft/camera/wideselfie/ProcessResult;->progress:I

    new-instance v7, Landroid/graphics/Point;

    invoke-direct {v7, p1, p0}, Landroid/graphics/Point;-><init>(II)V

    iget-object v8, v0, Lcom/arcsoft/camera/wideselfie/ProcessResult;->progressBarThumbOffset:Landroid/graphics/Point;

    move-object v4, v3

    invoke-interface/range {v4 .. v9}, Lcom/android/camera/wideselfie/WideSelfieEngineWrapper$WideSelfStateCallback;->onMove(IILandroid/graphics/Point;Landroid/graphics/Point;Z)V

    goto :goto_7

    :cond_9
    const/4 v1, 0x2

    if-ne p1, v1, :cond_a

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onMessage AWS_COMMAND_STOP, callback "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", resultImageArray = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Lcom/arcsoft/camera/wideselfie/ProcessResult;->resultImageArray:[B

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/camera/wideselfie/WideSelfieEngineWrapper$2;->this$0:Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;

    const/4 v1, -0x1

    invoke-static {p1, v1}, Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;->access$502(Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;I)I

    if-eqz v3, :cond_a

    iget-object p1, v0, Lcom/arcsoft/camera/wideselfie/ProcessResult;->resultImageArray:[B

    if-eqz p1, :cond_a

    iget v1, v0, Lcom/arcsoft/camera/wideselfie/ProcessResult;->resultImageWidth:I

    iget v0, v0, Lcom/arcsoft/camera/wideselfie/ProcessResult;->resultImageHeight:I

    iget-object p0, p0, Lcom/android/camera/wideselfie/WideSelfieEngineWrapper$2;->this$0:Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;

    invoke-static {p0}, Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;->access$600(Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;)I

    move-result p0

    invoke-interface {v3, p1, v1, v0, p0}, Lcom/android/camera/wideselfie/WideSelfieEngineWrapper$WideSelfStateCallback;->onNv21Available([BIII)V

    :cond_a
    :goto_7
    return-void
.end method
