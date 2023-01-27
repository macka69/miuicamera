.class public final synthetic Lcom/android/camera/module/-$$Lambda$Camera2Module$CountObserver$2FuMP3sD5z2M3IlbgK8WSL5dSjc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/camera/module/Camera2Module;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/module/Camera2Module;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/module/-$$Lambda$Camera2Module$CountObserver$2FuMP3sD5z2M3IlbgK8WSL5dSjc;->f$0:Lcom/android/camera/module/Camera2Module;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/module/-$$Lambda$Camera2Module$CountObserver$2FuMP3sD5z2M3IlbgK8WSL5dSjc;->f$0:Lcom/android/camera/module/Camera2Module;

    invoke-static {p0}, Lcom/android/camera/module/Camera2Module$CountObserver;->lambda$onSubscribe$0(Lcom/android/camera/module/Camera2Module;)V

    return-void
.end method
