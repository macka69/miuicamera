.class Lcom/android/zxing/CacheImageDecoder$5;
.super Ljava/lang/Object;
.source "CacheImageDecoder.java"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/zxing/CacheImageDecoder;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Function<",
        "Lcom/android/zxing/CacheImageDecoder$FrameInfo;",
        "Lcom/android/zxing/CacheImageDecoder$FrameInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/zxing/CacheImageDecoder;


# direct methods
.method constructor <init>(Lcom/android/zxing/CacheImageDecoder;)V
    .locals 0

    iput-object p1, p0, Lcom/android/zxing/CacheImageDecoder$5;->this$0:Lcom/android/zxing/CacheImageDecoder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lcom/android/zxing/CacheImageDecoder$FrameInfo;)Lcom/android/zxing/CacheImageDecoder$FrameInfo;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object p0, p0, Lcom/android/zxing/CacheImageDecoder$5;->this$0:Lcom/android/zxing/CacheImageDecoder;

    iget-wide v0, p1, Lcom/android/zxing/CacheImageDecoder$FrameInfo;->mTimestamp:J

    invoke-static {p0, v0, v1}, Lcom/android/zxing/CacheImageDecoder;->access$200(Lcom/android/zxing/CacheImageDecoder;J)Lcom/android/zxing/CacheImageDecoder$ImageWrapper;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/zxing/CacheImageDecoder$FrameInfo;->setImage(Lcom/android/zxing/CacheImageDecoder$ImageWrapper;)V

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    check-cast p1, Lcom/android/zxing/CacheImageDecoder$FrameInfo;

    invoke-virtual {p0, p1}, Lcom/android/zxing/CacheImageDecoder$5;->apply(Lcom/android/zxing/CacheImageDecoder$FrameInfo;)Lcom/android/zxing/CacheImageDecoder$FrameInfo;

    move-result-object p0

    return-object p0
.end method
