.class public final synthetic Lcom/android/camera/scene/-$$Lambda$ASDResultParse$VpQwa40xFqeDZR-QZSHWJVBRwBs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/camera/scene/ASDResultParse;

.field public final synthetic f$1:I

.field public final synthetic f$2:I

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/scene/ASDResultParse;III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/scene/-$$Lambda$ASDResultParse$VpQwa40xFqeDZR-QZSHWJVBRwBs;->f$0:Lcom/android/camera/scene/ASDResultParse;

    iput p2, p0, Lcom/android/camera/scene/-$$Lambda$ASDResultParse$VpQwa40xFqeDZR-QZSHWJVBRwBs;->f$1:I

    iput p3, p0, Lcom/android/camera/scene/-$$Lambda$ASDResultParse$VpQwa40xFqeDZR-QZSHWJVBRwBs;->f$2:I

    iput p4, p0, Lcom/android/camera/scene/-$$Lambda$ASDResultParse$VpQwa40xFqeDZR-QZSHWJVBRwBs;->f$3:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/scene/-$$Lambda$ASDResultParse$VpQwa40xFqeDZR-QZSHWJVBRwBs;->f$0:Lcom/android/camera/scene/ASDResultParse;

    iget v1, p0, Lcom/android/camera/scene/-$$Lambda$ASDResultParse$VpQwa40xFqeDZR-QZSHWJVBRwBs;->f$1:I

    iget v2, p0, Lcom/android/camera/scene/-$$Lambda$ASDResultParse$VpQwa40xFqeDZR-QZSHWJVBRwBs;->f$2:I

    iget p0, p0, Lcom/android/camera/scene/-$$Lambda$ASDResultParse$VpQwa40xFqeDZR-QZSHWJVBRwBs;->f$3:I

    invoke-virtual {v0, v1, v2, p0}, Lcom/android/camera/scene/ASDResultParse;->lambda$showTip$0$ASDResultParse(III)V

    return-void
.end method
