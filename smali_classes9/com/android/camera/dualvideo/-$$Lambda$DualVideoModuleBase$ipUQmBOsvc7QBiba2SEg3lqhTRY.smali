.class public final synthetic Lcom/android/camera/dualvideo/-$$Lambda$DualVideoModuleBase$ipUQmBOsvc7QBiba2SEg3lqhTRY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/CompletableOnSubscribe;


# instance fields
.field public final synthetic f$0:Lcom/android/camera/dualvideo/DualVideoModuleBase;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/dualvideo/DualVideoModuleBase;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/dualvideo/-$$Lambda$DualVideoModuleBase$ipUQmBOsvc7QBiba2SEg3lqhTRY;->f$0:Lcom/android/camera/dualvideo/DualVideoModuleBase;

    iput-object p2, p0, Lcom/android/camera/dualvideo/-$$Lambda$DualVideoModuleBase$ipUQmBOsvc7QBiba2SEg3lqhTRY;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final subscribe(Lio/reactivex/CompletableEmitter;)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/dualvideo/-$$Lambda$DualVideoModuleBase$ipUQmBOsvc7QBiba2SEg3lqhTRY;->f$0:Lcom/android/camera/dualvideo/DualVideoModuleBase;

    iget-object p0, p0, Lcom/android/camera/dualvideo/-$$Lambda$DualVideoModuleBase$ipUQmBOsvc7QBiba2SEg3lqhTRY;->f$1:Ljava/lang/String;

    invoke-virtual {v0, p0, p1}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->lambda$switchRemoteCamera$37$DualVideoModuleBase(Ljava/lang/String;Lio/reactivex/CompletableEmitter;)V

    return-void
.end method
