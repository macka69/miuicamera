.class public final synthetic Lcom/android/camera/features/mimojis/mimojifu/impl/-$$Lambda$MimojiFuControlImpl$HSLaaxm_I5e7aNRG64qDqLwwlpg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;

.field public final synthetic f$1:Landroid/graphics/Rect;

.field public final synthetic f$2:[B


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;Landroid/graphics/Rect;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/-$$Lambda$MimojiFuControlImpl$HSLaaxm_I5e7aNRG64qDqLwwlpg;->f$0:Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;

    iput-object p2, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/-$$Lambda$MimojiFuControlImpl$HSLaaxm_I5e7aNRG64qDqLwwlpg;->f$1:Landroid/graphics/Rect;

    iput-object p3, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/-$$Lambda$MimojiFuControlImpl$HSLaaxm_I5e7aNRG64qDqLwwlpg;->f$2:[B

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/-$$Lambda$MimojiFuControlImpl$HSLaaxm_I5e7aNRG64qDqLwwlpg;->f$0:Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;

    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/-$$Lambda$MimojiFuControlImpl$HSLaaxm_I5e7aNRG64qDqLwwlpg;->f$1:Landroid/graphics/Rect;

    iget-object p0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/-$$Lambda$MimojiFuControlImpl$HSLaaxm_I5e7aNRG64qDqLwwlpg;->f$2:[B

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->lambda$onDrawFrame$4$MimojiFuControlImpl(Landroid/graphics/Rect;[B)V

    return-void
.end method
