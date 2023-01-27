.class public final synthetic Lcom/android/zxing/-$$Lambda$DocumentDecoder$XvFwaRA32xKo7T1FGymykVdQU3w;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/zxing/DocumentDecoder;


# direct methods
.method public synthetic constructor <init>(Lcom/android/zxing/DocumentDecoder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/zxing/-$$Lambda$DocumentDecoder$XvFwaRA32xKo7T1FGymykVdQU3w;->f$0:Lcom/android/zxing/DocumentDecoder;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/android/zxing/-$$Lambda$DocumentDecoder$XvFwaRA32xKo7T1FGymykVdQU3w;->f$0:Lcom/android/zxing/DocumentDecoder;

    check-cast p1, Landroid/util/Pair;

    invoke-virtual {p0, p1}, Lcom/android/zxing/DocumentDecoder;->lambda$new$1$DocumentDecoder(Landroid/util/Pair;)V

    return-void
.end method
