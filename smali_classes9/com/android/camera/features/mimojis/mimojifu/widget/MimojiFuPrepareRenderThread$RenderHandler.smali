.class public Lcom/android/camera/features/mimojis/mimojifu/widget/MimojiFuPrepareRenderThread$RenderHandler;
.super Landroid/os/Handler;
.source "MimojiFuPrepareRenderThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/features/mimojis/mimojifu/widget/MimojiFuPrepareRenderThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RenderHandler"
.end annotation


# instance fields
.field private final mRenderThread:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/camera/features/mimojis/mimojifu/widget/MimojiFuPrepareRenderThread;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/android/camera/features/mimojis/mimojifu/widget/MimojiFuPrepareRenderThread;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/widget/MimojiFuPrepareRenderThread$RenderHandler;->mRenderThread:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/features/mimojis/mimojifu/widget/MimojiFuPrepareRenderThread;Lcom/android/camera/features/mimojis/mimojifu/widget/MimojiFuPrepareRenderThread$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/features/mimojis/mimojifu/widget/MimojiFuPrepareRenderThread$RenderHandler;-><init>(Lcom/android/camera/features/mimojis/mimojifu/widget/MimojiFuPrepareRenderThread;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    iget-object p0, p0, Lcom/android/camera/features/mimojis/mimojifu/widget/MimojiFuPrepareRenderThread$RenderHandler;->mRenderThread:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/features/mimojis/mimojifu/widget/MimojiFuPrepareRenderThread;

    if-nez p0, :cond_0

    return-void

    :cond_0
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x10

    if-eq p1, v0, :cond_3

    const/16 v0, 0x20

    if-eq p1, v0, :cond_2

    const/16 v0, 0x40

    if-eq p1, v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {p0}, Lcom/android/camera/features/mimojis/mimojifu/widget/MimojiFuPrepareRenderThread;->access$300(Lcom/android/camera/features/mimojis/mimojifu/widget/MimojiFuPrepareRenderThread;)V

    goto :goto_0

    :cond_2
    invoke-static {p0}, Lcom/android/camera/features/mimojis/mimojifu/widget/MimojiFuPrepareRenderThread;->access$200(Lcom/android/camera/features/mimojis/mimojifu/widget/MimojiFuPrepareRenderThread;)Z

    goto :goto_0

    :cond_3
    invoke-static {p0}, Lcom/android/camera/features/mimojis/mimojifu/widget/MimojiFuPrepareRenderThread;->access$100(Lcom/android/camera/features/mimojis/mimojifu/widget/MimojiFuPrepareRenderThread;)V

    :goto_0
    return-void
.end method
