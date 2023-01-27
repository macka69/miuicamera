.class public Lcom/android/zxing/PreviewDecodeManager;
.super Ljava/lang/Object;
.source "PreviewDecodeManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/zxing/PreviewDecodeManager$Singleton;
    }
.end annotation


# static fields
.field public static final DECODE_TYPE_DOCUMENT:I = 0x3

.field public static final DECODE_TYPE_GOOGLE_LENS:I = 0x2

.field public static final DECODE_TYPE_HAND_GESTURE:I = 0x1

.field public static final DECODE_TYPE_QR:I


# instance fields
.field private mDecoders:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/zxing/Decoder;",
            ">;"
        }
    .end annotation
.end field

.field private mPreviewCallback:Lcom/android/camera2/Camera2Proxy$PreviewCallback;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/zxing/PreviewDecodeManager$1;

    invoke-direct {v0, p0}, Lcom/android/zxing/PreviewDecodeManager$1;-><init>(Lcom/android/zxing/PreviewDecodeManager;)V

    iput-object v0, p0, Lcom/android/zxing/PreviewDecodeManager;->mPreviewCallback:Lcom/android/camera2/Camera2Proxy$PreviewCallback;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/zxing/PreviewDecodeManager;->mDecoders:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/zxing/PreviewDecodeManager$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/zxing/PreviewDecodeManager;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/zxing/PreviewDecodeManager;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    iget-object p0, p0, Lcom/android/zxing/PreviewDecodeManager;->mDecoders:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method public static getInstance()Lcom/android/zxing/PreviewDecodeManager;
    .locals 1

    sget-object v0, Lcom/android/zxing/PreviewDecodeManager$Singleton;->INSTANCE:Lcom/android/zxing/PreviewDecodeManager;

    return-object v0
.end method


# virtual methods
.method public getDecoder(I)Lcom/android/zxing/Decoder;
    .locals 0

    iget-object p0, p0, Lcom/android/zxing/PreviewDecodeManager;->mDecoders:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/zxing/Decoder;

    return-object p0
.end method

.method public getPreviewCallback()Lcom/android/camera2/Camera2Proxy$PreviewCallback;
    .locals 0

    iget-object p0, p0, Lcom/android/zxing/PreviewDecodeManager;->mPreviewCallback:Lcom/android/camera2/Camera2Proxy$PreviewCallback;

    return-object p0
.end method

.method public getScanResult()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/zxing/PreviewDecodeManager;->mDecoders:Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/android/zxing/PreviewDecodeManager;->mDecoders:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/zxing/QrDecoder;

    invoke-virtual {p0}, Lcom/android/zxing/QrDecoder;->getScanResult()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public init(II)V
    .locals 2

    if-eqz p2, :cond_3

    const/4 v0, 0x1

    if-eq p2, v0, :cond_2

    const/4 v0, 0x2

    if-eq p2, v0, :cond_1

    const/4 v0, 0x3

    if-eq p2, v0, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object p2, p0, Lcom/android/zxing/PreviewDecodeManager;->mDecoders:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_4

    new-instance p2, Lcom/android/zxing/DocumentDecoder;

    invoke-direct {p2}, Lcom/android/zxing/DocumentDecoder;-><init>()V

    invoke-virtual {p2, p1}, Lcom/android/zxing/Decoder;->init(I)V

    iget-object p0, p0, Lcom/android/zxing/PreviewDecodeManager;->mDecoders:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/android/zxing/PreviewDecodeManager;->mDecoders:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_4

    new-instance p2, Lcom/android/zxing/GoogleLensDecoder;

    invoke-direct {p2}, Lcom/android/zxing/GoogleLensDecoder;-><init>()V

    invoke-virtual {p2, p1}, Lcom/android/zxing/Decoder;->init(I)V

    iget-object p0, p0, Lcom/android/zxing/PreviewDecodeManager;->mDecoders:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    iget-object p2, p0, Lcom/android/zxing/PreviewDecodeManager;->mDecoders:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_4

    new-instance p2, Lcom/android/zxing/HandGestureDecoder;

    invoke-direct {p2}, Lcom/android/zxing/HandGestureDecoder;-><init>()V

    invoke-virtual {p2, p1}, Lcom/android/zxing/Decoder;->init(I)V

    iget-object p0, p0, Lcom/android/zxing/PreviewDecodeManager;->mDecoders:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    iget-object p2, p0, Lcom/android/zxing/PreviewDecodeManager;->mDecoders:Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_4

    new-instance p2, Lcom/android/zxing/QrDecoder;

    invoke-direct {p2}, Lcom/android/zxing/QrDecoder;-><init>()V

    invoke-virtual {p2, p1}, Lcom/android/zxing/Decoder;->init(I)V

    iget-object p0, p0, Lcom/android/zxing/PreviewDecodeManager;->mDecoders:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    :goto_0
    return-void
.end method

.method public quit()V
    .locals 2

    iget-object v0, p0, Lcom/android/zxing/PreviewDecodeManager;->mDecoders:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/zxing/Decoder;

    invoke-virtual {v1}, Lcom/android/zxing/Decoder;->stopDecode()V

    invoke-virtual {v1}, Lcom/android/zxing/Decoder;->quit()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/zxing/PreviewDecodeManager;->mDecoders:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    return-void
.end method

.method public reset()V
    .locals 1

    iget-object p0, p0, Lcom/android/zxing/PreviewDecodeManager;->mDecoders:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/zxing/Decoder;

    invoke-virtual {v0}, Lcom/android/zxing/Decoder;->reset()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public resetScanResult()V
    .locals 1

    iget-object p0, p0, Lcom/android/zxing/PreviewDecodeManager;->mDecoders:Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/zxing/Decoder;

    if-eqz p0, :cond_0

    check-cast p0, Lcom/android/zxing/QrDecoder;

    invoke-virtual {p0}, Lcom/android/zxing/QrDecoder;->resetScanResult()V

    :cond_0
    return-void
.end method

.method public startDecode()V
    .locals 1

    iget-object p0, p0, Lcom/android/zxing/PreviewDecodeManager;->mDecoders:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/zxing/Decoder;

    invoke-virtual {v0}, Lcom/android/zxing/Decoder;->startDecode()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public stopDecode(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/zxing/PreviewDecodeManager;->mDecoders:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/zxing/Decoder;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/zxing/Decoder;->stopDecode()V

    :cond_0
    return-void
.end method
