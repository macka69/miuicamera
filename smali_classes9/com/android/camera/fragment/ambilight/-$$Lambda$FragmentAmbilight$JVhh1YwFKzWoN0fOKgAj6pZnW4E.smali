.class public final synthetic Lcom/android/camera/fragment/ambilight/-$$Lambda$FragmentAmbilight$JVhh1YwFKzWoN0fOKgAj6pZnW4E;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/camera/fragment/ambilight/FragmentAmbilight;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/fragment/ambilight/FragmentAmbilight;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/fragment/ambilight/-$$Lambda$FragmentAmbilight$JVhh1YwFKzWoN0fOKgAj6pZnW4E;->f$0:Lcom/android/camera/fragment/ambilight/FragmentAmbilight;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/ambilight/-$$Lambda$FragmentAmbilight$JVhh1YwFKzWoN0fOKgAj6pZnW4E;->f$0:Lcom/android/camera/fragment/ambilight/FragmentAmbilight;

    invoke-virtual {p0}, Lcom/android/camera/fragment/ambilight/FragmentAmbilight;->lambda$notifyAfterFrameAvailable$1$FragmentAmbilight()V

    return-void
.end method
