.class public final synthetic Lcom/android/camera/features/mimojis/mimojias/impl/-$$Lambda$MimojiAsControlImpl$3$hGvU_JkcZ6iv3jdiirw2yIQPYKE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl$3;

.field public final synthetic f$1:Ljava/nio/ByteBuffer;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl$3;Ljava/nio/ByteBuffer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/features/mimojis/mimojias/impl/-$$Lambda$MimojiAsControlImpl$3$hGvU_JkcZ6iv3jdiirw2yIQPYKE;->f$0:Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl$3;

    iput-object p2, p0, Lcom/android/camera/features/mimojis/mimojias/impl/-$$Lambda$MimojiAsControlImpl$3$hGvU_JkcZ6iv3jdiirw2yIQPYKE;->f$1:Ljava/nio/ByteBuffer;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/impl/-$$Lambda$MimojiAsControlImpl$3$hGvU_JkcZ6iv3jdiirw2yIQPYKE;->f$0:Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl$3;

    iget-object p0, p0, Lcom/android/camera/features/mimojis/mimojias/impl/-$$Lambda$MimojiAsControlImpl$3$hGvU_JkcZ6iv3jdiirw2yIQPYKE;->f$1:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p0}, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl$3;->lambda$onCaptureResult$2$MimojiAsControlImpl$3(Ljava/nio/ByteBuffer;)V

    return-void
.end method
