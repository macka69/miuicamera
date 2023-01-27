.class public final synthetic Lcom/android/camera/module/-$$Lambda$VideoModule$pk8fyAT6bhC_TOY6LNfkrxdBXVQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/camera/module/VideoModule;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/module/VideoModule;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/module/-$$Lambda$VideoModule$pk8fyAT6bhC_TOY6LNfkrxdBXVQ;->f$0:Lcom/android/camera/module/VideoModule;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/module/-$$Lambda$VideoModule$pk8fyAT6bhC_TOY6LNfkrxdBXVQ;->f$0:Lcom/android/camera/module/VideoModule;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/android/camera/module/VideoModule;->lambda$onStartRecorderExposureFilmMode$9$VideoModule(Ljava/lang/Integer;)V

    return-void
.end method
