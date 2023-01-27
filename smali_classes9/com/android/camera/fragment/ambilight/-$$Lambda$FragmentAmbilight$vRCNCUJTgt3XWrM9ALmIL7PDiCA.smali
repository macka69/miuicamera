.class public final synthetic Lcom/android/camera/fragment/ambilight/-$$Lambda$FragmentAmbilight$vRCNCUJTgt3XWrM9ALmIL7PDiCA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/camera/fragment/ambilight/FragmentAmbilight;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/fragment/ambilight/FragmentAmbilight;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/fragment/ambilight/-$$Lambda$FragmentAmbilight$vRCNCUJTgt3XWrM9ALmIL7PDiCA;->f$0:Lcom/android/camera/fragment/ambilight/FragmentAmbilight;

    iput p2, p0, Lcom/android/camera/fragment/ambilight/-$$Lambda$FragmentAmbilight$vRCNCUJTgt3XWrM9ALmIL7PDiCA;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/fragment/ambilight/-$$Lambda$FragmentAmbilight$vRCNCUJTgt3XWrM9ALmIL7PDiCA;->f$0:Lcom/android/camera/fragment/ambilight/FragmentAmbilight;

    iget p0, p0, Lcom/android/camera/fragment/ambilight/-$$Lambda$FragmentAmbilight$vRCNCUJTgt3XWrM9ALmIL7PDiCA;->f$1:I

    invoke-virtual {v0, p0}, Lcom/android/camera/fragment/ambilight/FragmentAmbilight;->lambda$hideAmbilightLayout$0$FragmentAmbilight(I)V

    return-void
.end method
