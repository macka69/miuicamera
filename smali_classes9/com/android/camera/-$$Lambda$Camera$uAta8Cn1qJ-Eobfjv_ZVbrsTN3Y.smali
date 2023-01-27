.class public final synthetic Lcom/android/camera/-$$Lambda$Camera$uAta8Cn1qJ-Eobfjv_ZVbrsTN3Y;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Function;


# instance fields
.field public final synthetic f$0:Lcom/android/camera/Camera;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/Camera;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/-$$Lambda$Camera$uAta8Cn1qJ-Eobfjv_ZVbrsTN3Y;->f$0:Lcom/android/camera/Camera;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/-$$Lambda$Camera$uAta8Cn1qJ-Eobfjv_ZVbrsTN3Y;->f$0:Lcom/android/camera/Camera;

    check-cast p1, Lcom/android/camera/module/loader/NullHolder;

    invoke-virtual {p0, p1}, Lcom/android/camera/Camera;->lambda$resumeCurrentMode$3$Camera(Lcom/android/camera/module/loader/NullHolder;)Lcom/android/camera/module/loader/NullHolder;

    move-result-object p0

    return-object p0
.end method
