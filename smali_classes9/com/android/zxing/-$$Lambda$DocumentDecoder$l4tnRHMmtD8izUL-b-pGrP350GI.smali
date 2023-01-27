.class public final synthetic Lcom/android/zxing/-$$Lambda$DocumentDecoder$l4tnRHMmtD8izUL-b-pGrP350GI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Function;


# instance fields
.field public final synthetic f$0:Lcom/android/zxing/DocumentDecoder;


# direct methods
.method public synthetic constructor <init>(Lcom/android/zxing/DocumentDecoder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/zxing/-$$Lambda$DocumentDecoder$l4tnRHMmtD8izUL-b-pGrP350GI;->f$0:Lcom/android/zxing/DocumentDecoder;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/android/zxing/-$$Lambda$DocumentDecoder$l4tnRHMmtD8izUL-b-pGrP350GI;->f$0:Lcom/android/zxing/DocumentDecoder;

    check-cast p1, Lcom/android/zxing/PreviewImage;

    invoke-virtual {p0, p1}, Lcom/android/zxing/DocumentDecoder;->lambda$new$0$DocumentDecoder(Lcom/android/zxing/PreviewImage;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method
