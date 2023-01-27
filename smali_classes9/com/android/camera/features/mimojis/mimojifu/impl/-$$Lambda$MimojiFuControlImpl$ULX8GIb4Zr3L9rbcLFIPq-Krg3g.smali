.class public final synthetic Lcom/android/camera/features/mimojis/mimojifu/impl/-$$Lambda$MimojiFuControlImpl$ULX8GIb4Zr3L9rbcLFIPq-Krg3g;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/-$$Lambda$MimojiFuControlImpl$ULX8GIb4Zr3L9rbcLFIPq-Krg3g;->f$0:Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;

    iput p2, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/-$$Lambda$MimojiFuControlImpl$ULX8GIb4Zr3L9rbcLFIPq-Krg3g;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/-$$Lambda$MimojiFuControlImpl$ULX8GIb4Zr3L9rbcLFIPq-Krg3g;->f$0:Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;

    iget p0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/-$$Lambda$MimojiFuControlImpl$ULX8GIb4Zr3L9rbcLFIPq-Krg3g;->f$1:I

    invoke-virtual {v0, p0}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->lambda$initAvatarEngine$0$MimojiFuControlImpl(I)V

    return-void
.end method
