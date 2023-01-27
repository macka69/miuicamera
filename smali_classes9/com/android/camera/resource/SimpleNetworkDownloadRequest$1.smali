.class Lcom/android/camera/resource/SimpleNetworkDownloadRequest$1;
.super Ljava/lang/Object;
.source "SimpleNetworkDownloadRequest.java"

# interfaces
.implements Lio/reactivex/ObservableOnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/resource/SimpleNetworkDownloadRequest;->observableProgress(I)Lio/reactivex/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/ObservableOnSubscribe<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/resource/SimpleNetworkDownloadRequest;


# direct methods
.method constructor <init>(Lcom/android/camera/resource/SimpleNetworkDownloadRequest;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/resource/SimpleNetworkDownloadRequest$1;->this$0:Lcom/android/camera/resource/SimpleNetworkDownloadRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public subscribe(Lio/reactivex/ObservableEmitter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ObservableEmitter<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object p0, p0, Lcom/android/camera/resource/SimpleNetworkDownloadRequest$1;->this$0:Lcom/android/camera/resource/SimpleNetworkDownloadRequest;

    invoke-static {p0, p1}, Lcom/android/camera/resource/SimpleNetworkDownloadRequest;->access$002(Lcom/android/camera/resource/SimpleNetworkDownloadRequest;Lio/reactivex/ObservableEmitter;)Lio/reactivex/ObservableEmitter;

    return-void
.end method
