.class public final synthetic Lcom/android/camera/resource/-$$Lambda$BaseObservableRequest$nXHlDx_NYpndAXDIzSPWpuJFkAU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/ObservableOnSubscribe;


# instance fields
.field public final synthetic f$0:Lcom/android/camera/resource/BaseObservableRequest;

.field public final synthetic f$1:Ljava/lang/Class;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/resource/BaseObservableRequest;Ljava/lang/Class;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/resource/-$$Lambda$BaseObservableRequest$nXHlDx_NYpndAXDIzSPWpuJFkAU;->f$0:Lcom/android/camera/resource/BaseObservableRequest;

    iput-object p2, p0, Lcom/android/camera/resource/-$$Lambda$BaseObservableRequest$nXHlDx_NYpndAXDIzSPWpuJFkAU;->f$1:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public final subscribe(Lio/reactivex/ObservableEmitter;)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/resource/-$$Lambda$BaseObservableRequest$nXHlDx_NYpndAXDIzSPWpuJFkAU;->f$0:Lcom/android/camera/resource/BaseObservableRequest;

    iget-object p0, p0, Lcom/android/camera/resource/-$$Lambda$BaseObservableRequest$nXHlDx_NYpndAXDIzSPWpuJFkAU;->f$1:Ljava/lang/Class;

    invoke-virtual {v0, p0, p1}, Lcom/android/camera/resource/BaseObservableRequest;->lambda$startObservable$0$BaseObservableRequest(Ljava/lang/Class;Lio/reactivex/ObservableEmitter;)V

    return-void
.end method
