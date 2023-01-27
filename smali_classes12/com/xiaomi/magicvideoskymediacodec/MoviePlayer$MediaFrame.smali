.class public Lcom/xiaomi/magicvideoskymediacodec/MoviePlayer$MediaFrame;
.super Ljava/lang/Object;
.source "MoviePlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/magicvideoskymediacodec/MoviePlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MediaFrame"
.end annotation


# instance fields
.field public buffer:Ljava/nio/ByteBuffer;

.field public info:Landroid/media/MediaCodec$BufferInfo;

.field final synthetic this$0:Lcom/xiaomi/magicvideoskymediacodec/MoviePlayer;


# direct methods
.method public constructor <init>(Lcom/xiaomi/magicvideoskymediacodec/MoviePlayer;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/magicvideoskymediacodec/MoviePlayer$MediaFrame;->this$0:Lcom/xiaomi/magicvideoskymediacodec/MoviePlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
