.class public final synthetic Lcom/android/camera/data/observeable/-$$Lambda$VMResource$CK09fxdKxjt20EEhri7BVJUdp60;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/camera/data/observeable/VMResource;

.field public final synthetic f$1:Lio/reactivex/ObservableEmitter;

.field public final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/data/observeable/VMResource;Lio/reactivex/ObservableEmitter;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/data/observeable/-$$Lambda$VMResource$CK09fxdKxjt20EEhri7BVJUdp60;->f$0:Lcom/android/camera/data/observeable/VMResource;

    iput-object p2, p0, Lcom/android/camera/data/observeable/-$$Lambda$VMResource$CK09fxdKxjt20EEhri7BVJUdp60;->f$1:Lio/reactivex/ObservableEmitter;

    iput-object p3, p0, Lcom/android/camera/data/observeable/-$$Lambda$VMResource$CK09fxdKxjt20EEhri7BVJUdp60;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/data/observeable/-$$Lambda$VMResource$CK09fxdKxjt20EEhri7BVJUdp60;->f$0:Lcom/android/camera/data/observeable/VMResource;

    iget-object v1, p0, Lcom/android/camera/data/observeable/-$$Lambda$VMResource$CK09fxdKxjt20EEhri7BVJUdp60;->f$1:Lio/reactivex/ObservableEmitter;

    iget-object p0, p0, Lcom/android/camera/data/observeable/-$$Lambda$VMResource$CK09fxdKxjt20EEhri7BVJUdp60;->f$2:Ljava/lang/String;

    check-cast p1, Lcom/android/camera/resource/BaseResourceItem;

    invoke-virtual {v0, v1, p0, p1}, Lcom/android/camera/data/observeable/VMResource;->lambda$startAndGetDownloadDisposable$2$VMResource(Lio/reactivex/ObservableEmitter;Ljava/lang/String;Lcom/android/camera/resource/BaseResourceItem;)V

    return-void
.end method
