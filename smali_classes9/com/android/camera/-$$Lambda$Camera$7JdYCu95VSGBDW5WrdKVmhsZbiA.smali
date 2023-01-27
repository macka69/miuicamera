.class public final synthetic Lcom/android/camera/-$$Lambda$Camera$7JdYCu95VSGBDW5WrdKVmhsZbiA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/camera/Camera;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/Camera;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/-$$Lambda$Camera$7JdYCu95VSGBDW5WrdKVmhsZbiA;->f$0:Lcom/android/camera/Camera;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/-$$Lambda$Camera$7JdYCu95VSGBDW5WrdKVmhsZbiA;->f$0:Lcom/android/camera/Camera;

    invoke-virtual {p0}, Lcom/android/camera/Camera;->lambda$hideLensDirtyDetectedHint$6$Camera()V

    return-void
.end method
