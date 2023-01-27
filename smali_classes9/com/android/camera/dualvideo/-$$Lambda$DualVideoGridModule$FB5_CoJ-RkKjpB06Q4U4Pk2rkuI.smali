.class public final synthetic Lcom/android/camera/dualvideo/-$$Lambda$DualVideoGridModule$FB5_CoJ-RkKjpB06Q4U4Pk2rkuI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/camera/dualvideo/DualVideoGridModule;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/dualvideo/DualVideoGridModule;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/dualvideo/-$$Lambda$DualVideoGridModule$FB5_CoJ-RkKjpB06Q4U4Pk2rkuI;->f$0:Lcom/android/camera/dualvideo/DualVideoGridModule;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/dualvideo/-$$Lambda$DualVideoGridModule$FB5_CoJ-RkKjpB06Q4U4Pk2rkuI;->f$0:Lcom/android/camera/dualvideo/DualVideoGridModule;

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lcom/android/camera/dualvideo/DualVideoGridModule;->lambda$releaseRemote$2$DualVideoGridModule(Ljava/lang/Long;)V

    return-void
.end method
