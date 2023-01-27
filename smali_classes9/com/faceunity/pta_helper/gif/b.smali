.class final Lcom/faceunity/pta_helper/gif/b;
.super Ljava/lang/Object;
.source "GifHardEncoderWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/faceunity/pta_helper/gif/GifHardEncoderWrapper;


# direct methods
.method constructor <init>(Lcom/faceunity/pta_helper/gif/GifHardEncoderWrapper;)V
    .locals 0

    iput-object p1, p0, Lcom/faceunity/pta_helper/gif/b;->a:Lcom/faceunity/pta_helper/gif/GifHardEncoderWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2
    .annotation build Lcom/faceunity/pta_helper/NotProguard;
    .end annotation

    iget-object v0, p0, Lcom/faceunity/pta_helper/gif/b;->a:Lcom/faceunity/pta_helper/gif/GifHardEncoderWrapper;

    invoke-static {v0}, Lcom/faceunity/pta_helper/gif/GifHardEncoderWrapper;->a(Lcom/faceunity/pta_helper/gif/GifHardEncoderWrapper;)Lcom/faceunity/pta_helper/gif/GifHardEncoder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/faceunity/pta_helper/gif/GifHardEncoder;->close()V

    iget-object v0, p0, Lcom/faceunity/pta_helper/gif/b;->a:Lcom/faceunity/pta_helper/gif/GifHardEncoderWrapper;

    invoke-static {v0}, Lcom/faceunity/pta_helper/gif/GifHardEncoderWrapper;->b(Lcom/faceunity/pta_helper/gif/GifHardEncoderWrapper;)Lcom/faceunity/pta_helper/gif/GifHardEncoder;

    iget-object v0, p0, Lcom/faceunity/pta_helper/gif/b;->a:Lcom/faceunity/pta_helper/gif/GifHardEncoderWrapper;

    invoke-static {v0}, Lcom/faceunity/pta_helper/gif/GifHardEncoderWrapper;->c(Lcom/faceunity/pta_helper/gif/GifHardEncoderWrapper;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/faceunity/pta_helper/gif/b;->a:Lcom/faceunity/pta_helper/gif/GifHardEncoderWrapper;

    invoke-static {v0}, Lcom/faceunity/pta_helper/gif/GifHardEncoderWrapper;->d(Lcom/faceunity/pta_helper/gif/GifHardEncoderWrapper;)Landroid/os/HandlerThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    invoke-static {}, Lcom/faceunity/pta_helper/gif/GifHardEncoderWrapper;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "gif record end"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/faceunity/pta_helper/gif/b;->a:Lcom/faceunity/pta_helper/gif/GifHardEncoderWrapper;

    invoke-static {v0}, Lcom/faceunity/pta_helper/gif/GifHardEncoderWrapper;->e(Lcom/faceunity/pta_helper/gif/GifHardEncoderWrapper;)Lcom/faceunity/pta_helper/gif/GifHardEncoderWrapper$OnRecordListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/faceunity/pta_helper/gif/b;->a:Lcom/faceunity/pta_helper/gif/GifHardEncoderWrapper;

    invoke-static {p0}, Lcom/faceunity/pta_helper/gif/GifHardEncoderWrapper;->e(Lcom/faceunity/pta_helper/gif/GifHardEncoderWrapper;)Lcom/faceunity/pta_helper/gif/GifHardEncoderWrapper$OnRecordListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/faceunity/pta_helper/gif/GifHardEncoderWrapper$OnRecordListener;->OnRecordEnd()V

    :cond_0
    return-void
.end method
