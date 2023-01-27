.class final Lcom/faceunity/pta_helper/gif/GifHardEncoderWrapper$a;
.super Landroid/os/Handler;
.source "GifHardEncoderWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/faceunity/pta_helper/gif/GifHardEncoderWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/faceunity/pta_helper/gif/GifHardEncoderWrapper;


# direct methods
.method public constructor <init>(Lcom/faceunity/pta_helper/gif/GifHardEncoderWrapper;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/faceunity/pta_helper/gif/GifHardEncoderWrapper$a;->a:Lcom/faceunity/pta_helper/gif/GifHardEncoderWrapper;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 8
    .annotation build Lcom/faceunity/pta_helper/NotProguard;
    .end annotation

    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/faceunity/pta_helper/gif/GifHardEncoderWrapper$a;->a:Lcom/faceunity/pta_helper/gif/GifHardEncoderWrapper;

    invoke-static {v0}, Lcom/faceunity/pta_helper/gif/GifHardEncoderWrapper;->a(Lcom/faceunity/pta_helper/gif/GifHardEncoderWrapper;)Lcom/faceunity/pta_helper/gif/GifHardEncoder;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "data_key_img"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iget-object p1, p0, Lcom/faceunity/pta_helper/gif/GifHardEncoderWrapper$a;->a:Lcom/faceunity/pta_helper/gif/GifHardEncoderWrapper;

    invoke-static {p1}, Lcom/faceunity/pta_helper/gif/GifHardEncoderWrapper;->a(Lcom/faceunity/pta_helper/gif/GifHardEncoderWrapper;)Lcom/faceunity/pta_helper/gif/GifHardEncoder;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/faceunity/pta_helper/gif/GifHardEncoderWrapper$a;->a:Lcom/faceunity/pta_helper/gif/GifHardEncoderWrapper;

    invoke-static {p1}, Lcom/faceunity/pta_helper/gif/GifHardEncoderWrapper;->f(Lcom/faceunity/pta_helper/gif/GifHardEncoderWrapper;)D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpl-double p1, v2, v4

    const-wide/16 v2, 0x0

    const-wide/32 v4, 0xf4240

    if-lez p1, :cond_2

    iget-object p1, p0, Lcom/faceunity/pta_helper/gif/GifHardEncoderWrapper$a;->a:Lcom/faceunity/pta_helper/gif/GifHardEncoderWrapper;

    invoke-static {p1}, Lcom/faceunity/pta_helper/gif/GifHardEncoderWrapper;->g(Lcom/faceunity/pta_helper/gif/GifHardEncoderWrapper;)J

    move-result-wide v6

    cmp-long p1, v6, v2

    if-nez p1, :cond_1

    iget-object p0, p0, Lcom/faceunity/pta_helper/gif/GifHardEncoderWrapper$a;->a:Lcom/faceunity/pta_helper/gif/GifHardEncoderWrapper;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    div-long/2addr v0, v4

    invoke-static {p0, v0, v1}, Lcom/faceunity/pta_helper/gif/GifHardEncoderWrapper;->a(Lcom/faceunity/pta_helper/gif/GifHardEncoderWrapper;J)J

    return-void

    :cond_1
    iget-object p1, p0, Lcom/faceunity/pta_helper/gif/GifHardEncoderWrapper$a;->a:Lcom/faceunity/pta_helper/gif/GifHardEncoderWrapper;

    invoke-static {p1}, Lcom/faceunity/pta_helper/gif/GifHardEncoderWrapper;->a(Lcom/faceunity/pta_helper/gif/GifHardEncoderWrapper;)Lcom/faceunity/pta_helper/gif/GifHardEncoder;

    move-result-object p1

    const-wide v2, 0x408f400000000000L    # 1000.0

    iget-object p0, p0, Lcom/faceunity/pta_helper/gif/GifHardEncoderWrapper$a;->a:Lcom/faceunity/pta_helper/gif/GifHardEncoderWrapper;

    invoke-static {p0}, Lcom/faceunity/pta_helper/gif/GifHardEncoderWrapper;->f(Lcom/faceunity/pta_helper/gif/GifHardEncoderWrapper;)D

    move-result-wide v4

    div-double/2addr v2, v4

    double-to-int p0, v2

    invoke-virtual {p1, v0, v1, p0}, Lcom/faceunity/pta_helper/gif/GifHardEncoder;->encodeFrame(JI)Z

    return-void

    :cond_2
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    div-long/2addr v6, v4

    iget-object p1, p0, Lcom/faceunity/pta_helper/gif/GifHardEncoderWrapper$a;->a:Lcom/faceunity/pta_helper/gif/GifHardEncoderWrapper;

    invoke-static {p1}, Lcom/faceunity/pta_helper/gif/GifHardEncoderWrapper;->g(Lcom/faceunity/pta_helper/gif/GifHardEncoderWrapper;)J

    move-result-wide v4

    cmp-long p1, v4, v2

    if-lez p1, :cond_3

    iget-object p1, p0, Lcom/faceunity/pta_helper/gif/GifHardEncoderWrapper$a;->a:Lcom/faceunity/pta_helper/gif/GifHardEncoderWrapper;

    invoke-static {p1}, Lcom/faceunity/pta_helper/gif/GifHardEncoderWrapper;->a(Lcom/faceunity/pta_helper/gif/GifHardEncoderWrapper;)Lcom/faceunity/pta_helper/gif/GifHardEncoder;

    move-result-object p1

    iget-object v2, p0, Lcom/faceunity/pta_helper/gif/GifHardEncoderWrapper$a;->a:Lcom/faceunity/pta_helper/gif/GifHardEncoderWrapper;

    invoke-static {v2}, Lcom/faceunity/pta_helper/gif/GifHardEncoderWrapper;->g(Lcom/faceunity/pta_helper/gif/GifHardEncoderWrapper;)J

    move-result-wide v2

    sub-long v2, v6, v2

    long-to-int v2, v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/faceunity/pta_helper/gif/GifHardEncoder;->encodeFrame(JI)Z

    :cond_3
    iget-object p0, p0, Lcom/faceunity/pta_helper/gif/GifHardEncoderWrapper$a;->a:Lcom/faceunity/pta_helper/gif/GifHardEncoderWrapper;

    invoke-static {p0, v6, v7}, Lcom/faceunity/pta_helper/gif/GifHardEncoderWrapper;->a(Lcom/faceunity/pta_helper/gif/GifHardEncoderWrapper;J)J

    :cond_4
    return-void
.end method
