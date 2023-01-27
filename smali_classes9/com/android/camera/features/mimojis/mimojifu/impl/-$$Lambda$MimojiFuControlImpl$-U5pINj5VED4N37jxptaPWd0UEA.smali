.class public final synthetic Lcom/android/camera/features/mimojis/mimojifu/impl/-$$Lambda$MimojiFuControlImpl$-U5pINj5VED4N37jxptaPWd0UEA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;

.field public final synthetic f$1:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/-$$Lambda$MimojiFuControlImpl$-U5pINj5VED4N37jxptaPWd0UEA;->f$0:Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;

    iput-object p2, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/-$$Lambda$MimojiFuControlImpl$-U5pINj5VED4N37jxptaPWd0UEA;->f$1:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/-$$Lambda$MimojiFuControlImpl$-U5pINj5VED4N37jxptaPWd0UEA;->f$0:Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;

    iget-object p0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/-$$Lambda$MimojiFuControlImpl$-U5pINj5VED4N37jxptaPWd0UEA;->f$1:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0, p0}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->lambda$release$3$MimojiFuControlImpl(Ljava/util/concurrent/CountDownLatch;)V

    return-void
.end method
