.class public final synthetic Lcom/android/camera/features/mimojis/mimojias/impl/-$$Lambda$MimojiAsControlImpl$SB4dwkwDYfjQfXe5nX86sqt0we8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;

.field public final synthetic f$1:Ljava/nio/ByteBuffer;

.field public final synthetic f$2:I

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;Ljava/nio/ByteBuffer;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/features/mimojis/mimojias/impl/-$$Lambda$MimojiAsControlImpl$SB4dwkwDYfjQfXe5nX86sqt0we8;->f$0:Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;

    iput-object p2, p0, Lcom/android/camera/features/mimojis/mimojias/impl/-$$Lambda$MimojiAsControlImpl$SB4dwkwDYfjQfXe5nX86sqt0we8;->f$1:Ljava/nio/ByteBuffer;

    iput p3, p0, Lcom/android/camera/features/mimojis/mimojias/impl/-$$Lambda$MimojiAsControlImpl$SB4dwkwDYfjQfXe5nX86sqt0we8;->f$2:I

    iput p4, p0, Lcom/android/camera/features/mimojis/mimojias/impl/-$$Lambda$MimojiAsControlImpl$SB4dwkwDYfjQfXe5nX86sqt0we8;->f$3:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/impl/-$$Lambda$MimojiAsControlImpl$SB4dwkwDYfjQfXe5nX86sqt0we8;->f$0:Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;

    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojias/impl/-$$Lambda$MimojiAsControlImpl$SB4dwkwDYfjQfXe5nX86sqt0we8;->f$1:Ljava/nio/ByteBuffer;

    iget v2, p0, Lcom/android/camera/features/mimojis/mimojias/impl/-$$Lambda$MimojiAsControlImpl$SB4dwkwDYfjQfXe5nX86sqt0we8;->f$2:I

    iget p0, p0, Lcom/android/camera/features/mimojis/mimojias/impl/-$$Lambda$MimojiAsControlImpl$SB4dwkwDYfjQfXe5nX86sqt0we8;->f$3:I

    invoke-virtual {v0, v1, v2, p0}, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->lambda$onDrawFrame$10$MimojiAsControlImpl(Ljava/nio/ByteBuffer;II)V

    return-void
.end method
